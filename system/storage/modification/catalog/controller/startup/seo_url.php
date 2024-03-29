<?php
class ControllerStartupSeoUrl extends Controller {
	public function index() {
		// Add rewrite to url class
		if ($this->config->get('config_seo_url')) {
			$this->url->addRewrite($this);
		}

		
		// Decode URL
		if (isset($this->request->get['_route_']) AND (
					strpos($this->request->get['_route_'], 'online-calc/') !== false
					OR $this->request->get['_route_'] == 'online-calc')) {
			
			$this->request->get['route'] = 'calculator/calculator';
			
		}elseif (isset($this->request->get['_route_']) AND $this->request->get['_route_'] == 'contact') {
			
			$this->request->get['route'] = 'information/contact';
			
		}elseif (isset($this->request->get['_route_']) AND $this->request->get['_route_'] == 'cart') {
			
			$this->request->get['route'] = 'checkout/onepagecheckout';
			
		}elseif (isset($this->request->get['_route_']) AND $this->request->get['_route_'] == 'services') {
			
			$this->request->get['route'] = 'product/blog_category';
			$this->request->get['blogpath'] = '0';
			
			$this->document->setTitle('Услуги кровли крыши компании Руфер');
			$this->document->setDescription('Компания предлагает разнообразные услуги для своих клиентов. К перечню таких сервисов относятся работы по проектированию, (в т.ч. сметному), монтажу и ремонту кровель, а также поставка требуемых стройматериалов.');
			$this->document->setKeywords('Услуги кровли крыши компании Руфер');
			
		}elseif (isset($this->request->get['_route_']) AND $this->request->get['_route_'] == 'products') {
			
			$this->request->get['route'] = 'product/category';
			$this->request->get['path'] = '0';
			
			$this->document->setTitle('Наши товары материалы для кровли крыши');
			$this->document->setDescription('Компания предлагает различные виды попутных товаров для монтажных кровельных работ, которые будут реализовываться по приемлемым ценам');
			$this->document->setKeywords('Наши товары материалы для кровли крыши');
			
		// Decode URL
		}elseif (isset($this->request->get['_route_'])) {
			$parts = explode('/', $this->request->get['_route_']);

			// remove any empty arrays from trailing
			if (utf8_strlen(end($parts)) == 0) {
				array_pop($parts);
			}

			foreach ($parts as $part) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE keyword = '" . $this->db->escape($part) . "'");

				if ($query->num_rows) {
					$url = explode('=', $query->row['query']);


				//<!-- Blogi * * * Start -->
				if ($url[0] == 'blog_product_id') {
					$this->request->get['blog_product_id'] = $url[1];
				}

				if ($url[0] == 'blog_category_id') {
					if (!isset($this->request->get['blogpath'])) {
						$this->request->get['blogpath'] = $url[1];
					} else {
						$this->request->get['blogpath'] .= '_' . $url[1];
					}
				}
				//<!-- Blogi * * * End -->
					  
					if ($url[0] == 'product_id') {
						$this->request->get['product_id'] = $url[1];
					}

					if ($url[0] == 'category_id') {
						if (!isset($this->request->get['path'])) {
							$this->request->get['path'] = $url[1];
						} else {
							$this->request->get['path'] .= '_' . $url[1];
						}
					}

					if ($url[0] == 'manufacturer_id') {
						$this->request->get['manufacturer_id'] = $url[1];
					}

					if ($url[0] == 'information_id') {
						$this->request->get['information_id'] = $url[1];
					}

					if ($query->row['query'] && $url[0] != 'information_id' && $url[0] != 'manufacturer_id' && $url[0] != 'category_id' && $url[0] != 'product_id') {
						$this->request->get['route'] = $query->row['query'];
					}
				} else {
					$this->request->get['route'] = 'error/not_found';

					break;
				}
			}

			
			

				//<!-- Blogi * * * Start -->
				if (isset($query->row['query']) && ($url[0] != 'blog_product_id' || $url[0] != 'blog_category_id' )) {
					unset($this->request->get['route']);
				}
				//<!-- Blogi * * * End -->
					  
			if (!isset($this->request->get['route'])) {
				if (isset($this->request->get['product_id'])) {
					$this->request->get['route'] = 'product/product';

				//<!-- Blogi * * * Start -->
				} elseif (isset($this->request->get['blog_product_id'])) {
					$this->request->get['route'] = 'product/blog_product';
				} elseif (isset($this->request->get['blogpath'])) {
					$this->request->get['route'] = 'product/blog_category';
				//<!-- Blogi * * * End -->
					  
				} elseif (isset($this->request->get['path'])) {
					$this->request->get['route'] = 'product/category';
				} elseif (isset($this->request->get['manufacturer_id'])) {
					$this->request->get['route'] = 'product/manufacturer/info';
				} elseif (isset($this->request->get['information_id'])) {
					$this->request->get['route'] = 'information/information';
				}
			}
		}
	}

	public function rewrite($link) {
		$url_info = parse_url(str_replace('&amp;', '&', $link));

		$url = '';

		$data = array();

		
		$no_path = true;
		$path = '';
		parse_str($url_info['query'], $data);

		foreach ($data as $key => $value) {
			if (isset($data['route'])) {
				if (($data['route'] == 'information/news' && $key == 'news_id') || ($data['route'] == 'product/product' && $key == 'product_id') || (($data['route'] == 'product/manufacturer/info' || $data['route'] == 'product/product') && $key == 'manufacturer_id') || ($data['route'] == 'information/information' && $key == 'information_id')) {
					$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = '" . $this->db->escape($key . '=' . (int)$value) . "'");

					
					//Отдельно найдем путь
					if($key == 'product_id'){
						$product_id = $value;
						
						$r = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_category WHERE product_id='" . (int)$product_id . "' LIMIT 1");
						if($r->num_rows){
							
							$category_id = (int)$r->row['category_id'];
							$r = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_path cp
													LEFT JOIN " . DB_PREFIX . "url_alias ua ON ua.query = CONCAT('category_id=', cp.path_id)
													WHERE cp.category_id='" . (int)$category_id . "'");
							
							if($r->num_rows){
								foreach($r->rows as $row){
									$path .= '/'.$row['keyword'];
								}
							}
						}
					}
					
					if ($query->num_rows && $query->row['keyword']) {
						$url .= '/' . $query->row['keyword'];

						unset($data[$key]);
					}

				//<!-- Blogi * * * Start -->
				}elseif ($data['route'] == 'product/blog_product' && $key == 'blog_product_id') {
					$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = '" . $this->db->escape($key . '=' . (int)$value) . "'");

					//Отдельно найдем путь
					if($key == 'blog_product_id'){
						$product_id = $value;
						
						$r = $this->db->query("SELECT * FROM " . DB_PREFIX . "blog_product_to_category WHERE blog_product_id='" . (int)$product_id . "' LIMIT 1");
						if($r->num_rows){
							
							$category_id = (int)$r->row['blog_category_id'];
							$r = $this->db->query("SELECT * FROM " . DB_PREFIX . "blog_category_path cp
													LEFT JOIN " . DB_PREFIX . "url_alias ua ON ua.query = CONCAT('blog_category_id=', cp.path_id)
													WHERE cp.blog_category_id='" . (int)$category_id . "'");
							
							if($r->num_rows){
								foreach($r->rows as $row){
									$path .= '/'.$row['keyword'];
								}
							}
						}
					}


					if ($query->num_rows && $query->row['keyword']) {
						$url .= '/' . $query->row['keyword'];

						unset($data[$key]);
					}
				} elseif ($key == 'blogpath') {
					$categories = explode('_', $value);

					foreach ($categories as $category) {
						$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = 'blog_category_id=" . (int)$category . "'");

						if ($query->num_rows && $query->row['keyword']) {
							$url .= '/' . $query->row['keyword'];
						} else {
							$url = '';

							break;
						}
					}

					unset($data[$key]);
				
				//<!-- Blogi * * * End -->
					  
				} elseif ($key == 'path') {
					$categories = explode('_', $value);
				$no_path = false;
					foreach ($categories as $category) {
						$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = 'category_id=" . (int)$category . "'");

						if ($query->num_rows && $query->row['keyword']) {
							$url .= '/' . $query->row['keyword'];
						} else {
							$url = '';

							break;
						}
					}

					unset($data[$key]);
				}
			}
		}

		if($no_path){
			$url = $path.$url;
		}
		
		if ($url) {
			unset($data['route']);

			$query = '';

			if ($data) {
				foreach ($data as $key => $value) {
					
				// attribute_filter * * * Start
				if($key=='ffilter' OR $key=='ofilter'){
					foreach ($value as $key2 => $value2) {
						foreach ($value2 as $value3) {
							$query .= '&' . rawurlencode((string)$key) . '['.rawurlencode((string)$key2) .'][]=' . rawurlencode($value3);
						}
					}
				}else{
					$query .= '&' . rawurlencode((string)$key) . '=' . rawurlencode((is_array($value) ? http_build_query($value) : (string)$value));
				}
				// attribute_filter * * * End
				
				}

				if ($query) {
					$query = '?' . str_replace('&', '&amp;', trim($query, '&'));
				}
			}

			return $url_info['scheme'] . '://' . $url_info['host'] . (isset($url_info['port']) ? ':' . $url_info['port'] : '') . str_replace('/index.php', '', $url_info['path']) . $url . $query;
		} else {
			return $link;
		}
	}
}
