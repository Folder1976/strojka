<?php
class ControllerParsingParsing extends Controller {
	private $error = array();
	public $html;
	public $pausa = 2;
	public $currency = 4;
	public $parsing_url = 'https://agate.ru';
	public $main_category_name = 'Главная';
	public $url_categories = array('https://agate.ru/krovlya',
														 'https://agate.ru/dimoxody',
														 'https://agate.ru/vodostochnye-sistemy',
														 'https://agate.ru/mansardnye-okna',
														 'https://agate.ru/komplektuyushchie-dlya-krovli'														 
														 );
	
	public function sort_by_len($f,$s){
		if(strlen($f)<strlen($s)) return true;
		else return false;
	}

	
	public function index() {
	
		set_time_limit(0);
		include 'constants.php';
		//define("GETCONTENTVIAPROXY", 0); //Включает прокси
		//define("GETCONTENTVIANAON", 1);
		
		$parsing_url = $this->parsing_url;
	
		header('Content-Type: text/html; charset=utf-8');		
		?>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script defer src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
		<br>
		<a href="parsing.php?func=add_products&supplier=militarist&resetlinks">Обнулить сайтмап (Категории)</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="parsing.php?func=add_products&supplier=militarist&resetlinks1">Обнулить сайтмап (Продукты)</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="parsing.php?func=add_products&supplier=militarist&links"><b><font color="blue">Продолжить парсить</font></b></a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="parsing.php?func=add_products&supplier=militarist&links&unset"><b><font color="orange">Пропустить товар</font></b></a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<?php
		
		$http = $parsing_url;
		//просто парсим ссылки
		if(isset($_GET['resetlinks'])){
			
			$sql = 'UPDATE oc_parsing_militarist SET view = \'0\' WHERE view = "1";';
			$this->db->query($sql) or die('==' . $sql);
		
		}
		
		if(isset($_GET['resetlinks1'])){
			
			$sql = 'UPDATE oc_parsing_militarist SET view = \'0\' WHERE view = "2";';
			$this->db->query($sql) or die('==' . $sql);
		
		}
		
		if(isset($_GET['links'])){
			include DIR_SYSTEM.'library/parsing/simple_html_dom/simple_html_dom.php';
	
			//тупо посчитаем все запись
			$sql = 'SELECT count(id) AS id FROM oc_parsing_militarist;';
			$tmp = $this->db->query($sql) or die('==' . $sql);
			$tmp = $tmp->row;
			$all = $tmp['id'];
	
			$sql = 'SELECT count(id) AS id FROM oc_parsing_militarist WHERE view = \'0\';';
			$tmp = $this->db->query($sql) or die('==' . $sql);
			$tmp = $tmp->row;
			$none = $tmp['id'];
			echo '<b>Всего ликов - '.$all.'. Пропарсено - '.($all - $none).'. Осталось - '.$none.'.</b>';
			
			if(isset($_GET['unset'])){
				$sql = 'SELECT id FROM oc_parsing_militarist WHERE view = \'0\' LIMIT 1;';
				$url = $this->db->query($sql) or die('==' . $sql);
				$list = $url->row;
				$sql = 'UPDATE oc_parsing_militarist SET view = \'2\' WHERE id = "'.$list['id'].'";';
				$url = $this->db->query($sql) or die('==' . $sql);
				
				?>
					<script>
						function reload() {
							location.href() = 'parsing.php?func=add_products&supplier=militarist&links';
						}
					</script>
				<?php
			}
				
			$sql = 'SELECT * FROM oc_parsing_militarist WHERE view = \'0\' LIMIT 1;';
			$url = $this->db->query($sql) or die('==' . $sql);
			
			
			if($url->num_rows > 0){
				$list = $url->row;
		
				echo ' <b>Урл ID - '.$list['id'].'. </b>'; 
					
				if(isset($_GET['url'])){
					$list['url'] = $_GET['url'];
				}
				
					
				//Если попадаются кривые линки!!!!!!!
				if(strpos($list['url'], $parsing_url) !== false){
					//$list['url'] = str_replace($parsing_url,'',$list['url']);
					
					$sql = 'UPDATE oc_parsing_militarist SET `url` = \''.$list['url'].'\' WHERE `id` = \''.$list['id'].'\';';
					$this->db->query($sql) or die('==' . $sql);
		
					echo '<h3 >url - <a style="color:orange;" href="'.$list['url'].'" target="_blank">'.$list['url'].'</a></h3>';
				}else{
					echo '<h3 >url - <a style="color:green;" href="'.$list['url'].'" target="_blank">'.$list['url'].'</a></h3>';
				}
					
				//Get content via proxy
				$this->html = @file_get_html($list['url']);
				
				
				//Если это кривой линк - возможно удаленный товар
				if(!$this->html){
					$this->setViewed($list['url']);
					$this->reload();
					return true;
				}
						
				//Хлебная крошка
				$tmp = $this->html->find('.bx_breadcrumbs',0);
				if($tmp){
					$breadcrumbs_html = $tmp->innertext();
					$this->html_tmp = str_get_html($breadcrumbs_html);
					$breadcrumbs_html = $this->html_tmp->find('li a, li span');
					$breadcrumbs = array();
					
					$i = 0;
					$keywords = explode('/', trim(str_replace($parsing_url.'/', '', $list['url']), '/'));
					$keywords[-1] = '';
					
					foreach($breadcrumbs_html as $tt){
						$temp = $tt->innertext();
						$temp = iconv( 'windows-1251', 'UTF-8', $temp);
						$temp = trim($temp, ' ');
						$temp = rtrim($temp, ' ');
						$temp_array = explode('<', $temp);
						$temp = trim($temp_array[0]);
						
						
						if($temp != ''){
							$breadcrumbs[$temp] = $temp;
						}
					}
					echo 'Крошки родителя ($breadcrumbs_txt => $category_id)-> <b>'.implode('>',$breadcrumbs).'</b><br>';
					$breadcrumbs_txt = implode('>',$breadcrumbs);
				}else{
					$breadcrumbs_txt = '';
				}
					
		
				//Массив ссылок
				$str_tmp = $this->html->find('a');
				echo '<h4>Найдены линки новые линки</h4>';
				$view = '0';
				foreach($str_tmp as $option){
				
					$href = str_get_html($option->href);
					
					if(strpos($href, $parsing_url) === false){
						$href = $parsing_url.$href;
					}
					
					//Если категория в списке для парса
					$key = false;
					
					
					
					foreach($this->url_categories as $url_category){
						if(strpos($href, $url_category) !== false){
							$key = true;
							break;
						}
						
					}
					
					if($key){
					
						$sql = 'SELECT id FROM oc_parsing_militarist WHERE url = \''.$href.'\';';
						$t = $this->db->query($sql) or die('==' . $sql);
						$name = '';
						if($t->num_rows == 0){
							$sql = 'INSERT INTO oc_parsing_militarist SET
										 `url` = \''.$href.'\',
										 `key` = "'.$name.'",
										 `view` = \''.$view.'\',
										 `date` = \''.date('Y-m-d H:i:s').'\',
										 `breadcrumbs` = \'\';';
							$this->db->query($sql) or die('==' . $sql);
							echo $href.'<br>';
						}
					
					}
	 
				}
				
				if(!isset($size_n)){
					$size_n = array('nosize'=>'0');
				}
				
	 
				//=============================================================
				//Опеределяем данные
				$error = 0;
			
			//Если нет крошек - это главная категория
			if(!isset($breadcrumbs)){
				$this->setViewed($list['url']);
				$this->reload();
				return true;
			}
			
			foreach($this->html->find('span') as $span){
				if($span->getAttribute('property') == 'name'){
					$category_name = iconv( 'windows-1251', 'UTF-8', $span->innertext());
				}
			}
			
			
			//Порлучим ИД родителя
			$category_id = 0;
			$i = -1;
			foreach($breadcrumbs as $category){
				
				$data = array('keyword' => $keywords[$i++],
							'name' => $category,
							'meta_title' => $category,
							'parent_id' => $category_id);
				
				
				$category_id = $this->importCategory( $data);
				
			}
			
			
			//Это товар
			$tmp = $this->html->find('.pricepicture',0);
			
			
			if($tmp){
				$product_id = 0;
				
				$data = array();
				$data['category_id'] = $category_id;
				$data['model'] = $this->getProductModel($this->html);
				
				$data['name'] = $this->getProductName($this->html);
				$data['keyword'] = $this->translitArtkl($data['name']);
				
				$data['description'] = $this->getProductDescription($this->html);
				$data['meta_h1'] = $this->getProductMetaH1($this->html);
				$data['meta_keyword'] = $this->getProductMetaKeyword($this->html);
				$data['meta_title'] = $this->getProductMetaTitle($this->html);
				$data['meta_description'] = $this->getProductMetaDescription($this->html);
				$data['tag'] = $this->getProductMetaTag($this->html);

			
				$data['manufacturer'] = $this->getManufacturerName($this->html);
				$data['manufacturer_id'] = $this->_updateInsertManufacturer($data['manufacturer']);
			
				$data['price'] = $this->getProductPrice($this->html);
				$data['quantity'] = $this->getProductQuantity($this->html);
				if($data['quantity'] > 0){
					$data['stock_status_id'] = 7;
				}else{
					$data['stock_status_id'] = 5;
				}
				
				$data['image'] = $this->getProductImage($this->html);
				$data['images'] = $this->getProductImages($this->html);
				
				$data['attributes'] = $this->getProductAttributes($this->html);
				$data['related'] = $this->getProductRecomended($this->html);
				
				
				$product_id = $this->importProduct($data);
				
					
				$this->setViewed($list['url'], 2, 'product_id='.$product_id);		
				$this->reload();	
				return true;
			//Это категория
			}else{
				
				
				if(isset($keywords[$i++])){
				$data = array('keyword' => $keywords[$i++],
							'name' => $category_name,
							'meta_title' => trim(iconv( 'windows-1251', 'UTF-8', $this->html->find('h1',0)->innertext())),
							'parent_id' => $category_id);
				$category_id = $this->importCategory( $data);
				}
				$this->setViewed($list['url'], 1, 'category_id='.$category_id);
				$this->reload();
				
				return true;
			}
			
			echo '<pre>****'; printf(var_dump($data));
			
			//Тут товар будет
			//<div itemscope itemtype="https://schema.org/Product">
			
			
				
				$this->setViewed($list['url'], 2, 'Нипанятна');		
				$this->reload();							
			}else{
				die('<h2>ЗАКОНЧИЛ!</h2>');
			}
		
			}
			
			
			
	}
	
	public function getProductName($html){
		return trim(iconv( 'windows-1251', 'UTF-8', $html->find('h1',0)->innertext()));
	}
	public function getProductModel($html){
		return '';
	}
	
	protected function _getAttributeId( $name ) {
		$language_id = 1;
		
		$issetAttribute= $this->db->query( "SELECT DISTINCT * FROM " . DB_PREFIX . "attribute_description WHERE LOWER(`name`) = '" . mb_strtolower($name) . "' LIMIT 1" );
	
		if($issetAttribute->num_rows){
		  
		  return (int)$issetAttribute->row['attribute_id'];
		  
		}
	
		$this->db->query("INSERT INTO " . DB_PREFIX . "attribute SET attribute_group_id='1',
										sort_order='0'");

		$attribute_id = $this->db->getLastId();

		$language = $this->getLangs();
		
		foreach($language as $lang){
			
			$this->db->query("INSERT INTO " . DB_PREFIX . "attribute_description SET
									attribute_id='".$attribute_id."',
									language_id='".$lang['language_id']."',
									name='".$name."'");
		}	

		return $attribute_id;

	}

	
	protected function _updateInsertManufacturer( $name ) {
		$language_id = 1;
		
		$issetManufacturer = $this->db->query( "SELECT DISTINCT * FROM " . DB_PREFIX . "manufacturer WHERE name = '" . $name . "'" );
	
		if($issetManufacturer->num_rows){
		  
		  return (int)$issetManufacturer->row['manufacturer_id'];
		  
		}
	   
			$this->db->query("INSERT INTO " . DB_PREFIX . "manufacturer SET name = '" . $this->db->escape($name) . "', sort_order = '0'");
	
			$manufacturer_id = $this->db->getLastId();
	
			$this->db->query("INSERT INTO " . DB_PREFIX . "manufacturer_to_store SET manufacturer_id = '".$manufacturer_id."', store_id = '0'");
	
		$keyword = $this->translitArtkl($name);
		
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'manufacturer_id=" . (int)$manufacturer_id . "',
						 keyword = '" . $this->db->escape($keyword) . "'");
		
			$this->cache->delete('manufacturer');
		
		return $manufacturer_id;

	}
	
	public function getManufacturerName($html){
		
		$manufacturer_img = $html->find('.manufacturer',0)->innertext();
		
		if($manufacturer_img == '') return '';
		
		$html_tmp = str_get_html($manufacturer_img);
		
		$img = $html_tmp->find('img',0);
		
		$manufacturer_name = iconv( 'windows-1251', 'UTF-8',$img->getAttribute('alt'));
		
		return trim($manufacturer_name);
		
	}
	
	public function getProductAttributes($html){
		
		$return_attributes = array();
		$attributes = array();
		
		if($html->find('table.customs',0)){
			
			$text = $html->find('table.customs',0)->innertext();
			
			$table = iconv( 'windows-1251', 'UTF-8', $text);
			
			$table = str_replace('</tr>', '*', $table);
			$table = str_replace('</td><td>', '|', $table);
			$table = strip_tags($table);
			
			$table_rows = explode('*', $table);
			foreach($table_rows as $row){
				$td = explode('|', $row);
				
				if(isset($td[1]) AND trim($td[0]) != 'Характеристика'){
					$attributes[trim($td[0])] = trim($td[1]);
				}
			}
			
			foreach($attributes as $name => $value){
				
				$attribute_id = $this->_getAttributeId($name);
				
				$return_attributes[$attribute_id] = array(
												'name' => $name,
												'text' => $value
														  );
				
			}
		
		}
		return $return_attributes;
		
	}
	
	public function  getProductMetaH1($html){
		return '';
	}
		
	public function  getProductMetaKeyword($html){
		return '';
	}
		
	public function  getProductMetaTag($html){
		return '';
	}
		
	public function  getProductMetaTitle($html){
		$title = '';
		foreach($html->find('meta') as $span){
			if($span->getAttribute('name') == 'title'){
				$title = iconv( 'windows-1251', 'UTF-8', $span->getAttribute('content'));
			}
		}
	
		return $this->no_parazit($title);
	}
		
	public function  getProductMetaDescription($html){
		$description = '';
		foreach($html->find('meta') as $span){
			if($span->getAttribute('name') == 'description'){
				$description = iconv( 'windows-1251', 'UTF-8', $span->getAttribute('content'));
			}
		}
	
		return $this->no_parazit($description);
	}
	
	
	public function getProductImage($html){
		
		$src = '';
		foreach($html->find('img') as $span){
			if($span->getAttribute('itemprop') == 'image'){
				$src = iconv( 'windows-1251', 'UTF-8', $span->getAttribute('src'));
			}
		}
	
		if(strpos($src, $this->parsing_url) !== false){
			
		}else{
			$src = $this->parsing_url.$src;
		}
	
		return $src;
		
	}
	
	public function getProductRecomended($html){
		
		$urls = array();
		$product_ids = array();
		
		foreach($html->find('#thiselementbuy a') as $span){
			$tml = iconv( 'windows-1251', 'UTF-8', $span->getAttribute('href'));
			$urls[$tml] = $tml;
		}
	
		foreach($urls as $url){
			$r = $this->db->query( "SELECT target_id FROM `" . DB_PREFIX . "parsing_militarist` WHERE `url` LIKE '%".$url."' LIMIT 1");
			if($r->num_rows){
				$target = explode('=', $r->row['target_id']);
				
				if($target[0] == 'product_id'){
					$product_ids[] = $target[1];
				}	
				
			}
		}
	
		return $product_ids;
		
	}
	
	public function getProductImages($html){
		
		return array();
		
		$src = '';
		foreach($this->html->find('img') as $span){
			if($span->getAttribute('itemprop') == 'image'){
				$src = iconv( 'windows-1251', 'UTF-8', $span->getAttribute('src'));
			}
		}
	
		if(strpos($src, $this->parsing_url) !== false){
			
		}else{
			$src = $this->parsing_url.$src;
		}
	
		return $src;
		
	}
	
	public function getProductDescription($html){
		return  '';	
	}
	
	public function getProductPrice($html){
		
		$price = 0;
		foreach($this->html->find('meta') as $span){
			if($span->getAttribute('itemprop') == 'price'){
				$price = (float)iconv( 'windows-1251', 'UTF-8', $span->getAttribute('content'));
			}
		}
	
		return $price;
		
	}
	
	public function getProductQuantity($html){
		
		$quantity = 0;
		foreach($this->html->find('link') as $span){
			if($span->getAttribute('itemprop') == 'availability'){
				$quantity = iconv( 'windows-1251', 'UTF-8', $span->getAttribute('href'));
			}
		}
	
		if(strpos($quantity, 'InStock') !== false){
			$quantity = 100;
		}else{
			$quantity = 0;
		}
	
		return $quantity;
		
	}
	
	public function setViewed($href, $view = 1, $key='') {
		$sql = 'UPDATE ' . DB_PREFIX . 'parsing_militarist SET `view`='.$view.', `target_id`="'.$key.'" WHERE `url` = \''.$href.'\'';
		$this->db->query($sql) or die('==' . $sql);
	}
	
	//Тут скрипт релоада страницы
	public function reload() {
		
		?>
		<script>
			$(document).ready(function(){
				setTimeout(function(){location.reload()}, <?php echo $this->pausa;?>000);
			});
		</script>
		<?php
	}
	public function translitArtkl($str) {
		$rus = array('#216;',';','#','&quot;','"','І','и','і','є','Є','ї','\"','\'','.',' ','А', 'Б', 'В', 'Г', 'Д', 'Е', 'Ё', 'Ж', 'З', 'И', 'Й', 'К', 'Л', 'М', 'Н', 'О', 'П', 'Р', 'С', 'Т', 'У', 'Ф', 'Х', 'Ц', 'Ч', 'Ш', 'Щ', 'Ъ', 'Ы', 'Ь', 'Э', 'Ю', 'Я', 'а', 'б', 'в', 'г', 'д', 'е', 'ё', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я');
		$lat = array('','-','-','','','I','u','i','e','E','i','','','','-','A', 'B', 'V', 'G', 'D', 'E', 'E', 'Gh', 'Z', 'I', 'Y', 'K', 'L', 'M', 'N', 'O', 'P', 'R', 'S', 'T', 'U', 'F', 'H', 'C', 'Ch', 'Sh', 'Sch', 'Y', 'Y', 'Y', 'E', 'Yu', 'Ya', 'a', 'b', 'v', 'g', 'd', 'e', 'e', 'gh', 'z', 'i', 'y', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'f', 'h', 'c', 'ch', 'sh', 'sch', 'y', 'y', 'y', 'e', 'yu', 'ya');
		$str = str_replace($rus, $lat, $str);
		
		//http://cn08183.tmweb.ru/dimoxody/dymohod-schiedel-permetr-%C3%98130-mm-dlya-nastennogo-montagha,-komplekt-10-mp,-seryy
		
		$rus = array(',','.','?', '&', '%', '/',  '--', '--');
		$lat = array('-');
		return str_replace($rus, $lat, $str);
	}

	public function no_parazit($str) {
		$rus = array('Агат', 'agate.ru');
		$lat = array('Roofer','roofer.ru');
		return str_replace($rus, $lat, $str);
	}

	
  //import prices and products
	public function importCategory( $data) {
		
		if($data['name'] == $this->main_category_name){
			return 0;
		}
		
        if ( $data['name'] != '') {
            
                
                $parent_id = isset($data['parent_id']) ? $data['parent_id'] : 0;
                $category_id = 0;
                $sort_order = 0;
                $name = trim($data['name']);
                $image = '';
				
				
                $r = $this->db->query( "SELECT * FROM `" . DB_PREFIX . "category` c
											LEFT JOIN `" . DB_PREFIX . "category_description` cd ON cd.category_id = c.category_id
											WHERE c.parent_id='".$data['parent_id']."' AND cd.name LIKE '".$data['name']."'
											AND cd.language_id=2");
				
				$top = 0;
				$style =0;
				$description='';
                if($r->num_rows){
                    $category_id = $r->row['category_id'];
                    $top = $r->row['top'];
                    $style = $r->row['style'];
					$description = $r->row['description'];
                }
                 
                $data = array(
                              'parent_id' => $parent_id,
                              'column' => '0',
                              'sort_order' => $sort_order,
                              'top' => $top,
                              'image' => $image,
                              'style' => $style,
                              'status' => '1',
                              'keyword' => strtolower($data['keyword']), //strtolower($this->translitArtkl($name)),
                              'category_description' => array(
                                    '1' => array(
                                                 'name' => $name,
                                                 'description' => $description,
                                                 'meta_title' => $data['meta_title'],
                                                 'meta_description' => $data['meta_title'],
                                                 'meta_keyword' => $data['meta_title'],
                                                 ),
                                    '2' => array(
                                                 'name' => $name,
                                                 'description' => $description,
                                                 'meta_title' => $data['meta_title'],
                                                 'meta_description' => $data['meta_title'],
                                                 'meta_keyword' => $data['meta_title'],
                                                 ),
                              ),
                        );
                
                $this->load->model('catalog/category');
                
                if($category_id == 0){
                    $category_id = $this->model_catalog_category->addCategory($data);
                }else{
                    $this->model_catalog_category->editCategory($category_id, $data);
                }
                
                $this->db->query("DELETE FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "'");
                $this->db->query("DELETE FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");
                $this->db->query("INSERT INTO " . DB_PREFIX . "category_to_store SET category_id = '" . (int)$category_id . "', store_id = '0'");
                $this->db->query("INSERT INTO " . DB_PREFIX . "category_to_layout SET category_id = '" . (int)$category_id . "', store_id = '0', layout_id = '3'");
            
            
        }
        
		return $category_id;
		
	}
	
	public function getLangs() {
		$r = $this->db->query( "SELECT language_id FROM `" . DB_PREFIX . "language`");
		return $r->rows;
		
	}
	
	public function importProduct( $dataIn) {
		
		$product_id = 0;
	
		if ( $dataIn['name'] != '') {
			
				$language = $this->getLangs();
             
				if($dataIn['model'] != ''){
					$r = $this->db->query( "SELECT p.product_id FROM `" . DB_PREFIX . "product` p
											WHERE p.model LIKE '".$dataIn['model']."' AND
												p.manufacturer_id = '".$dataIn['manufacturer_id']."'
											");
					
				}else{ 
					$r = $this->db->query( "SELECT p.product_id FROM `" . DB_PREFIX . "product` p
											LEFT JOIN `" . DB_PREFIX . "product_description` pd ON pd.product_id = p.product_id
											WHERE pd.name LIKE '".$dataIn['name']."' AND
												p.manufacturer_id = '".$dataIn['manufacturer_id']."'
											");
					
					$dataIn['model'] = md5($dataIn['name']);
				}
				
                if($r->num_rows){
                    $product_id = $r->row['product_id'];
                }
               
			   
			    
				$Description = array(
									'name'          => $dataIn['name'],
									'meta_h1'    	=> ($dataIn['meta_h1'] != '') ? $dataIn['meta_h1'] : $dataIn['name'],
									'meta_keyword'  => ($dataIn['meta_keyword'] != '') ? $dataIn['meta_keyword'] : $dataIn['name'],
									'meta_title'    => ($dataIn['meta_title'] != '') ? $dataIn['meta_title'] : $dataIn['name'],
									'meta_description' => ($dataIn['meta_description'] != '') ? $dataIn['meta_description'] : strip_tags(['description']),
									'description'   => ($dataIn['description'] != '') ? $dataIn['description'] : $dataIn['description'],
									'tag' 			=> ($dataIn['tag'] != '') ? $dataIn['tag'] : '',
									);
				
				$dataDescription = array();
				
				foreach($language as $lang){
					$dataDescription[$lang['language_id']] = $Description;
				}
				
				$product_attributes = array();
				foreach($dataIn['attributes'] as $attribute_id => $row){
					
					foreach($language as $lang){
						$product_attribute_description[$lang['language_id']]['text'] = $row['text'];
					}
					
					$product_attributes[] = array(
												  'name' => $row['name'],
												  'attribute_id' => (int)$attribute_id,
												  'product_attribute_description' => $product_attribute_description
												  );
				}
				
				
				$data = array(
							'model' => $dataIn['model'],
							'sku' => '',
							'upc' => '',
							'ean' => '',
							'jan' => '',
							'isbn' => '',
							'mpn' => '',
							'location' => '',
							'quantity' => $dataIn['quantity'],
							'minimum' => 1,
							'subtract' => 0,
							'stock_status_id' => $dataIn['stock_status_id'],
							'date_available' => date('Y-m-d H:i:s'),
							'manufacturer_id' => $dataIn['manufacturer_id'],
							'shipping' => 0,
							'price' => $dataIn['price'],
							'image' => $this->loadImage($dataIn['image']),
							'points' => 0,
							'weight' => 0,
							'weight_class_id' => 0,
							'length' => 0,
							'width' => 0,
							'height' => 0,
							'length_class_id' => 0,
							'status' => 1,
							'tax_class_id' => 0,
							'sort_order' => 0,
							'product_related' => $dataIn['related'],
							'product_description' => $dataDescription,
							'product_attribute' => $product_attributes,
							'product_category' => array($dataIn['category_id']),
							'keyword' => strtolower($dataIn['keyword']),
						);
				 
                
			    $this->load->model('catalog/product');
                
			    if($product_id == 0){
                    $product_id = $this->model_catalog_product->addProduct($data);
                }else{
                    $this->model_catalog_product->editProduct($product_id, $data);
                }
                
				if(isset($dataIn['image'])){
					$this->loadImage($dataIn['image']);
				}
				
                $this->db->query("DELETE FROM " . DB_PREFIX . "product_to_layout WHERE product_id = '" . (int)$product_id . "'");
                $this->db->query("DELETE FROM " . DB_PREFIX . "product_to_store WHERE product_id = '" . (int)$product_id . "'");
                $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_store SET product_id = '" . (int)$product_id . "', store_id = '0'");
                $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_layout SET product_id = '" . (int)$product_id . "', store_id = '0', layout_id = '2'");
            
            
        }
        
		return $product_id;
		
	}
	
	public function loadImage($image){
		
		$path = explode('/', $image);
		$image_name = array_pop($path);
		
		$full_image_path = DIR_IMAGE.'catalog/product/'.$image_name;
		$sql_image_path = 'catalog/product/'.$image_name;
		
		if (file_exists($full_image_path)) {
			return $sql_image_path;
		}
		
		$uploaddir = DIR_IMAGE.'catalog/product/';
		$Tdate = $this->DownloadFile($image);
	
		if (!$Tdate === null) {
			//return false;
		}else{
			//touch($uploaddir);
			
			if(file_put_contents($full_image_path, $Tdate)){
				return $sql_image_path;
			}
			
			return '';
			
		}
	}
	    
	/**
     * The function to download files
     *
     * @param string $url
     * @return mixed|null
     */
    public function DownloadFile($url){
		$s = $url;
		$i = parse_url($s); 
		$p = ''; 
		foreach(explode('/',trim($i['path'],'/')) as $v) {$p .= '/'.rawurlencode($v);} 
		$url = $i['scheme'].'://'.$i['host'].$p; 
	
	
		if (!extension_loaded('curl')) {
			return null;
		}

		$ch = curl_init();
	   
		curl_setopt_array(
			$ch,
			array(
				CURLOPT_AUTOREFERER => true,
				CURLOPT_FOLLOWLOCATION => true,
				CURLOPT_CONNECTTIMEOUT => 10,
				CURLOPT_TIMEOUT => 120,
				CURLOPT_URL => $url,
				CURLOPT_USERAGENT => 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.3',
				CURLOPT_RETURNTRANSFER => true,
				CURLOPT_HTTPHEADER => array(
					'Accept:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
					'Accept-Encoding:gzip, deflate, sdch',
					'Accept-Language:ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4',
					'Cache-Control:max-age=0',
					'Connection:keep-alive',
			)
			)
		);


		$data = curl_exec($ch);
		if (curl_errno($ch) != CURLE_OK) {
			return null;
		}

        return $data;
    }
	
	public function DownloadFileNoCode($url){
	
		if (!extension_loaded('curl')) {
				return null;
			}
		
			$ch = curl_init();
		   
			curl_setopt_array(
				$ch,
				array(
					CURLOPT_AUTOREFERER => true,
					CURLOPT_FOLLOWLOCATION => true,
					CURLOPT_CONNECTTIMEOUT => 10,
					CURLOPT_TIMEOUT => 120,
					CURLOPT_URL => $url,
					CURLOPT_USERAGENT => 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.3',
					CURLOPT_RETURNTRANSFER => true,
					CURLOPT_HTTPHEADER => array(
						'Accept:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
						'Accept-Encoding:gzip, deflate, sdch',
						'Accept-Language:ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4',
						'Cache-Control:max-age=0',
						'Connection:keep-alive',
				)
				)
			);
		
		
			$data = curl_exec($ch);
			if (curl_errno($ch) != CURLE_OK) {
				return null;
			}
		
			return $data;
    }

}
?>
