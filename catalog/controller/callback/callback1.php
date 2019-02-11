<div id="order-form1">
	<form>
		<div class="header">
			<h4 class="title">Получить лучшую цену</h4>
			<div class="close-button"></div>
		</div>
		<div class="content">
			<div class="top">
				<img class="img" src="" alt="">
				<div class="calculator">
					<div class="name"></div>
					<div class="value">
						<span class="text">Количество:</span>
                        <input name="price" id="modal_price" type="hidden" value="">
							
						<div class="input-count">
							<button class="minus input-count__btn" type="button">-</button>
							<input name="value" class="input-count__num" type="text" value="1" min="1">
							<button class="plus input-count__btn" type="button">+</button>
						</div>
					</div>
					<div class="sum-block">
						<span class="text">Цена:</span>
						<span class="sum"></span>
						<span class="curency"></span>
					</div>
				</div>
			</div>
            <div class="message">
                <p>Теперь у нас в магазине можно торговаться</p>
                <p style=" text-align: center;background: #fbbe18;display: block;padding: 1rem;font-size: 2rem;text-transform: uppercase;">Давайте торговаться!</p>
                <p>Предложите свою цену в поле "Ваша цена" или "Комментарий" и заполните поля со звездочкой.</p>
                <p>Менеджеры незамедлительно сообщат Вашу цену директору. Если он одобрит это предложение, то мы сразу сообщим Вам об этом решении.</p>
            </div>
            <div class="header">
                
            </div>
			<div class="contacts clearfix">
				<div class="form-group col-md-6">
					<!-- <label class="required">Имя:</label> -->
					<input name="name" class="input" placeholder="Имя Отчество Фамилия" required>
				</div>
				<div class="form-group col-md-6">
					<!-- <label class="required">Телефон:</label> -->
					<input name="phone" class="input input--phone" placeholder="Телефон" required>
				</div>
				<div class="form-group col-md-6">
					<!-- <label>E-mail:</label> -->
					<input name="email" class="input" placeholder="E-mail">
				</div>
				<div class="form-group col-md-6">
					<!-- <label>Комментарий:</label> -->
					<textarea name="comment" class="textarea" placeholder="Комментарий" style="padding: 0.8rem 1.5rem; height: 42px;"></textarea>
				</div>
        <div class="form-group col-md-6">
					<label>Ваша цена:</label>
					<input name="customer_price" id="customer_price" class="input" placeholder="0.00">
				</div>
				
				<div class="form-group col-md-6">
					<label></label>
					<div class="button-wrapper">
						<button class="btn btn--black" type="submit" style="padding: 1rem 2rem;width: 100%;">Отправить</button>
					</div>
				</div>
				
			</div>
			<br>
		</div>
	</form>
</div>
