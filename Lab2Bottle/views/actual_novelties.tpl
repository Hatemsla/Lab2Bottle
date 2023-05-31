% rebase('layout.tpl', data_file_path=data_file_path, year=year, error=error)
% import json

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/static/content/style_actual_novelties_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">

<div class="wrapper">
	<div class="form-container">
		<form accept-charset="UTF-8" action="/actual_novelties" method="post" enctype="multipart/form-data">
			<label class="label-text" for="theme">Тема:</label>
			<div class="form-input">
				<input type="text" name="theme" placeholder="Тема" pattern="^(?=.*[a-zA-Z]).{10,100}$" minlength="10" maxlength="60" required>
			</div>
			<label class="label-text" for="novelties">Новинка:</label>
			<div class="form-input">
				<textarea type="text" name="novelties" placeholder="Новинка" required></textarea>
			</div>
			<label class="label-text" for="author">Автор:</label>
			<div class="form-input">
				<input type="text" name="author" placeholder="Автор" required>
			</div>
            <label class="label-text" for="phone">Телефон:</label>
			<div class="form-input">
				<input type="text" name="phone" placeholder="Телефон" pattern="\+7\s\d{3}\s\d{3}\s\d{2}\s\d{2}" title="Введите российский мобильный номер в формате +7 xxx xxx xx xx" required>
			</div>
            %if error:
                <p class="error">Такая тема уже есть!</p>
            %end
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
        %for i in reversed(data):
            <div class="info-container">
                <h3 class="theme">{{data[str(i)]['theme']}}</h3>
                <p class="novelties preview-text">{{data[str(i)]['novelties']}}</p>
                <div class="end-data">
                    <p class="author">{{data[str(i)]['author']}}</p>
                    <p>&nbsp;написал&nbsp;</p>
                    <p class="date">{{data[str(i)]['date']}}</p>
                    <p>&nbsp;обращаетесь по номера&nbsp;</p>
                    <p class="phone">{{data[str(i)]['phone']}}</p>
                </div>
            </div>
        %end
    %end
</div>