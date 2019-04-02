<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		$this->load->model('tool/image');
		
		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['commandos'] = array();

		$filter_data = array(
			'filter_category_id' =>  7,
			'filter_sub_category' => true,
			'sort'               => 'p.blog_product_id',
			'order'              => 'DESC',
			'start'              => 0,
			'limit'              => 4
		);
		$this->load->model('catalog/blog_product');
		$results = $this->model_catalog_blog_product->getProducts($filter_data);

		$data['commandos_href'] = $this->url->link('product/blog_category', 'blogpath=7');
		
		foreach ($results as $result) {
			
			$data['commandos'][] = array(
				'blog_product_id'  => $result['blog_product_id'],
				'thumb'       => '/image/'.$result['image'],
				'name'        => $result['name'],
				'description' => strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')),
				//'href'        => $this->url->link('product/blog_product', 'blogpath=5&blog_product_id=' . $result['blog_product_id'] . $url)
			);
		}

	
		$data['map_info'] = array();

		$filter_data = array(
			'filter_category_id' =>  10,
			'filter_sub_category' => true,
		);
		$this->load->model('catalog/blog_product');
		$results = $this->model_catalog_blog_product->getProducts($filter_data);

		$data['map_info_href'] = $this->url->link('product/blog_category', 'blogpath=10');
		
		foreach ($results as $result) {
			
			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
			} else {
				$price = false;
			}
			
			if (is_file(DIR_IMAGE . $result['image'])) {
				$image = $this->model_tool_image->resize($result['image'], 100, 100);
			} else {
				$image = $this->model_tool_image->resize('no_image.png', 100, 100);
			}


			//echo '<br>'.$result['blog_product_id'].' '.$result['location'];
	
			$data['map_info'][] = array(
				'blog_product_id'  => $result['blog_product_id'],
				'thumb'       => '/image/'.$result['image'],
				'image'       => $image,
				'name'        => $result['name'],
				'sku'        => $result['sku'],
				'srok'        => $result['upc'],
				'ploshad'        => $result['ean'],
				'mesto'        => $result['jan'],
				'autor'        => $result['isbn'],
				'price'        => $price,
				'location'        => $result['location'],
				'description' => strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')),
				'href'        => $this->url->link('product/blog_product', 'blogpath=10&blog_product_id=' . $result['blog_product_id'] )
			);
		}
		
		$this->request->get['calculator_json'] = true;
		$data['calculator'] = $this->load->controller('calculator/calculator');
		unset($this->request->get['calculator_json']);
		
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
