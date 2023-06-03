% rebase('layout.tpl', data_file_path=data_file_path, year=year, error=error, novelties=novelties, author=author, email=email)
% import json

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/static/content/style_actual_novelties_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">

<script>
    document.addEventListener('DOMContentLoaded', function(){
        let novelties = document.getElementsByClassName("novelties");

        for(let i = 0; i < novelties.length; i++){
            let element = novelties[i]
            let text = element.innerHTML;
            let maxLines = 5;
            let maxCharacters = 240;

            let lines = text.split('\n')

            if(lines.length > maxLines && text.length < maxCharacters){
                let truncatedLines = lines.slice(0, maxLines);
                let truncatedText = truncatedLines.join('\n');

                element.style.overflow = 'hidden';

                let toggleButton = document.createElement('a');
                toggleButton.setAttribute('id', 'toggleButton');
                toggleButton.setAttribute('href', 'javascript:void(0)');
                toggleButton.innerHTML = '\nПоказать еще';
                toggleButton.onclick = function(){
                    element.innerHTML = text;
                    toggleButton.style.display = 'none';
                }

                element.innerHTML = truncatedText;
                element.appendChild(toggleButton);
            }
            else if(lines.length < maxLines && text.length > maxCharacters){
                let truncatedText = text.substring(0, maxCharacters);

                element.style.overflow = 'hidden';

                let toggleButton = document.createElement('a');
                toggleButton.setAttribute('id', 'toggleButton');
                toggleButton.setAttribute('href', 'javascript:void(0)');
                toggleButton.innerHTML = '\nПоказать еще';
                toggleButton.onclick = function(){
                    element.innerHTML = text;
                    toggleButton.style.display = 'none';
                }

                element.innerHTML = truncatedText;
                element.appendChild(toggleButton);
            }
            else if(lines.length > maxLines && text.length > maxCharacters){
                let truncatedText = text.substring(0, maxCharacters);

                element.style.overflow = 'hidden';

                let toggleButton = document.createElement('a');
                toggleButton.setAttribute('id', 'toggleButton');
                toggleButton.setAttribute('href', 'javascript:void(0)');
                toggleButton.innerHTML = '\nПоказать еще';
                toggleButton.onclick = function(){
                    element.innerHTML = text;
                    toggleButton.style.display = 'none';
                }

                element.innerHTML = truncatedText;
                element.appendChild(toggleButton);
            }
        }
    });
</script>

<div class="wrapper">
	<div class="form-container">
		<form accept-charset="UTF-8" action="/actual_novelties" method="post" enctype="multipart/form-data">
            %if error:
                <label class="label-text" for="theme">Тема:</label>
                <div class="form-input">
                    <input type="text" name="theme" placeholder="Тема" pattern="^(?=.*[а-яА-Яa-zA-Z]).{10,100}$" title="Количество символов от 10 до 100 и должны быть слова" minlength="10" maxlength="60" required>
                </div>
                <label class="label-text" for="novelties">Новинка:</label>
                <div class="form-input">
                    <textarea type="text" name="novelties" placeholder="Новинка" required>{{novelties}}</textarea>
                </div>
                <label class="label-text" for="author">Автор:</label>
                <div class="form-input">
                    <input type="text" name="author" placeholder="Автор" value="{{author}}" required>
                </div>
                <label class="label-text" for="phone">Электронная почта:</label>
                <div class="form-input">
                    <input type="text" name="email" placeholder="Почта" value="{{email}}" pattern="^([a-z])([a-z0-9]+)@([a-z0-9]+)\.([a-z]{2,3})$" required>
                </div>
                <p class="error">Такая тема уже есть!</p>
            %else:
                <label class="label-text" for="theme">Тема:</label>
                <div class="form-input">
                    <input type="text" name="theme" placeholder="Тема" pattern="^(?=.*[а-яА-Яa-zA-Z]).{10,100}$" title="Количество символов от 10 до 100 и должны быть слова" minlength="10" maxlength="60" required>
                </div>
                <label class="label-text" for="novelties">Новинка:</label>
                <div class="form-input">
                    <textarea type="text" name="novelties" placeholder="Новинка" required></textarea>
                </div>
                <label class="label-text" for="author">Автор:</label>
                <div class="form-input">
                    <input type="text" name="author" placeholder="Автор" required>
                </div>
                <label class="label-text" for="phone">Электронная почта:</label>
                <div class="form-input">
                    <input type="text" name="email" placeholder="Почта" pattern="^([a-z])([a-z0-9]+)@([a-z0-9]+)\.([a-z]{2,3})$" required>
                </div>
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
                <p class="novelties">{{data[str(i)]['novelties']}}</p>
                <div class="end-data">
                    <p class="author">{{data[str(i)]['author']}}</p>
                    <p>&nbsp;написал&nbsp;</p>
                    <p class="date">{{data[str(i)]['date']}}</p>
                    <p>&nbsp;пишите на почту&nbsp;</p>
                    <p class="email">{{data[str(i)]['email']}}</p>
                </div>
            </div>
        %end
    %end
</div>