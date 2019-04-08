
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>


<?php
//echo "<pre>";print_r(var_dump($fields));echo "</pre>";
?>



<table style="background:#ffffff;width:100%;padding:0;margin:0;font-family: Arial, 'Helvetica CY', 'Nimbus Sans L', sans-serif;">
  <tbody>
    <tr>
      <td>
        <center>
          <table style="width:750px;padding:0;margin:0;border-spacing:0px;background:url(http://cn08183.tmweb.ru/email-img/bg2.jpg) top left no-repeat">
            <tbody>
              <tr>
                <td style="width:200px;padding:10px;height: 80px;"></td>
                <td style="width:250px;padding:10px;font-size:20px;text-align:center;color:#000000">г. Москва, Киевское шоссе, 22-й километр, дв4с1кА</td>
                <td style="width:250px;padding:2px;font-size:20px;text-align:right;color:#000000"><a href="tel:84952350330" style="text-decoration:none;color:black" target="_blank">Тел.: 8 (495) 235-03-30</a><br></td>
              </tr>
              <tr>
                <td colspan="3" style="text-align:right;width:750px;line-height: 40px;font-size:30px;color:#fff;text-align:center;font-weight:bold;text-transform: uppercase;padding-bottom: 15px;">
                  <br>
                  <?php echo $header; ?>
                  <br>
                </td>
              </tr>
              <tr>
                <td colspan="3" style="width:750px;font-size:36px;color:#fff;text-align:center;font-weight:bold">
                  <center>
                    <table style="width:335px;padding:1;margin:0;border-spacing:0px;background:#000000">
                      <tbody>
                        <tr>
                          <td style="width:335px;font-size:20px;color: #fbbe18;text-align:center;font-weight:bold">
                            <br>Цена
                            <br>
                            <br>
                          </td>
                        </tr>
                        <tr>
                          <td style="width:335px;font-size:30px;color: #fbbe18;text-align:center;font-weight:bold;padding-bottom: 10px;"><?php echo $total; ?><br></td>
                        </tr>
                      </tbody>
                    </table>
                  </center>
                </td>
              </tr>
            </tbody>
          </table>

          <table style="width:750px;padding:0;margin:0px 0 0 0;border-spacing:0px;background:#ffffff">
            <tbody>
              <tr>
                <td style="width:750px">
                  <center>
                    <table style="width:335px;padding:0;border-spacing:0px;background:#fbbe18">
                      <tbody>
                        <tr>
                          <td style="width:335px;font-size:16px;color:#000000;text-align:left;padding:5px 0 0 40px;text-transform: uppercase;"><br>За эти деньги вы получаете:
                              <br>
                          </td>
                        </tr>
                        <tr>
                          <td style="width:335px;font-size:16px;color:#000000;text-align:left;padding:5px 0 0 40px"><span style="display: inline-block;width: 11px;height: 11px;border-radius: 12px;background-color: #000;margin-right: 10px;"></span>Гарантия на работы 15 лет
                              <br>
                          </td>
                        </tr>
                        <tr>
                          <td style="width:335px;font-size:16px;color:#000000;text-align:left;padding:5px 0 0 40px"><span style="display: inline-block;width: 11px;height: 11px;border-radius: 12px;background-color: #000;margin-right: 10px;"></span>Видеонаблюдение за производством работ на объекте
                              <br>
                          </td>
                        </tr>
                        <tr>
                          <td style="width:335px;font-size:16px;color:#000000;text-align:left;padding:5px 0 0 40px"><span style="display: inline-block;width: 11px;height: 11px;border-radius: 12px;background-color: #000;margin-right: 10px;"></span>Поэтапная сдача работ
                              <br>
                          </td>
                        </tr>
                        <tr>
                          <td style="width:335px;font-size:16px;color:#000000;text-align:left;padding:5px 0 0 40px"><span style="display: inline-block;width: 11px;height: 11px;border-radius: 12px;background-color: #000;margin-right: 10px;"></span>Технический контроль за каждым этапом
                              <br>
                          </td>
                        </tr>
                        <tr>
                          <td style="width:335px;font-size:16px;color:#000000;text-align:left;padding:5px 0 0 40px"><span style="display: inline-block;width: 11px;height: 11px;border-radius: 12px;background-color: #000;margin-right: 10px;"></span>3D проект кровли
                              <br>
                          </td>
                        </tr>
                        <tr>
                          <td style="width:335px;font-size:16px;color:#000000;text-align:left;padding:5px 0 0 40px"><span style="display: inline-block;width: 11px;height: 11px;border-radius: 12px;background-color: #000;margin-right: 10px;"></span>Специалисты только граждане РФ
                              <br>
                              <br>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <table style="width:750px;padding:0;border-spacing:0px">
                      <tbody>
                        <tr>
                          <td style="width:750px;font-size:36px;text-align:center;padding:0px 0 0 40px;font-weight:bold;text-transform: uppercase;">
                              <br>Расчёт цен
                              <br> </td>
                        </tr>
                      </tbody>
                    </table>
                    <br>
                    <table style="width:700px;padding:0;border-spacing:0px;font-size:14px">
                      <tbody>
                          <tr style="background:#fbbe18;color:#000000;">
                              <th style="text-align: left;padding-left: 10px">№</th>
                              <th style="text-align: left;width:200px">Наименование</th>
                              <th style="text-align: left;padding:10px 0px 10px 0px">Ед. изм.</th>
                              <th style="text-align: left;">Кол-во</th>
                              <th style="text-align: left;">Стоимость</th>
                              <th style="text-align: left;padding-right: 10px">Сумма</th>
                          </tr>
						  
						  <?php foreach($fields as $sub_group_id => $rows){ ?>
						  <tr>
                              <td></td>
                              <td style="font-weight:bold;padding:10px 0px 10px 0px"><br><br><?php echo $sub_groups[$sub_group_id]; ?></td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td style="padding-right: 10px"></td>
                          </tr>
							<?php $i = 1; ?>
							<?php foreach($rows as $row){ ?>
							  <tr>
								  <td style="padding:10px 0px 10px 10px"><span class="il"><?php echo $i++ ;?></span></td>
								  <td style="width:200px"><?php echo $row['name']; ?></td>
								  
								  <?php if($row['mera'] == 'м2'){ ?>
									<td>м<sup>2</sup></td>
								  <?php }else{ ?>
									<td><?php echo $row['mera']; ?></td>
								  <?php } ?>
								  <td><?php echo $row['quantity']; ?></td>
								  <td><?php echo $row['price']; ?></td>
								  <td style="padding-right: 10px"><?php echo $row['total']; ?></td>
							  </tr>
							<?php } ?>
						<?php } ?>
						
					   
					      <!--tr>
                              <td style="padding:10px 0px 10px 10px">2</td>
                              <td style="width:200px">Планка конька плоского 150х150х2000</td>
                              <td>шт</td>
                              <td>19</td>
                              <td>460</td>
                              <td style="padding-right: 10px">8740</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">3</td>
                              <td style="width:200px">Планка карнизная 100х69х2000</td>
                              <td>шт</td>
                              <td>33</td>
                              <td>224</td>
                              <td style="padding-right: 10px">7392</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">4</td>
                              <td style="width:200px">Планка торцевая 95х120х2000</td>
                              <td>шт</td>
                              <td>33</td>
                              <td>272</td>
                              <td style="padding-right: 10px">8976</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">5</td>
                              <td style="width:200px">Планка ендовы 76х76х2000</td>
                              <td>шт</td>
                              <td>7</td>
                              <td>368</td>
                              <td style="padding-right: 10px">2576</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">6</td>
                              <td style="width:200px">Планка примыкания 250х147х2000</td>
                              <td>шт</td>
                              <td>5</td>
                              <td>368</td>
                              <td style="padding-right: 10px">1840</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">7</td>
                              <td style="width:200px">Саморезы кровельные 35мм</td>
                              <td>шт</td>
                              <td>1074</td>
                              <td>2.5</td>
                              <td style="padding-right: 10px">2685</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">8</td>
                              <td style="width:200px">Саморезы кровельные 75мм</td>
                              <td>шт</td>
                              <td>358</td>
                              <td>3.9</td>
                              <td style="padding-right: 10px">1396.2</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">9</td>
                              <td style="width:200px">Пленка гидроизоляционная Д 110 Стандарт (<span class="il">1</span>.5х50 м)</td>
                              <td>шт</td>
                              <td>3</td>
                              <td>2700</td>
                              <td style="padding-right: 10px">8100</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">10</td>
                              <td style="width:200px">Пленка пароизоляционная Н 96 Сильвер (<span class="il">1</span>.5х50 м)</td>
                              <td>шт</td>
                              <td>3</td>
                              <td>1475</td>
                              <td style="padding-right: 10px">4425</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">11</td>
                              <td style="width:200px">Утеплитель Роквул (Rockwool) Лайт Баттс Скандик (50 мм, 5,76 кв.м.)</td>
                              <td>шт</td>
                              <td>35</td>
                              <td>480</td>
                              <td style="padding-right: 10px">16800</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">12</td>
                              <td style="width:200px">Пиломатериал</td>
                              <td>шт</td>
                              <td>7.16</td>
                              <td>7500</td>
                              <td style="padding-right: 10px">53700</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">13</td>
                              <td style="width:200px">Антисептик Сенеж Био трудновымываемый для жилых объектов <span class="il">1</span> кг</td>
                              <td>шт</td>
                              <td>44.75</td>
                              <td>100</td>
                              <td style="padding-right: 10px">4475</td>
                          </tr>
                          <tr>
                              <td></td>
                              <td style="font-weight:bold;padding:10px 0px 10px 0px"><br><br>Демонтаж</td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td style="padding-right: 10px"></td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px"><span class="il">1</span></td>
                              <td style="width:200px">Демонтаж кровельного покрытия (шифер, м.ч., профлист и т.д.)</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>100</td>
                              <td style="padding-right: 10px">17900</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">2</td>
                              <td style="width:200px">Демонтаж старой обрешетки</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>65</td>
                              <td style="padding-right: 10px">11635</td>
                          </tr>
                          <tr>
                              <td></td>
                              <td style="font-weight:bold;padding:10px 0px 10px 0px"><br><br>Монтаж</td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td style="padding-right: 10px"></td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px"><span class="il">1</span></td>
                              <td style="width:200px">Антисептирование пиломатериалов</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>45</td>
                              <td style="padding-right: 10px">8055</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">2</td>
                              <td style="width:200px">Монтаж стропильной системы</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>450</td>
                              <td style="padding-right: 10px">80550</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">3</td>
                              <td style="width:200px">Устройство пароизоляции</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>70</td>
                              <td style="padding-right: 10px">12530</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">4</td>
                              <td style="width:200px">Монтаж черновой обрешетки</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>70</td>
                              <td style="padding-right: 10px">12530</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">5</td>
                              <td style="width:200px">Укладка утеплителя 50мм</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>50</td>
                              <td style="padding-right: 10px">8950</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">6</td>
                              <td style="width:200px">Устроийство гидроизоляции, ветрозащиты</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>70</td>
                              <td style="padding-right: 10px">12530</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">7</td>
                              <td style="width:200px">Монтаж контробрешетки</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>65</td>
                              <td style="padding-right: 10px">11635</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">8</td>
                              <td style="width:200px">Монтаж шаговой обрешетки</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>90</td>
                              <td style="padding-right: 10px">16110</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">9</td>
                              <td style="width:200px">Монтаж металлочерепицы с доборными элементами</td>
                              <td>м<sup>2</sup></td>
                              <td>179</td>
                              <td>350</td>
                              <td style="padding-right: 10px">62650</td>
                          </tr>
                          <tr>
                              <td></td>
                              <td style="font-weight:bold;padding:10px 0px 10px 0px"><br><br>Услуги</td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td style="padding-right: 10px"></td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px"><span class="il">1</span></td>
                              <td style="width:200px">Накладные расходы</td>
                              <td>шт</td>
                              <td><span class="il">1</span></td>
                              <td>5000</td>
                              <td style="padding-right: 10px">5000</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">2</td>
                              <td style="width:200px">Расходные материалы</td>
                              <td>шт</td>
                              <td><span class="il">1</span></td>
                              <td>18043</td>
                              <td style="padding-right: 10px">18043</td>
                          </tr>
                          <tr>
                              <td style="padding:10px 0px 10px 10px">3</td>
                              <td style="width:200px">Доставка</td>
                              <td>шт</td>
                              <td><span class="il">1</span></td>
                              <td>10000</td>
                              <td style="padding-right: 10px">10000</td>
                          </tr-->
                          <tr>
                              <td style="padding:10px 0px 10px 10px"></td>
                              <td style="font-weight:bold;padding:10px 0px 10px 0px"><br><br>Итого</td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td style="font-weight:bold;width:60px;padding-right: 10px"><br><br><?php echo $total; ?></td>
                          </tr>
                          <tr>
                            <td style="min-width: 40px;"></td>
                            <td colspan="5" style="padding:10px 0px 10px 0px"><br><br>* В таблице указана средняя стоимость на данный объем работ. Для точного расчет необходим выезд специалиста на ваш объект.</td>
                         </tr>
                      </tbody>
                    </table>
                    <br>
                    <table style="width:750px;padding:0;margin:0;border-spacing:0px">
                      <tbody>
                        <tr>
                          <td style="width:750px;font-weight:900;">
                            <center>
                                  <br>
                                  <br><span style="font-size:36px">ВАС БУДЕТ ОСЛУЖИВАТЬ</span>
                                  <br>
                                  <br><img src="http://cn08183.tmweb.ru/email-img/manager.jpg" width="270px">
                                  <br>
                                  <br><span style="font-weight:700;font-size:18px">Анна</span>
                                  <br><span style="font-weight:normal;font-size:18px">Менеджер отдела продаж</span>
                                  <br>
                                  <br><a href="tel:84952350330" style="font-size: 30px;text-decoration:none;color:#000000" target="_blank">8 (495) 235-03-30</a>
                                  <br>
                                  <br><a href="tel:84952350330" style="width:370px;margin:15px auto;background:#fbbe18;border-radius:5px;color:#000;text-align:center;height:59px;line-height:57px;font-weight: normal;font-size:18px;text-decoration:none;padding:20px;text-transform: uppercase;" target="_blank">Уточнить цену работ</a>
                                  <br>
                                  <br>
                                  <br>
                                  <br>
                                  <br><span style="font-weight:900;font-size:30px;text-transform: uppercase;">Примеры работ</span>
                                  <br>
                                  <br><img src="http://cn08183.tmweb.ru/email-img/work3.jpg" style="width:750px;margin:10px 0 0 0" tabindex="0">
                                  <br>
                                  <br>
                                  <table style="width:690px;padding:0;margin:0;border-spacing:0px;font-size: 18px;font-weight: 300;line-height: 15px;">
                                    <tbody>
                                      <tr>
                                        <td><img src="http://cn08183.tmweb.ru/email-img/ico-time.png"></td>
                                        <td>Срок: 10 дней</td>
                                        <td><img src="http://cn08183.tmweb.ru/email-img/ico-m2.png"></td>
                                        <td>Площадь: 130 м2</td>
                                        <td><img src="http://cn08183.tmweb.ru/email-img/ico-location.png"></td>
                                        <td>Место: г.Москва</td>
                                      </tr>
                                    </tbody>
                                  </table>

                                  <br>
                                  <br>
                                  <br><span style="font-weight:900;font-size:30px;text-transform: uppercase;">Отзывы</span>
                                  <br>
                                  <br><img src="http://cn08183.tmweb.ru/email-img/work2.jpg" style="width:750px;margin:10px 0 0 0" tabindex="0">
                                  <br>
                                  <table style="width:750px;padding:0;margin:0px 0 0 0;border-spacing:0px">
                                      <tbody>
                                          <tr>
                                              <td style="font-size:18px;font-weight: 300; padding:0;margin:0;border-spacing:0px;padding:15px 30px 0">12.07.2018    Автор: Татьяна Викторовна</td>
                                          </tr>
                                          <tr>
                                            <td style="font-size:18px;font-weight: 300; padding:0;margin:0;border-spacing:0px;padding:15px 30px 0">На пенсии решили с мужем приобрести дом в деревне с участком под огород и сад. При покупке не обратили внимание на крышу, когда пошли дожди, крыша стала течь. Обратились в компанию «Руфер». Приехала бригада из трех человек, со старшим договорились об условиях, цена нас устроила. Через 2 дня ребята приехали, в течение 6 часов перекрыли крышу. Стало сухо и тепло. Спасибо администрации и специалистам фирмы!</td>
                                          </tr>
                                      </tbody>
                                  </table>
                                  <br>
                                  <br>
                                  <br>
                                  <br><span style="font-weight:900;font-size:30px;text-transform: uppercase;">Остались вопросы?</span>
                                  <br>
                                  <br><img src="http://cn08183.tmweb.ru/email-img/manager.jpg" width="270px">
                                  <br>
                                  <br><span style="font-weight:700;font-size:18px">Анна</span>
                                  <br><span style="font-weight:normal;font-size:18px">Менеджер отдела продаж</span>
                                  <br>
                                  <br><a href="tel:84952350330" style="font-size: 30px;text-decoration:none;color:#000000" target="_blank">8 (495) 235-03-30</a>
                                  <br>
                                  <br><a href="tel:84952350330" style="width:370px;margin:15px auto;background:#fbbe18;border-radius:5px;color:#000;text-align:center;height:59px;line-height:57px;font-weight: normal;font-size:18px;text-decoration:none;padding:20px;text-transform: uppercase;" target="_blank">Уточнить цену работ</a>
                                  <br>
                                  <br>
                                  <br><span style="font-weight:bold;font-size:18px">В ответ на это письмо напишите ваш контактный номер и мы вам перезвоним!</span>
                                  <br>
                                  <br>
                                  <br>
                                  <br>
                                </center>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <br>
                    <br>
                  </center>
                </td>
              </tr>
            </tbody>
          </table>
          <table style="width:750px;padding:0;margin:0;border-spacing:0px;background:#000000;background:url(http://cn08183.tmweb.ru/email-img/bg-f.png) top left no-repeat">
            <tbody>
              <tr>
                <td width="200" style="padding:10px 0"></td>
                <td width="330" style="padding:20px 0 0;text-align:left;color:#000000;font-size: 20px;">
                    г. Москва, Киевское шоссе, 22-й километр, дв4с1кА
                    <br>
                    <br>
                </td>
                <td width="220" style="padding:40px 0 0;font-size:20px;text-align:center"><a href="tel:84952350330" style="text-decoration:none;color:black;font-weight:900" target="_blank">8 (495) 235-03-30</a>
                    <br>
                    <br>
                    <br> </td>
              </tr>
              <tr>
                <td style="padding:0"></td>
                <td style="padding:0;text-align:left"><br><br><a href="mailto:info@rooferr.ru" target="_blank" style="font-size: 25px;font-weight: 900;color: #000000;">info@rooferr.ru</a><br><br><br></td>
                <td style="padding:0;text-align:center"><br>
                  <a href="https://www.facebook.com/Руфер-2013173762310831" target="_blank" data-saferedirecturl="https://www.google.com/url?q=http://www.facebook.com/"><img src="http://cn08183.tmweb.ru/email-img/fb.png" style="padding-right: 10px" height="35px"></a>
                  <a href="https://vk.com/roofferr" target="_blank" data-saferedirecturl="https://www.google.com/url?q=http://www.vk.com/"><img src="http://cn08183.tmweb.ru/email-img/vk.png" style="padding-right: 10px" height="35px"></a>
                  <a href="https://www.instagram.com/roofer_ru/" target="_blank" data-saferedirecturl="https://www.google.com/url?q=http://www.instagram.com/"><img src="http://cn08183.tmweb.ru/email-img/inst.png" style="padding-right: 10px" height="35px"></a>
                  <a href="http://t.me/Rooferr_bot" target="_blank" data-saferedirecturl="https://www.google.com/url?q=http://t.me/"><img src="http://cn08183.tmweb.ru/email-img/tm.png" style="padding-right: 10px" height="35px"></a>
                </td>
              </tr>
            </tbody>
          </table>
        </center>
      </td>
    </tr>
  </tbody>
</table>
















</body>
</html>


