% rebase('layout.tpl', title=title, year=year, data=data, name=name, mail=mail, review=review)
% import json
% import random

<link rel="stylesheet" href="/static/content/style_reviews_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<div class="wrapper" style="margin-top:50px">
	<div id="form-container" class="form-container">
		<form class="reviews-form" id="reviews_page_form" method="post" action="/reviews_page">
			%if name == "none":
				<p class="warning">Слишком короткое имя</p>
				%name = ""
			%end
			<label for="inputName" class="form-label">Введите свое имя:</label>
			<input value="{{name}}" class="input-field" type="text" name="inputName" id="inputName" maxlength="20" placeholder="Ваше имя" required>
			%if mail == "none":
				<p class="warning">Адрес почты некорректен</p>
				%mail = ""
			%end
			<label for="inputMail" class="form-label">Укажите свою почту:</label>
			<input value="{{mail}}" class="input-field" type="text" name="inputMail" id="inputMail" maxlength="30" placeholder="Ваша почта" required pattern="^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$">
			%if review == "none":
				<p class="warning">Такой вопрос уже был отправлен</p>
				%review = ""
			%end
			<textarea class="textarea-field" name="inputReview" id="inputReview" maxlength="1000" rows="10" cols="35" placeholder="Ваш отзыв" required>{{review}}</textarea>
			<button class="btn" type="submit" name="reviews_form" value="Send">Отправить</button>
		</form>
	</div>
	<div>
		%massive = []
		%for i in data:
			%for j in range(0, len(data[i]['messages'])):
				%massive.append([i, data[i]['messages'][j]])
			%end
		%end
		%random.shuffle(massive)
		%for i in massive:
			<div class="info-container">
				<img src="../static/images/user_avatar.png" class="image" alt="user_avatar" />
				<p class="user-name">{{i[0]}}</p>
				<p class="review-message">{{i[1]}}</p>
			</div>
		%end
	</div>
</div>