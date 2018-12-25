<?php
class ControllerExtensionPaymentLiqPay extends Controller {
	public function index() {
		$data['button_confirm'] = $this->language->get('button_confirm');

		$this->load->model('checkout/order');

		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

		$data['action'] = 'https://liqpay.com/?do=clickNbuy';

		$xml  = '<request>';
		$xml .= '	<version>1.2</version>';
		$xml .= '	<result_url>' . $this->url->link('checkout/success', '', true) . '</result_url>';
		$xml .= '	<server_url>' . $this->url->link('extension/payment/liqpay/callback', '', true) . '</server_url>';
		$xml .= '	<merchant_id>' . $this->config->get('liqpay_merchant') . '</merchant_id>';
		$xml .= '	<order_id>' . $this->session->data['order_id'] . '</order_id>';
		$xml .= '	<amount>' . $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false) . '</amount>';
		$xml .= '	<currency>' . $order_info['currency_code'] . '</currency>';
		$xml .= '	<description>' . $this->config->get('config_name') . ' ' . $order_info['payment_firstname'] . ' ' . $order_info['payment_address_1'] . ' ' . $order_info['payment_address_2'] . ' ' . $order_info['payment_city'] . ' ' . $order_info['email'] . '</description>';
		$xml .= '	<default_phone></default_phone>';
		$xml .= '	<pay_way>' . $this->config->get('liqpay_type') . '</pay_way>';
		$xml .= '</request>';

		$data['xml'] = base64_encode($xml);
		$data['signature'] = base64_encode(sha1($this->config->get('liqpay_signature') . $xml . $this->config->get('liqpay_signature'), true));

		return $this->load->view('extension/payment/liqpay', $data);
	}

	public function confirm() {
        
    $file = 'people.txt';
    $current = file_get_contents($file);
    $current .= $order_id." ftp://folkmoda/www/petro.bitte20.in.ua/catalog/controller/extension/payment/liqpay.php\n";
    $current .= $this->session->data['payment_method']['code']." ***\n";

		if ($this->session->data['payment_method']['code'] == 'liqpay') {
			$this->load->model('checkout/order');
    $current .= "status ***\n";
			$this->model_checkout_order->addOrderHistory($this->session->data['order_id'], 17);//$this->config->get('liqpay_order_status_id'));
		}
        
    file_put_contents($file, $current);
	
        
	}

	public function callback() {
		$xml = base64_decode($this->request->post['operation_xml']);
		$signature = base64_encode(sha1($this->config->get('liqpay_signature') . $xml . $this->config->get('liqpay_signature'), true));

		$posleft = strpos($xml, 'order_id');
		$posright = strpos($xml, '/order_id');

		$order_id = substr($xml, $posleft + 9, $posright - $posleft - 10);
		$p = simplexml_load_string($xml);

		$status_id = 17;//$this->config->get('liqpay_order_status_id');

        $file = 'people.txt';
		$current = file_get_contents($file);
		$current .= $order_id." ========================ОТВЕТ ПО ОПЛАТЕ============================ ".$xml."\n";
		//$current .= $this->request->post['signature']." = ".$signature."\n";
		$current .= $order_id." ".$this->request->post['signature']."\n";
	
    //Тут создать ИД статусов для назначения!
    
    //ТУТ ПРОИСХОДИТ ПОДТВЕРЖДЕНИЕ
        
		if ($signature == $this->request->post['signature']) {
			$this->load->model('checkout/order');
			if ($p->status == "success") {
				$status_id = 17; //$this->config->get('liqpay_order_success_status_id');
			} elseif ($p->status == "reversed") {
				$status_id = 18; //$this->config->get('liqpay_order_reversed_status_id');
			} elseif ($p->status == "processing") {
				$status_id = 15; //$this->config->get('liqpay_order_processing_status_id');
			} elseif ($p->status == "failure") {
				$status_id = 18; //$this->config->get('liqpay_order_failure_status_id');
			}
           
            $current .= "status +++ ".$p->status." -> $status_id=".$status_id."\n";
            
			$this->model_checkout_order->addOrderHistory($order_id, $status_id, '',1, 0);
		}
        
        file_put_contents($file, $current);
	
	}
}