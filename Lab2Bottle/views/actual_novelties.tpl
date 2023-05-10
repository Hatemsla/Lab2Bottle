% rebase('layout.tpl', title=title, year=year)

<link rel="stylesheet" href="/static/content/style_actual_novelties_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">

<div class="wrapper" style="margin-top:50px">
	<div id="form-container">
		<form id="actual_novelties_form" method="post" action="/actual_novelties">
			<label>Input 1:</label>
			<input type="text" name="themeInput" id="input1" required><br><br>
			<label>Input 2:</label>
			<input type="text" name="descInput" id="input2" required><br><br>
			<button type="submit">Submit</button>
		</form>
	</div>
</div>