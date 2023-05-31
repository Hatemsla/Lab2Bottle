% rebase('layout.tpl', title=title, year=year, data=data)
% import json
% import random

<link rel="stylesheet" href="/static/content/style_reviews_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<div class="wrapper" style="margin-top:50px">
	<div id="form-container" class="form-container">
		<form id="reviews_page_form" method="post" action="/reviews_page">
				<label for="inputName" class="form-label">Введите свое имя:</label>
				<input class="input-field" type="text" name="inputName" id="inputName" maxlength="20" placeholder="Ваше имя" required>
				<label for="inputMail" class="form-label">Укажите свою почту:</label>
				<input class="input-field" type="text" name="inputMail" id="inputMail" maxlength="30" placeholder="Ваша почта" required>
				<p><textarea class="textarea-field" name="inputReview" id="inputReview" rows="8" cols="100" placeholder="Ваш отзыв" required></textarea></p>
			<button class="send-review" type="submit" name="reviews_form" value="Send">Отправить</button>
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
				<h1>{{i[0]}}</h1>
				<h3>{{i[1]}}</h3>
			</div>
		%end
	</div>
</div>