% rebase('layout.tpl', data_file_path=data_file_path, year=year)
% import json

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/static/content/style_actual_novelties_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">

<div class="wrapper">
	<div class="form-container">
		<form accept-charset="UTF-8" action="/actual_novelties" method="post" enctype="multipart/form-data">
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

    %try:
        %with open(data_file_path, 'r', encoding='utf-8') as f:
            %data = json.load(f)
        %end
    %except:
        %data = {}
    %end
        
    %if data:
        %for i in data:
            <div class="info-container">
                <h3 class="theme">{{data[str(i)]['theme']}}</h3>
                <p class="novelties">{{data[str(i)]['novelties']}}</p>
                <div class="end-data">
                    <p class="author">{{data[str(i)]['author']}}</p>
                    <p>&nbsp;написал&nbsp;</p>
                    <p class="date">{{data[str(i)]['date']}}</p>
                </div>
            </div>
        %end
    %end
</div>