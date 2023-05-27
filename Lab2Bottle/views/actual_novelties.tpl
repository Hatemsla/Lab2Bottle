% rebase('layout.tpl', data_file_path=data_file_path, date=date)
% import json

<link rel="stylesheet" href="/static/content/style_actual_novelties_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">

<div class="wrapper" style="margin-top:50px">
	<div class="form-container">
		<form action="/actual_novelties" method="post">
			<label class="label-text" for="theme">Тема:</label>
			<div class="form-input">
				<input type="text" name="theme" placeholder="Тема">
			</div>
			<label class="label-text" for="novelties">Новинка:</label>
			<div class="form-input">
				<textarea type="text" name="novelties" placeholder="Новинка"></textarea>
			</div>
			<label class="label-text" for="author">Автор:</label>
			<div class="form-input">
				<input type="text" name="author" placeholder="Автор">
			</div>
			<div class="form-buttons">
				<button class="btn" type="submit" name="form" value="Send">Добавить</button>
			</div>
		</form>
	</div>

	<div class="info-container">
		%try:
			%with open(data_file_path, 'r', encoding='utf-8') as f:
				%data = json.load(f)
			%end
		%except:
			%data = {}
		%end
			
		%if data:
			%for i in data:
				<div>
					<h3>{{data['theme']}}</h3>
				</div>
			%end
		%end
	</div>
</div>