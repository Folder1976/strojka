<?php
class ControllerCalculatorCalculator extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

        $data['calculator'] = $this->calculator_json();
        
		if(isset($this->request->get['calculator_json'])){
			return $data['calculator'];
		}
        
		$this->response->setOutput($this->load->view('calculator/calculator', $data));
	}
	
	public function calculator_json() {
		
		$data = array();
		
		return  $this->load->view('calculator/calculator_json', $data);
		
	}
	
	public function step() {
		
			$sql = 'SELECT * FROM '.DB_PREFIX.'calculator WHERE group_id=5';
			$r = $this->db->query($sql);
		foreach($r->rows as $row){
			$sql = 'INSERT INTO oc_calculator SET
					group_id = 6,
					sub_group_id="'.$row['sub_group_id'].'",
			`key`="'.$row['key'].'",
			name="'.$row['name'].'",
			price="'.$row['price'].'",
			mera="'.$row['mera'].'",
			koef="'.$row['koef'].'",
			plus="'.$row['plus'].'",
			sort="'.$row['sort'].'",
			operation="'.$row['operation'].'"
		
			';
			//$this->db->query($sql);
		}
		
		$json = array();
		$data = array();
		$json['post'] = array();
		
		$In = array('all');
		$main_value = 0;
		
		foreach($this->request->post as $index => $value){
			$json['post'][$index] = $value;
			$In[] = $index;
		}
		
		$group_id = 0;
		if(isset($this->request->post['c1-type-roof']) AND $this->request->post['c1-type-roof'] == 1) {
			$group_id = 1;
			$main_value = ceil((float)$this->request->post['c1-area']);
		}elseif(isset($this->request->post['c1-type-roof']) AND $this->request->post['c1-type-roof'] == 2) {
			$group_id = 2;
			$main_value = ceil((float)$this->request->post['c1-area']);
		}elseif(isset($this->request->post['c2-type-roof']) AND $this->request->post['c2-type-roof'] == 1) {
			$group_id = 3;
			$main_value = ceil((float)$this->request->post['с2-length-eaves']);
		}elseif(isset($this->request->post['c2-type-roof']) AND $this->request->post['c2-type-roof'] == 2) {
			$group_id = 4;
			$main_value = ceil((float)$this->request->post['с2-length-eaves']);
		}elseif(isset($this->request->post['c3-type-roof']) AND $this->request->post['c3-type-roof'] == 1) {
			$group_id = 5;
			$main_value = ceil((float)$this->request->post['с3-length-roof']);
		}elseif(isset($this->request->post['c3-type-roof']) AND $this->request->post['c3-type-roof'] == 2) {
			$group_id = 6;
			$main_value = ceil((float)$this->request->post['с3-length-roof']);
		}
		
		if(isset($this->request->get['step'])){
			
			$json['step'] = $this->request->get['step'];
			
			$sql = 'SELECT *,c.name AS name, cg.name AS group_name, csg.name AS sub_group_name FROM '.DB_PREFIX.'calculator c
						LEFT JOIN '.DB_PREFIX.'calculator_group cg On c.group_id = cg.group_id
						LEFT JOIN '.DB_PREFIX.'calculator_sub_group csg On c.sub_group_id = csg.sub_group_id
						WHERE `key` IN ("'.implode('","',$In).'") AND c.group_id = '.$group_id.'
						ORDER BY c.sub_group_id, c.sort, c.name
						';
			//$json['sql'] = $sql;
			$r = $this->db->query($sql);
			
			
			//Формируем список
			$data['total'] = 0;
			$data['fields'] = array();
			$data['sub_groups'] = array();
			
			if($r->num_rows){
				foreach($r->rows as $row){
					
					if($row['key'] == 'all'){// OR (isset($this->request->post[$row['key']]) AND (int)$this->request->post[$row['key']] == 1)){
						$quantity = $main_value;
					}else{
						$quantity = ceil((float)$this->request->post[$row['key']]);
					}
					
					//Делим на коэф и добавляем запас
					if($row['operation'] == 0){
						$quantity = $quantity / (float)$row['koef'] * ((float)$row['plus']/100 + 1);
					}elseif($row['operation'] == 2){
						//Особая обработка
						
						//Водосточная труба 3м
						if(isset($this->request->post[$row['key']]) AND $this->request->post[$row['key']] == 'с2-height'){
							$quantity = ($row['с2-count-drainpipe']*$row['с2-height']/$row['koef']) * ((float)$row['plus']/100 + 1);
						}
						
					}else{
						$quantity = $quantity * (float)$row['koef'] * ((float)$row['plus']/100 + 1);
					}
					
					$quantity = ceil($quantity);
					
					$data['sub_groups'][$row['sub_group_id']] = $row['sub_group_name'];
					$data['header'] = $row['header'];
					
					$data['fields'][$row['sub_group_id']][] = array(
																  
									'name' => $row['name'],
									'mera' => $row['mera'],
									'quantity' => $quantity,
									'price' => number_format($row['price'], 1, '.', ' '),
									'total' => number_format($quantity * $row['price'], 0, '.', ' '),
									'price_f' => $this->currency->format($row['price'], $this->session->data['currency']),
									'total_f' => $this->currency->format($quantity * $row['price'], $this->session->data['currency']),
																  
																  );
					
					$data['total'] += $quantity * $row['price'];
					
				}
			}
			
			//$json['data'] = $data;
			
			$data['total'] = $this->currency->format($data['total'], $this->session->data['currency']);
			
			//Расчет суммы
			$json['total'] = $data['total'];
			
			
			if(isset($json['post']['email']) AND $json['post']['email'] != '' AND $this->request->get['step'] > 1){
				
				if(strpos($json['post']['email'], '@') === false){
					
					$json['error'] = 'Не верный email!';
					
				}else{
					
					$subject = 'Заказ на просчет';
					$text = 'Просчет доступен в HTML';
					$msg = $this->load->view('mail/calculator', $data);
					$mail = new Mail();
					$mail->protocol = $this->config->get('config_mail_protocol');
					$mail->parameter = $this->config->get('config_mail_parameter');
					$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
					$mail->smtp_username = $this->config->get('config_mail_smtp_username');
					$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
					$mail->smtp_port = $this->config->get('config_mail_smtp_port');
					$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
		
					$mail->setTo($json['post']['email']);
					$mail->setFrom($this->config->get('config_email'));
					$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
					$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
					$mail->setHtml($this->load->view('mail/calculator', $data));
					$mail->setText($text);
					
					$mail->setTo($json['post']['email']);
					$mail->send();
					
					$mail->setTo($this->config->get('config_email'));
					//$mail->send();
					
					$json['success'] = 'Расчет цен отправлен на Ваш емаил!';
					
				}
				
				
				
			}
			
			
		}		
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
						
	}
	
	
}
