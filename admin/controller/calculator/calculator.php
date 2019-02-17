<?php
class Controllercalculatorcalculator extends Controller {
	private $error = array();

	public function index() {
		
		$this->load->language('catalog/product');
		
		$this->document->setTitle('Калькулятор');

		$this->load->model('calculator/calculator');

		$this->getForm();
	}

	public function edit() {
	
		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('calculator/calculator');

		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			
			//echo "<pre>";print_r(var_dump($this->request->post));echo "</pre>";
			//die();
			
			$this->model_calculator_calculator->edit( $this->request->post);

			$this->session->data['success'] = 'Сохранил';

			$url = '';

			$this->response->redirect($this->url->link('calculator/calculator', 'token=' . $this->session->data['token'] . $url, true));
		}

		$this->getForm();
	}

	protected function getForm() {
		
		$url = '';	
		
		$data['heading_title'] = 'Калькулятор';

		$data['text_form'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_none'] = $this->language->get('text_none');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_plus'] = $this->language->get('text_plus');
		$data['text_minus'] = $this->language->get('text_minus');
		$data['text_default'] = $this->language->get('text_default');
		$data['text_option'] = $this->language->get('text_option');
		$data['text_option_value'] = $this->language->get('text_option_value');
		$data['text_select'] = $this->language->get('text_select');
		$data['text_percent'] = $this->language->get('text_percent');
		$data['text_amount'] = $this->language->get('text_amount');

		$data['entry_name'] = $this->language->get('entry_name');
		
		$data['error_warning'] = '';
	
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_attribute_add'] = $this->language->get('button_attribute_add');
		$data['button_option_add'] = $this->language->get('button_option_add');
		$data['button_option_value_add'] = $this->language->get('button_option_value_add');
		$data['button_discount_add'] = $this->language->get('button_discount_add');
		$data['button_special_add'] = $this->language->get('button_special_add');
		$data['button_image_add'] = $this->language->get('button_image_add');
		$data['button_remove'] = $this->language->get('button_remove');
		$data['button_recurring_add'] = $this->language->get('button_recurring_add');

		$data['tab_general'] = $this->language->get('tab_general');
		$data['tab_data'] = $this->language->get('tab_data');
		$data['tab_attribute'] = $this->language->get('tab_attribute');
		$data['tab_option'] = $this->language->get('tab_option');
		$data['tab_recurring'] = $this->language->get('tab_recurring');
		$data['tab_discount'] = $this->language->get('tab_discount');
		$data['tab_special'] = $this->language->get('tab_special');
		$data['tab_image'] = $this->language->get('tab_image');
		$data['tab_links'] = $this->language->get('tab_links');
		$data['tab_reward'] = $this->language->get('tab_reward');
		$data['tab_design'] = $this->language->get('tab_design');
		$data['tab_openbay'] = $this->language->get('tab_openbay');

		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => 'Калькулятор',
			'href' => $this->url->link('calculator/calculator', 'token=' . $this->session->data['token'] . $url, true)
		);

		$data['action'] = $this->url->link('calculator/calculator/edit', 'token=' . $this->session->data['token'] , true);
	
		$data['cancel'] = $this->url->link('calculator/calculator', 'token=' . $this->session->data['token'] . $url, true);

		$product_info = $this->model_calculator_calculator->get();
		
		$data['calculators'] = array();
		foreach($product_info as $index => $row){
			$data['calculators'][$row['group_id']][] = $row;
		}
		
		$data['sub_groups'] = array(
									1 => 'Основной блок',
									2 => 'Демонтаж',
									3 => 'Монтаж',
									4 => 'Услуги',
									);
		
		$data['keys'] = array();
		$data['keys'][1] = array(
					'all' => 'Главное поле',
					'c1-area' => 'Площадь кровли',
					'c1-ch1' => 'Монтаж стропильной системы',
					'c1-ch2' => 'Пароизоляция',
					'c1-ch3' => 'Гидроизоляция',
					'c1-ch4' => 'Демонтаж обрешетки',
					'c1-ch5' => 'Демонтаж кровли',
					'c1-length-k' => 'Монтаж конька м.п.',
					'с1-heat' => 'Утепление мм.',
					'с1-length-curtain' => 'Метраж карнизов м.п.',
					'с1-length-endov' => 'Метраж планок ендовы м.п.',
					'с1-length-pp' => 'Метраж планок примыкания м.п.',
					'с1-length-tp' => 'Метраж торцевых планок м.п.',
					'с1-length-curtain' => 'Метраж карнизов м.п.',
					);
		
		$data['keys'][2] = array(
					'all' => 'Главное поле',
					'c1-area' => 'Площадь кровли',
					'c1-ch1' => 'Монтаж стропильной системы',
					'c1-ch2' => 'Пароизоляция',
					'c1-ch3' => 'Гидроизоляция',
					'c1-ch4' => 'Демонтаж обрешетки',
					'c1-ch5' => 'Демонтаж кровли',
					'c1-length-k' => 'Монтаж конька м.п.',
					'с1-heat' => 'Утепление мм.',
					'с1-length-curtain' => 'Метраж карнизов м.п.',
					'с1-length-endov' => 'Метраж планок ендовы м.п.',
					'с1-length-pp' => 'Метраж планок примыкания м.п.',
					'с1-length-tp' => 'Метраж торцевых планок м.п.',
					'с1-length-curtain' => 'Метраж карнизов м.п.',
					);
		
		$data['keys'][3] = array(
					'all' => 'Главное поле',
					'c2-ch1' => 'Демонтаж старой системы',
					'с2-count-drainpipe' => 'К-во водосточных стояков',
					'с2-height' => 'Высота до карниза крыши',
					'с2-length-eaves' => 'Длина карниза крыши',
					);
		
		$data['keys'][4] = array(
					'all' => 'Главное поле',
					'c2-ch1' => 'Демонтаж старой системы',
					'с2-count-drainpipe' => 'К-во водосточных стояков',
					'с2-height' => 'Высота до карниза крыши',
					'с2-length-eaves' => 'Длина карниза крыши',
					);
				
		$data['keys'][5] = array(
					'all' => 'Главное поле',
					'с3-length-overhang' => 'Длина свеса',
					'с3-length-roof' => 'Общая длина свеса кровли',
					);
		
		$data['keys'][6] = array(
					'all' => 'Главное поле',
					'с3-length-overhang' => 'Длина свеса',
					'с3-length-roof' => 'Общая длина свеса кровли',
					);
	
		$data['operations'] = array(
					0 => '/ Делить значение поля',
					1 => '* Умножить поле',
					2 => 'php Отдельная обработка',
					);
		

		$data['token'] = $this->session->data['token'];

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('calculator/calculator', $data));
	}

	
}

