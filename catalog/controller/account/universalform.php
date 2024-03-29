<?php

class ControllerAccountUniversalform extends Controller {
	private $error = array();

	public function index() {
        
		    
		if(isset($this->request->post['formname']) AND $this->request->post['formname'] == 'lead-magnet'){
			$this->request->post['name'] = 'Форма с главной';
			$this->request->post['comment'] = 'Форма с главной';
		}
		
        $this->load->model('account/customer');
        
        //Если пользователь залогинен
        $customer_info = array(
                               'firstname' => 'Не',
                               'lastname' => 'залогинен',
                               );
        
		if ($this->customer->isLogged()) {
			$customer_info = $this->model_account_customer->getCustomer($this->customer->isLogged());
		}else{
            if(isset($this->request->post['email'])){
                $customer_info = $this->model_account_customer->getCustomerByEmail($this->request->post['email']);
            }
        }
        
        if(!$customer_info){
            $customer_info = array(
                               'firstname' => 'Не',
                               'lastname' => 'найден',
                               );
        }

        
        
        $json = array();
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			
            
			$subject = 'Форма обратной связи с сайта - '.HTTP_SERVER;
            $message = '';
            
			
			
            foreach($this->request->post as $name => $value){
                $message  .= $name .': '.$value. "\n\n";
            }
       
       
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			
			if(isset($_FILES["file"]) AND $_FILES["file"]["tmp_name"] !== ''){
				move_uploaded_file($_FILES["file"]["tmp_name"],DIR_UPLOAD.$_FILES["file"]["name"]);
				$mail->AddAttachment( DIR_UPLOAD.$_FILES["file"]["name"] , $_FILES["file"]["name"] );

			}
		
			$mail->setTo($this->config->get('config_email'));
			//$mail->setTo('folder.list@gmail.com');
			$mail->setFrom($this->config->get('config_email'));
			
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			$mail->send();
            
            $json['success'] = 'Форма успешно отправлена. Мы скоро свяжемся с Вами.';
		}else{
            $json['error'] = $this->error;
        }

        $this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));

	}

	protected function validate() {
        
        if(!isset($this->request->post['agree'])){
            $this->error = 'Ознакомтесь и согласитесь с политикой конфиденциальности';
        }

		if (!isset($this->request->post['comment']) OR $this->request->post['comment'] == '') {
			//$this->error = 'Укажите Ваше сообщение';
        }
        
		if (!isset($this->request->post['name']) OR $this->request->post['name'] == '') {
			$this->error = 'Укажите Ваше имя';
        }


		return !$this->error;
	}
}
//include_once($_SERVER['DOCUMENT_ROOT'].'/amo/amo.php');
//file_put_contents( "debug.txt", print_r($_POST, true) . PHP_EOL , FILE_APPEND);
//file_put_contents( "debug.txt", print_r($_FILES, true) . PHP_EOL , FILE_APPEND);