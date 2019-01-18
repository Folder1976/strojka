<style>
  .section-our-products,
  .header,
  .footer,
  .section-title,
  .section-subtitle { display: none; }
</style>

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
        
      <div id="tab-1" class="tab__content is-active">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div class="calc__title"><b>шаг №1</b> параметры объекта</div>

            <div class="calc__row">
              <div class="calc__col calc__col--l">
                <div class="calc__col-title">тип кровли</div>
              </div>
              <div class="calc__col calc__col--c">
                <div class="radio-btn-group">
                  <div class="radio-btn">
                    <input type="radio" id="type-roof-1" name="type-roof" value="1" checked>
                    <label for="type-roof-1">металочерепица</label>
                  </div>
                  <div class="radio-btn">
                    <input type="radio" id="type-roof-2" name="type-roof" value="2">
                    <label for="type-roof-2">мягкая кровля</label>
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
                <input type="range" id="total-area" name="total-area" value="1">
              </div>
              <div class="calc__col calc__col--r calc__col--ase">
                <a href="#">Свернуть расширенные настройки</a>
              </div>
            </div>



          </div>
        </div>
      </div>
      <div id="tab-2" class="tab__content">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div class="calc__title"><b>шаг №1</b> параметры объекта</div>

            <p>tab 2</p>
          </div>
        </div>
      </div>
      <div id="tab-3" class="tab__content">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div class="calc__title"><b>шаг №1</b> параметры объекта</div>

            <p>tab 3</p>
          </div>
        </div>
      </div>
  </div>
</div>