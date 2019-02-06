<div id="order-form">
	<form>
		<div class="header">
			<h4 class="title">Заказ товара</h4>
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
						<span class="text">Ваша цена:</span>
						<span class="sum"></span>
						<span class="curency"></span>
					</div>
				</div>
			</div>
			<div class="contacts">
				<div class="input-group">
					<!-- <label class="required">Имя:</label> -->
					<input name="name" class="input" placeholder="Имя Отчество Фамилия" required>
				</div>
				<div class="input-group">
					<!-- <label class="required">Телефон:</label> -->
					<input name="phone" class="input input--phone" placeholder="Телефон" required>
				</div>
				<div class="input-group">
					<!-- <label>E-mail:</label> -->
					<input name="email" class="input" placeholder="E-mail">
				</div>
				<div class="input-group">
					<!-- <label>Комментарий:</label> -->
					<textarea name="comment" class="textarea" rows="2" placeholder="Комментарий"></textarea>
				</div>
				
				<div class="button-wrapper">
					<button class="btn btn--black" type="submit">Отправить заказ</button>
				</div>
				
				<p class="disclamer">Нажимая на кнопку "Отправить заказ" я даю свое согласие на обработку персональных данных и принимаю <a href="/privacy" target="_blank">условия соглашения</a>.</p>
			</div>
		</div>
	</form>
</div>
