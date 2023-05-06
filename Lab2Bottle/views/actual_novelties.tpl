% rebase('layout.tpl', title=title, year=year)

<link rel="stylesheet" href="/static/content/style_yan_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">

<div class="wrapper" style="margin-top:50px">
	<button onclick="showForm()">Show form</button>
	<div id="form-container" style="display:none">
		%def generate_form():
			form_html = """
				<form method="post" action="/">
					<label for="input1">Input 1:</label>
					<input type="text" name="input1" id="input1" required><br><br>
					<label for="input2">Input 2:</label>
					<input type="text" name="input2" id="input2" required><br><br>
					<button type="submit">Submit</button>
				</form>
			"""
			return form_html
		$generate_form()
	</div>

	<script>
	function showForm() {
		document.getElementById("form-container").style.display = "block";
	}
	</script>
</div>