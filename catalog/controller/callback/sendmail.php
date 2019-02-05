<?php
if (isset($_POST['phone']) and $_POST['phone'] != '' and isset($_POST['name']) and $_POST['name'] != '') {
	function clean_user_data($arr) {
		foreach ($arr as &$str) {
			$str = trim($str);
			$str = strip_tags($str);
			$str = htmlspecialchars($str);
		}
		return $arr;
	}
	
	$_POST = clean_user_data($_POST);
	
	$mail_bcc = $mail_to = $mail_from = 'folder.list@gmail.com';
	
	//echo '<pre>'; printf(var_dump($_POST));
	//die();
	
	if(isset($_POST['customer_price'])){
		
		$mail_subject = 'Торговаться!';
	
		$mail_message = '
			<html>
				<head>
					<title>'.$mail_subject.'</title>
				</head>
				<body>
					Товар: <b>'.$_POST['product'].'</b><br>
					Кол-во: <b>'.$_POST['value'].'</b><br>
					Цена: <b>'.$_POST['price'].'</b> руб<br>
					Сумма: <b>'.((int)$_POST['price'] * (int)$_POST['value']).'</b> руб<br>
					
					<b>Торгуется</b><br>
					Цена клиента: <b>'.$_POST['customer_price'].'</b> руб<br>
					Разница: <b>'.(((int)$_POST['price'] * (int)$_POST['value']) - (int)$_POST['customer_price']).'</b> руб<br><br>
					
					<b>Контактные данные</b><br>
					Имя: <b>'.$_POST['name'].'</b><br>
					Телефон: <b>'.$_POST['phone'].'</b><br>
					E-mail: <b>'.$_POST['email'].'</b><br>
					Сообщение:<br><b>'.$_POST['comment'].'</b>
				</body>
			</html>';
	
		
	}else{
		
		$mail_subject = 'Новый заказ';
	
		$mail_message = '
			<html>
				<head>
					<title>'.$mail_subject.'</title>
				</head>
				<body>
					Товар: <b>'.$_POST['product'].'</b><br>
					Кол-во: <b>'.$_POST['value'].'</b><br>
					Цена: <b>'.$_POST['price'].'</b> руб<br>
					Сумма: <b>'.((int)$_POST['price'] * (int)$_POST['value']).'</b> руб<br>
					
					<b>Контактные данные</b><br>
					Имя: <b>'.$_POST['name'].'</b><br>
					Телефон: <b>'.$_POST['phone'].'</b><br>
					E-mail: <b>'.$_POST['email'].'</b><br>
					Сообщение:<br><b>'.$_POST['comment'].'</b>
					</body>
			</html>';
	}
	
	$headers  = 'MIME-Version: 1.0'."\r\n";
	$headers .= 'Content-type: text/html; charset=utf-8'."\r\n";
	$headers .= 'From: '.$mail_from."\r\n";
	$headers .= 'BCC: '.$mail_bcc."\r\n";
	$headers .= 'X-Mailer: PHP/'.phpversion();
	
	
	if (mail($mail_to, $mail_subject, $mail_message, $headers)) {
		$json['success'] = 'Сообщение отправлено.';
	} else {
		$json['error'] = 'Ошибка отправки сообщения.';
	}
} else {
	$json['error'] = 'Неверно заполнены контактные данные.';
}

echo json_encode($json);

