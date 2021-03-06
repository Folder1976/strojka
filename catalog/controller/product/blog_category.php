<?php
class ControllerProductBlogCategory extends Controller {
	public function index() {
		$this->load->language('product/blog_category');

		$this->load->model('catalog/blog_category');

		$this->load->model('catalog/blog_product');

		$this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = $this->config->get($this->config->get('config_theme') . '_product_limit');
		}

		$data['telephone'] = $this->config->get('config_telephone');
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['blogpath'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path = '';

			$parts = explode('_', (string)$this->request->get['blogpath']);

			$blog_category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}

				$category_info = $this->model_catalog_blog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => html_entity_decode(str_replace('mutli', '', $category_info['name']), ENT_QUOTES, 'UTF-8'),
						'href' => $this->url->link('product/blog_category', 'blogpath=' . $path . $url)
					);
				}
			}
		} else {
			$blog_category_id = 0;
		}
		
		$category_id = $blog_category_id;
		
		$category_info = $this->model_catalog_blog_category->getCategory($blog_category_id);
		
		if ($category_info) {
			$this->document->setTitle($category_info['meta_title']);
			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);

			
			$category_info['name'] = str_replace('mutli', '', $category_info['name']);
			$category_info['name'] = html_entity_decode($category_info['name'],  ENT_QUOTES, 'UTF-8');

			$data['heading_title'] = $category_info['name'];
			
			$data['text_refine'] = $this->language->get('text_refine');
			$data['text_empty'] = $this->language->get('text_empty');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_price'] = $this->language->get('text_price');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$data['text_sort'] = $this->language->get('text_sort');
			$data['text_limit'] = $this->language->get('text_limit');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['button_list'] = $this->language->get('button_list');
			$data['button_grid'] = $this->language->get('button_grid');

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $category_info['name'],
				'href' => $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'])
			);

			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get($this->config->get('config_theme') . '_image_category_width'), $this->config->get($this->config->get('config_theme') . '_image_category_height'));
			} else {
				$data['thumb'] = '';
			}

			$data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$data['compare'] = $this->url->link('product/compare');

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['categories'] = array();

		
			if((int)$this->request->get['blogpath'] == 26){
				
				$results1 = array();
				
				//if((int)$this->request->get['blogpath'] == 26 AND $blog_category_id != 26){
					$results1 = array($this->model_catalog_blog_category->getCategory(26));
					$results1[0]['name'] = str_replace('mutli','', $results1[0]['name']);
				//}					
					$results2 = $this->model_catalog_blog_category->getCategories(26);
					$results = array_merge($results1,$results2);
				if((int)$this->request->get['blogpath'] == 26 AND $blog_category_id != 26){
					$this->request->get['blogpath'] = str_replace('_'.$blog_category_id,'', $this->request->get['blogpath']);
				}
			}elseif((int)$this->request->get['blogpath'] == 20){
				$results1 = array($this->model_catalog_blog_category->getCategory(20));
				$results1[0]['name'] = "Всё";
				$results2 = $this->model_catalog_blog_category->getCategories(20);
				$results = array_merge($results1,$results2);
				if((int)$this->request->get['blogpath'] == 20 AND $blog_category_id != 20){
					$this->request->get['blogpath'] = str_replace('_'.$blog_category_id,'', $this->request->get['blogpath']);
				}
			}else{
				$results = $this->model_catalog_blog_category->getCategories($blog_category_id);
			}
			

			foreach ($results as $result) {
				$filter_data = array(
					'filter_category_id'  => $result['blog_category_id'],
					'filter_sub_category' => true
				);

				$filter_data = array(
					'filter_category_id' =>  $result['blog_category_id'],
					'filter_sub_category' => true,
					'sort'               => 'p.sort_order',
					'order'              => 'ASC',
					'start'              => 0,
					'limit'              => 20
				);
				
				$prods = $this->model_catalog_blog_product->getProducts($filter_data);
				foreach($prods as $b_product_id => $value){
					$prods[$b_product_id]['href'] = $this->url->link('product/blog_product', 'blogpath=' . $this->request->get['blogpath'] . '_' . $result['blog_category_id']. '&blog_product_id=' . $value['blog_product_id']);
					
					$images = array();
					if((int)$this->request->get['blogpath'] == 26){
						
						$images = $this->model_catalog_blog_product->getProductImages($b_product_id);
						foreach($images as $index => $row){
							$images[$index]['image'] = $this->model_tool_image->resize($row['image'], 800,565);
							//$images[$index]['image'] = '/image/'.$row['image'];
						}
						$prods[$b_product_id]['images'] = $images;
					}
					
					$prods[$b_product_id]['description'] = html_entity_decode($prods[$b_product_id]['description'], ENT_QUOTES, 'UTF-8');
					
					
					$product_downloads = $this->model_catalog_blog_product->getProductDownloads($b_product_id);

					$data_product_downloads = array();
					$this->load->model("catalog/download");
					
					foreach ($product_downloads as $download_id) {
						$download_info = $this->model_catalog_download->getDownload($download_id);
			
						@unlink(DIR_USER_DOWNLOAD.$download_info['mask']);
						copy(DIR_DOWNLOAD.$download_info['filename'], DIR_USER_DOWNLOAD.$download_info['mask']);
						chmod(DIR_USER_DOWNLOAD.$download_info['mask'], 777);
						
						if ($download_info) {
							$data_product_downloads[] = array(
								'download_id' => $download_info['download_id'],
								'name'        => $download_info['name'],
								'href'        => HTTPS_SERVER.'download/'.$download_info['mask'],
							);
						}
					}
					
					$prods[$b_product_id]['downloads'] = $data_product_downloads;
		
				}
	
					
				if($this->request->get['blogpath'] == $result['blog_category_id'] ){
					$href = $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . $url);
				}else{
					$href = $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . '_' . $result['blog_category_id'] . $url);
				}

				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 120, 120);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', 120, 120);
				}
				
			
				
				$data['categories'][$result['blog_category_id']] = array(
					'blog_category_id' => $result['blog_category_id'] ,
					'products'			=> $prods,
					'image'			=> $image,
					'keyword' => $result['keyword'] ,
					'name' => html_entity_decode($result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_blog_product->getTotalProducts($filter_data) . ')' : ''),  ENT_QUOTES, 'UTF-8'),
					'name_no_prod' => html_entity_decode($result['name'],  ENT_QUOTES, 'UTF-8'),
					'href' => $href
				);
			}

			if((int)$this->request->get['blogpath'] == 20 AND $blog_category_id != 20){
				
				$tmp = explode('_', $this->request->get['blogpath']);
				$tmp_blog_category_id = (isset($tmp[1])) ? (int)$tmp[1] : $blog_category_id;
				
					$results = $this->model_catalog_blog_category->getCategories($tmp_blog_category_id);
				
					foreach ($results as $result) {
						
						$data['categories1'][] = array(
							'blog_category_id' => $result['blog_category_id'] ,
							'products'			=> $prods,
							'keyword' => $result['keyword'] ,
							'name_no_prod' => $result['name'],
							'name' => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_blog_product->getTotalProducts($filter_data) . ')' : ''),
							'href' => $this->url->link('product/blog_category', 'blogpath=20' . '_' . $tmp_blog_category_id . '_' . $result['blog_category_id'] . $url)
						);
					}
			}

			
			$data['products1'] = array();

			$filter_data = array(
				'filter_category_id' =>  5,
				'filter_sub_category' => true,
				'sort'               => 'p.blog_product_id',
				'order'              => 'DESC',
				'start'              => 1,
				'limit'              => 3
			);

			$results = $this->model_catalog_blog_product->getProducts($filter_data);

			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}

				if(mb_strlen($result['description']) > $this->config->get($this->config->get('config_theme') . '_product_description_length')){
					$short_description = utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..';
				}else{
					$short_description = strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'));
				}
			
				$images = array();
				if((int)$this->request->get['blogpath'] == 20){
					
					$images = $this->model_catalog_blog_product->getProductImages($result['blog_product_id']);
					foreach($images as $index => $row){
						$images[$index]['image'] = $this->model_tool_image->resize($row['image'], 800,565);
						//$images[$index]['image'] = '/image/'.$row['image'];
					}
				}
			   

				$data['products1'][] = array(
					'blog_product_id'  => $result['blog_product_id'],
					'sku'  => $result['sku'],
					'upc'  => $result['upc'],
					'ean'  => $result['ean'],
					'jan'  => $result['jan'],
					'isbn'  => $result['isbn'],
					'thumb'       => $image,
					'date_added'  => date('d.m.Y', strtotime($result['date_available'])),
					'name'        => $result['name'],
					'description' => $short_description,
					'images'	  => $images,
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
					'href'        => $this->url->link('product/blog_product', 'blogpath=5&blog_product_id=' . $result['blog_product_id'] . $url)
				);
			}

			
			$data['products'] = array();

			$filter_data = array(
				'filter_category_id' => $blog_category_id,
				'filter_filter'      => $filter,
				'filter_sub_category' => true,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

			//Это отзывы
			if($blog_category_id == 26){
				$filter_data['limit'] = 1000;
				$filter_data['start'] = 0;
			}
			
			$product_total = $this->model_catalog_blog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_blog_product->getProducts($filter_data);

			
			foreach ($results as $result) {
				if (isset($category_id) AND $category_id == 10) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'), 'blog_category');
				}elseif ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				
				if(mb_strlen($result['description']) > $this->config->get($this->config->get('config_theme') . '_product_description_length')){
					$short_description = utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..';
				}else{
					$short_description = strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'));
				}

				$images = array();
				if((int)$this->request->get['blogpath'] == 20){
					
					$images = $this->model_catalog_blog_product->getProductImages($result['blog_product_id']);
					
					foreach($images as $index => $row){
						$images[$index]['image'] = $this->model_tool_image->resize($row['image'], 800,565);
						//$images[$index]['image'] = '/image/'.$row['image'];
					}
				}
			   
				if((int)$this->request->get['blogpath'] == 26){
					
					$images = $this->model_catalog_blog_product->getProductImages($result['blog_product_id']);
					
					foreach($images as $index => $row){
						$images[$index]['image'] = $this->model_tool_image->resize($row['image'], 800,800);
						
						//$images[$index]['image'] = '/image/'.$row['image'];
					}
				}
			   
			   	$product_downloads = $this->model_catalog_blog_product->getProductDownloads($result['blog_product_id']);

				$data_product_downloads = array();
				$this->load->model("catalog/download");
				
				foreach ($product_downloads as $download_id) {
					$download_info = $this->model_catalog_download->getDownload($download_id);
		
					@unlink(DIR_USER_DOWNLOAD.$download_info['mask']);
					copy(DIR_DOWNLOAD.$download_info['filename'], DIR_USER_DOWNLOAD.$download_info['mask']);
					chmod(DIR_USER_DOWNLOAD.$download_info['mask'], 777);
					
					if ($download_info) {
						$data_product_downloads[] = array(
							'download_id' => $download_info['download_id'],
							'name'        => $download_info['name'],
							'href'        => HTTPS_SERVER.'download/'.$download_info['mask'],
						);
					}
				}

		
				$data['products'][] = array(
					'blog_product_id'  => $result['blog_product_id'],
					'sku'  => $result['sku'],
					'upc'  => $result['upc'],
					'ean'  => $result['ean'],
					'jan'  => $result['jan'],
					'isbn'  => $result['isbn'],
					'downloads'  => $data_product_downloads,
					//'date_added'  => $result['date_added'],
					'images'	  => $images,
					'thumb'       => $image,
					'date_added'  => date('d.m.Y', strtotime($result['date_available'])),
					'name'        => $result['name'],
					'quantity'        => $result['quantity'],
					'description' => $short_description,
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
					'href'        => $this->url->link('product/blog_product', 'blogpath=' . $this->request->get['blogpath'] . '&blog_product_id=' . $result['blog_product_id'] . $url)
				);
			}

			if($blog_category_id == 26){
				
				$products = array();
				
				foreach($data['products'] as $row){
					$products[$this->model_catalog_blog_product->getCategory($row['blog_product_id'])][] = $row;
				}
				
				$data['products'] = array();
				$data['products'] = $products;
				
			}
			
			
			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . '&sort=p.sort_order&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . '&sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'blogpath=' . $this->request->get['blogpath'] . '&sort=pd.name&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . '&sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'blogpath=' . $this->request->get['blogpath'] . '&sort=p.price&order=DESC' . $url)
			);

			if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . '&sort=rating&order=DESC' . $url)
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . '&sort=rating&order=ASC' . $url)
				);
			}

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . '&sort=p.model&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . '&sort=p.model&order=DESC' . $url)
			);

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get($this->config->get('config_theme') . '_product_limit'), 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('product/blog_category', 'blogpath=' . $this->request->get['blogpath'] . $url . '&page={page}');

			$data['pagination'] = $pagination->render();

			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {
			    $this->document->addLink($this->url->link('product/blog_category', 'blogpath=' . $category_info['blog_category_id'], true), 'canonical');
			} elseif ($page == 2) {
			    $this->document->addLink($this->url->link('product/blog_category', 'blogpath=' . $category_info['blog_category_id'], true), 'prev');
			} else {
			    $this->document->addLink($this->url->link('product/blog_category', 'blogpath=' . $category_info['blog_category_id'] . '&page='. ($page - 1), true), 'prev');
			}

			if ($limit && ceil($product_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('product/blog_category', 'blogpath=' . $category_info['blog_category_id'] . '&page='. ($page + 1), true), 'next');
			}

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->request->get['calculator_json'] = true;
			$data['calculator'] = $this->load->controller('calculator/calculator');
			unset($this->request->get['calculator_json']);
			

			
			
			if($category_info['template'] != ''){
				$this->response->setOutput($this->load->view('blog_product/'.str_replace('.tpl', '', $category_info['template']), $data));
			}else{
				$this->response->setOutput($this->load->view('blog_product/blog_category', $data));	
			}
			
		}elseif($blog_category_id == 0){
			
			$data['heading_title'] = 'Услуги';
			
			//$this->document->setTitle($data['heading_title']);
			//$this->document->setDescription('');
			//$this->document->setKeywords($data['heading_title']);

			
			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $data['heading_title'],
				'href' => $this->url->link('product/blog_category', 'blogpath=0')
			);

			$data['description'] = html_entity_decode('', ENT_QUOTES, 'UTF-8');
			
			/*
			$data['categories'] = array();

			$categories = $this->model_catalog_blog_category->getCategories($blog_category_id);

			foreach ($categories as $category) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_blog_category->getCategories($category['blog_category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['blog_category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'],
						'href'  => $this->url->link('product/blog_category', 'blogpath=' . $category['blog_category_id'] . '_' . $child['blog_category_id'])
					);
				}

				// Level 1
				$data['categories'][$category['blog_category_id']] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/blog_category', 'blogpath=' . $category['blog_category_id'])
				);
			}
			*/
			
				//===================================================================================================================
	
		$data['categories'] = array();
		$categories = $this->model_catalog_blog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();
				$children_data_category = array();

		
				$filter_data = array(
					'filter_category_id'  => $category['blog_category_id'],
					'filter_sub_category' => true
				); 
				
				//echo '<pre>'; print_r(var_dump($filter_data));
				$children_category = $this->model_catalog_blog_category->getCategories($category['blog_category_id']);

				$children = $this->model_catalog_blog_product->getProducts($filter_data);
				
				foreach ($children as $child) {
					$children_data[] = array(
						'name'  => $child['name'],
						'href'  => $this->url->link('product/blog_product', 'blogpath=' . $category['blog_category_id'] . '&blog_product_id=' . $child['blog_product_id'])
					);
				}
				
				foreach ($children_category as $child) {
					$children_data_category[] = array(
						'name'  => $child['name'],
						'href'  => $this->url->link('product/blog_category', 'blogpath=' . $category['blog_category_id'] . '_' . $child['blog_category_id'])
					);
				}

				// Level 1
				$data['categories'][$category['blog_category_id']] = array(
					'name'     => $category['name'],
					//'children' => $children_data,
					'children' => $children_data_category,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/blog_category', 'blogpath=' . $category['blog_category_id'])
				);
			}
		}

		
		// ====================================
			

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('blog_product/blog_category_main', $data));	
			
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/blog_category', $url)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			
			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}
}

