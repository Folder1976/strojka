<div class="col-md-12">
  <div class="section-title">Онлайн калькулятор</div>
  <div class="section-subtitle text-gray">За несколько минут узнаете стоимость работ и получите<br>индвидуальный расчет вашего объекта</div>

  <div id="calc" class="calc">
    <div class="tabs">
      <ul class="tabs__links">
        <li class="tab__link is-active" data-tab="tab-1">
          <svg class="icon icon-calc-tab">
            <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#roof-works"></use>
          </svg>
          <span>Калькулятор кровли</span>
        </li>
        <li class="tab__link" data-tab="tab-2">
          <svg class="icon icon-calc-tab">
            <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#gully"></use>
          </svg>
          <span>Водосточные системы</span>
        </li>
        <li class="tab__link" data-tab="tab-3">
          <svg class="icon icon-calc-tab">
            <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#roof-binder"></use>
          </svg>
          <span>Калькулятор софитов</span>
        </li>
      </ul>
        
      <div id="tab-1" class="tab__content is-active" data-step="1">
        <form action="" method="post">

          <div class="calc__step-1">
            <div class="row">
              <div class="col-md-12">
                <div class="calc__title"><b>Шаг №1</b> параметры объекта</div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">тип кровли</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div class="radio-btn-group">
                      <div class="radio-btn">
                        <input type="radio" id="c1-type-roof-1" name="c1-type-roof" value="1" checked>
                        <label for="c1-type-roof-1">металочерепица</label>
                      </div>
                      <div class="radio-btn">
                        <input type="radio" id="c1-type-roof-2" name="c1-type-roof" value="2">
                        <label for="c1-type-roof-2">мягкая кровля</label>
                      </div>
                    </div>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">общая площадь кровли</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div id="js-range-area" class="js-range" data-units="м<sup>2</sup>" data-min="4" data-max="1000" data-value="100">
                      <div class="ui-slider-handle"><span>0</span></div>
                      <input type="hidden" name="c1-area">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase">
                    <a href="#c1-add-options" class="js-toggle toggle-link" data-toggle-text="Свернуть расширенные настройки">Развернуть расширенные настройки</a>
                  </div>
                </div>

                <div id="c1-add-options" class="calc__add-options" style="display: none;">
                  <div class="calc__row">
                    <div class="calc__col calc__col--l">
                      <div class="calc__col-title">Метраж конька</div>
                    </div>
                    <div class="calc__col calc__col--c">
                      <div id="id-length-k" class="js-range" data-units="м.п." data-min="4" data-max="1000" data-value="16">
                        <div class="ui-slider-handle"><span>0</span></div>
                        <input type="hidden" name="c1-length-k">
                      </div>
                    </div>
                    <div class="calc__col calc__col--r calc__col--ase"></div>
                  </div>

                  <div class="calc__row">
                    <div class="calc__col calc__col--l">
                      <div class="calc__col-title">Метраж карнизов</div>
                    </div>
                    <div class="calc__col calc__col--c">
                      <div id="id-length-curtain" class="js-range" data-units="м.п." data-min="4" data-max="1000" data-value="28">
                        <div class="ui-slider-handle"><span>0</span></div>
                        <input type="hidden" name="с1-length-curtain">
                      </div>
                    </div>
                    <div class="calc__col calc__col--r calc__col--ase"></div>
                  </div>

                  <div class="calc__row">
                    <div class="calc__col calc__col--l">
                      <div class="calc__col-title">Метраж торцевых планок</div>
                    </div>
                    <div class="calc__col calc__col--c">
                      <div id="id-length-tp" class="js-range" data-units="м.п." data-min="4" data-max="1000" data-value="28">
                        <div class="ui-slider-handle"><span>0</span></div>
                        <input type="hidden" name="с1-length-tp">
                      </div>
                    </div>
                    <div class="calc__col calc__col--r calc__col--ase"></div>
                  </div>

                  <div class="calc__row">
                    <div class="calc__col calc__col--l">
                      <div class="calc__col-title">Метраж планок ендовы</div>
                    </div>
                    <div class="calc__col calc__col--c">
                      <div id="id-length-endov" class="js-range" data-units="м.п." data-min="4" data-max="1000" data-value="6">
                        <div class="ui-slider-handle"><span>0</span></div>
                        <input type="hidden" name="с1-length-endov">
                      </div>
                    </div>
                    <div class="calc__col calc__col--r calc__col--ase"></div>
                  </div>

                  <div class="calc__row">
                    <div class="calc__col calc__col--l">
                      <div class="calc__col-title">Метраж планок примыкания</div>
                    </div>
                    <div class="calc__col calc__col--c">
                      <div id="id-length-pp" class="js-range" data-units="м.п." data-min="4" data-max="1000" data-value="4">
                        <div class="ui-slider-handle"><span>0</span></div>
                        <input type="hidden" name="с1-length-pp">
                      </div>
                    </div>
                    <div class="calc__col calc__col--r calc__col--ase"></div>
                  </div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">утепление</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div class="js-range" data-units="м.м." data-min="0" data-max="200" data-value="50" data-step="50">
                      <div class="ui-slider-handle"><span>0</span></div>
                      <input type="hidden" name="с1-heat">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c text-left">
                    <div>
                      <input class="checkbox" type="checkbox" id="c1-ch1" name="c1-ch1" value="1" checked>
                      <label for="c1-ch1">Монтаж стропильной системы</label>
                    </div>

                    <div>
                      <input class="checkbox" type="checkbox" id="c1-ch2" name="c1-ch2" value="1">
                      <label for="c1-ch2">Пароизоляция</label>
                    </div>

                    <div>
                      <input class="checkbox" type="checkbox" id="c1-ch3" name="c1-ch3" value="1">
                      <label for="c1-ch3">Гидроизоляция</label>
                    </div>

                    <div>
                      <input class="checkbox" type="checkbox" id="c1-ch4" name="c1-ch4" value="1">
                      <label for="c1-ch4">Демонтаж старой обрешетки</label>
                    </div>

                    <div>
                      <input class="checkbox" type="checkbox" id="c1-ch5" name="c1-ch5" value="1">
                      <label for="c1-ch5">Демонтаж старой кровли</label>
                    </div>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c">
                    <button class="btn btn--w100 js-next-step">следующий шаг  ></button>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase"></div>
                </div>

              </div>
            </div>
          </div>  <!-- /calc__step-1 -->

          <div class="calc__step-2" style="display: none;">
            <div class="row">
              <div class="col-md-12">
                <div class="calc__title"><b>Шаг №2</b> стоимость</div>

                <p>
                  <b>ВАШЕ ПРЕДЛОЖЕНИЕ ГОТОВО!</b>
                  <br>
                  По вашим данным, стоимость работ и материалов составляет
                </p>

                <div class="calc__total-sum js-c1-total">32885.60Р</div>
                <p>Получите подробную смету<br>и индивидуальное предложение на ваш E-mail</p>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c">
                    <br>
                    <div class="calc__email-input">
                      <input type="email" placeholder="E-mail" name="email">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <button class="btn btn--w100 btn--transparent js-prev-step"><  Назад</button>
                  </div>
                  <div class="calc__col calc__col--c">
                    <button class="btn btn--w100 js-next-step">следующий шаг  ></button>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>
              </div>
            </div>
          </div>  <!-- /calc__step-2 -->

          <div class="calc__step-3" style="display: none;">
            <div class="row">
              <div class="col-md-12">
                <div class="calc__title"><b>Шаг №3</b> Ваше предложение</div>

                <br>
                <br>
                <br>

                <p>
                  <b>Ваше специальное предложение уже готово!</b><br>
                  ПРОВЕРЬТЕ СВОЮ ПОЧТУ.
                </p>

                <br>
                <br>
                <br>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c">
                    <button class="btn btn--w100 js-prev-step"><  Назад</button>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>

              </div>
            </div>
          </div>  <!-- /calc__step-3 -->

        </form>
      </div>  <!-- /tab-1 -->



      <div id="tab-2" class="tab__content" data-step="1">
        <form action="" method="post">
          <div class="calc__step-1">
            <div class="row">
              <div class="col-md-12">

                <div class="calc__title"><b>шаг №1</b> параметры объекта</div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">тип кровли</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div class="radio-btn-group">
                      <div class="radio-btn">
                        <input type="radio" id="c2-type-roof-1" name="c2-type-roof" value="1" checked>
                        <label for="c2-type-roof-1">металл</label>
                      </div>
                      <div class="radio-btn">
                        <input type="radio" id="c2-type-roof-2" name="c2-type-roof" value="2">
                        <label for="c2-type-roof-2">ПВХ</label>
                      </div>
                    </div>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c text-left">
                    <div>
                      <input class="checkbox" type="checkbox" id="c2-ch1" name="c2-ch1" value="1" checked>
                      <label for="c2-ch1">Демонтаж старой системы</label>
                    </div>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">Длина карниза крыши</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div class="js-range" data-units="м.п." data-min="10" data-max="150" data-value="20">
                      <div class="ui-slider-handle"><span>0</span></div>
                      <input type="hidden" name="с2-length-eaves">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">Высота до карниза крыши</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div class="js-range" data-units="м.п." data-min="2" data-max="25" data-value="3">
                      <div class="ui-slider-handle"><span>0</span></div>
                      <input type="hidden" name="с2-height">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">Кол-во водосточных стояков</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div class="js-range" data-units="шт." data-min="1" data-max="10" data-value="4">
                      <div class="ui-slider-handle"><span>0</span></div>
                      <input type="hidden" name="с2-count-drainpipe">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c">
                    <button class="btn btn--w100 js-next-step">следующий шаг  ></button>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>
              </div>
            </div>
          </div>  <!-- /calc__step-1 -->

          <div class="calc__step-2" style="display: none;">
            <div class="row">
              <div class="col-md-12">
                <div class="calc__title"><b>Шаг №2</b> стоимость</div>

                <p>
                  <b>ВАШЕ ПРЕДЛОЖЕНИЕ ГОТОВО!</b>
                  <br>
                  По вашим данным, стоимость работ и материалов составляет
                </p>

                <div class="calc__total-sum js-c1-total">32885.60Р</div>
                <p>Получите подробную смету<br>и индивидуальное предложение на ваш E-mail</p>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c">
                    <br>
                    <div class="calc__email-input">
                      <input type="email" placeholder="E-mail" name="email">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <button class="btn btn--w100 btn--transparent js-prev-step"><  Назад</button>
                  </div>
                  <div class="calc__col calc__col--c">
                    <button class="btn btn--w100 js-next-step">следующий шаг  ></button>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>
              </div>
            </div>
          </div>  <!-- /calc__step-2 -->

          <div class="calc__step-3" style="display: none;">
            <div class="row">
              <div class="col-md-12">
                <div class="calc__title"><b>Шаг №3</b> Ваше предложение</div>

                <br>
                <br>
                <br>

                <p>
                  <b>Ваше специальное предложение уже готово!</b><br>
                  ПРОВЕРЬТЕ СВОЮ ПОЧТУ.
                </p>

                <br>
                <br>
                <br>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c">
                    <button class="btn btn--w100 js-prev-step"><  Назад</button>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>

              </div>
            </div>
          </div>  <!-- /calc__step-3 -->
        </form>
      </div>  <!-- /tab-2 -->

      <div id="tab-3" class="tab__content" data-step="1">
        <form action="" method="post">
          <div class="calc__step-1">
            <div class="row">
              <div class="col-md-12">
                <div class="calc__title"><b>шаг №1</b> параметры объекта</div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">тип кровли</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div class="radio-btn-group">
                      <div class="radio-btn">
                        <input type="radio" id="c3-type-roof-1" name="c3-type-roof" value="1" checked>
                        <label for="c3-type-roof-1">металл</label>
                      </div>
                      <div class="radio-btn">
                        <input type="radio" id="c3-type-roof-2" name="c3-type-roof" value="2">
                        <label for="c3-type-roof-2">ПВХ</label>
                      </div>
                    </div>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">Общая длина свеса кровли</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div class="js-range" data-units="м.п." data-min="5" data-max="125" data-value="20">
                      <div class="ui-slider-handle"><span>0</span></div>
                      <input type="hidden" name="с3-length-roof">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <div class="calc__col-title">Длина свеса</div>
                  </div>
                  <div class="calc__col calc__col--c">
                    <div class="js-range" data-units="м.п." data-min="0.1" data-max="2" data-value="0.5" data-step="0.1">
                      <div class="ui-slider-handle"><span>0</span></div>
                      <input type="hidden" name="с3-length-overhang">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r calc__col--ase"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c">
                    <button class="btn btn--w100 js-next-step">следующий шаг  ></button>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>
              </div>
            </div>
          </div>  <!-- /calc__step-1 -->

          <div class="calc__step-2" style="display: none;">
            <div class="row">
              <div class="col-md-12">
                <div class="calc__title"><b>Шаг №2</b> стоимость</div>

                <p>
                  <b>ВАШЕ ПРЕДЛОЖЕНИЕ ГОТОВО!</b>
                  <br>
                  По вашим данным, стоимость работ и материалов составляет
                </p>

                <div class="calc__total-sum js-c1-total">32885.60Р</div>
                <p>Получите подробную смету<br>и индивидуальное предложение на ваш E-mail</p>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c">
                    <br>
                    <div class="calc__email-input">
                      <input type="email" placeholder="E-mail" name="email">
                    </div>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>

                <div class="calc__row">
                  <div class="calc__col calc__col--l">
                    <button class="btn btn--w100 btn--transparent js-prev-step"><  Назад</button>
                  </div>
                  <div class="calc__col calc__col--c">
                    <button class="btn btn--w100 js-next-step">следующий шаг  ></button>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>
              </div>
            </div>
          </div>  <!-- /calc__step-2 -->

          <div class="calc__step-3" style="display: none;">
            <div class="row">
              <div class="col-md-12">
                <div class="calc__title"><b>Шаг №3</b> Ваше предложение</div>

                <br>
                <br>
                <br>

                <p>
                  <b>Ваше специальное предложение уже готово!</b><br>
                  ПРОВЕРЬТЕ СВОЮ ПОЧТУ.
                </p>

                <br>
                <br>
                <br>

                <div class="calc__row">
                  <div class="calc__col calc__col--l"></div>
                  <div class="calc__col calc__col--c">
                    <button class="btn btn--w100 js-prev-step"><  Назад</button>
                  </div>
                  <div class="calc__col calc__col--r"></div>
                </div>

              </div>
            </div>
          </div>  <!-- /calc__step-3 -->
        </form>
      </div>  <!-- /tab-3 -->


    </div>
  </div>
</div>

<script>
  // Для первого шага
  
  
  
</script>







<script>

var currentCountStoPloshad = 1;
$( "#js-range-area" ).on( "slide", function( event, ui ) {
	var countSto = Math.ceil(ui.value/100);
	if(countSto != currentCountStoPloshad && countSto != 0) {
		currentCountStoPloshad = countSto;

		var lenK = $('#id-length-k');
		var lenCurtain = $('#id-length-curtain');
		var lenTp = $('#id-length-tp');
		var lenEndov = $('#id-length-endov');
		var lenPp = $('#id-length-pp');

		lenK.slider( "value", lenK.data('value')*countSto );
		lenCurtain.slider( "value", lenCurtain.data('value')*countSto );
		lenTp.slider( "value", lenTp.data('value')*countSto );
		lenEndov.slider( "value", lenEndov.data('value')*countSto );
		lenPp.slider( "value", lenPp.data('value')*countSto );
	}
} );


$('.js-next-step').on('click', function(e){
  e.preventDefault();

  var tab = $(this).closest('.tab__content');
  var stepNum = tab.data('step');
  var target = tab.attr('id');
  
  // console.log(tab.attr('id'));
  // console.log(stepNum);
  
  $.ajax({
    url: '/index.php?route=calculator/calculator/step&step='+stepNum+'&tab='+target,
    type: 'post',
    data: $('#'+target+' input[type=text], #'+target+' input[type=hidden], #'+target+' input[type=email], #'+target+' input[type=radio]:checked, #'+target+' input[type=file], #'+target+' input[type=checkbox]:checked, #'+target+' textarea'),
    dataType: 'json',
    success: function(json) {
    
      // console.log(json);
      //debugger;
      
      if(json['total']){
        $('#'+target+' .js-c1-total').html(json['total']);
      }
    

    },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
  });
  
    
  tab.find('.calc__step-' + stepNum).hide('200');
  stepNum++;
  tab.data('step', stepNum).find('.calc__step-' + stepNum).show('200');
});
$('.js-prev-step').on('click', function(e){
  e.preventDefault();

  var tab = $(this).closest('.tab__content');
  var stepNum = tab.data('step');

  tab.find('.calc__step-' + stepNum).hide('200');
  stepNum--;
  tab.data('step', stepNum).find('.calc__step-' + stepNum).show('200');
});
</script>
