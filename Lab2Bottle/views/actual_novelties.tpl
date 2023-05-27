% rebase('layout.tpl', title=title, year=year)

<link rel="stylesheet" href="/static/content/style_actual_novelties_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">

<div class="wrapper" style="margin-top:50px">
	<div class="form-container">
		<form action="/method_subgraph" method="post">
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
</div>