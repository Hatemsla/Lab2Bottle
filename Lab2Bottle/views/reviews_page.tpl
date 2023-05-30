% rebase('layout.tpl', title=title, year=year, data=data)
% import json

<link rel="stylesheet" href="/static/content/style_reviews_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<div class="wrapper" style="margin-top:50px">
	<div id="form-container">
		<form id="reviews_page_form" method="post" action="/reviews_page">
			<label>Введите свое имя:</label>
			<input type="text" name="inputName" id="inputName" required><br><br>
			<label>Укажите свою почту:</label>
			<input type="text" name="inputMail" id="inputMail" required><br><br>
			<label>Напишите свой отзыв:</label>
			<input type="text" name="inputReview" id="inputReview" required><br><br>
			<button type="submit" name="reviews_form" value="Send">Отправить</button>
		</form>
	</div>
	<div>
		%for i in data:
			%for j in range(0, len(data[i]['messages'])):
				<div class="info-container">
					<h3>{{data[i]['messages'][j]}}</h3>
				</div>
			%end
		%end
	</div>
</div>