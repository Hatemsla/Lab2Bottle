from datetime import datetime
import json
import locale
from bottle import post, request, route, view


# -*- coding: utf-8 -*-
locale.setlocale(locale.LC_TIME, 'ru_RU') # Чтобы название месяце в дате было на русском

data_file_path = 'static/data/actual_novelties.json'

def get_formatted_datetime():
    """Функция получения текущей форматированной даты и времени"""
    now = datetime.now()
    return now.strftime("%d %b %Y"), now.strftime("%H:%M")


def get_actual_novelties_data(data_file_path):
    """Функция получения данных из файла с актуальными новинками"""
    try:
        with open(data_file_path, 'r', encoding="utf-8") as f:
            existing_data = json.load(f)
    except:
        existing_data = {}
        
    return existing_data


def save_actual_novelties_data(data_file_path, existing_data):
    """Функция сохранения введенных данных в файл"""
    with open(data_file_path, 'w', encoding="utf-8") as f:
        json.dump(existing_data, f, indent=4, ensure_ascii=False)


def get_current_index(existing_data):
    """Функция получения текущего индекса для записи в файл"""
    if not existing_data:
        index = 1
    else:
        index = int(max(existing_data.keys())) + 1
        
    return index


def check_theme_repeat(existing_data, theme):
    """Функция проверки повторения темы"""
    for i in existing_data:
        if theme == existing_data[str(i)]['theme']:
            return True
        
    return False


@post('/actual_novelties')
@route('/actual_novelties')
@view('actual_novelties')
def form_handler():
    """Функция обработчик формы"""
    global data_file_path
    theme = request.forms.get("theme")
    novelties = request.forms.get("novelties")
    author = request.forms.get("author")
    email = request.forms.get("email")
    
    formatted_date, formatted_time = get_formatted_datetime()
    
    existing_data = get_actual_novelties_data(data_file_path)
        
    index = get_current_index(existing_data)
    
    data = {}
    data['theme'] = theme
    data['novelties'] = novelties
    data['author'] = author
    data['date'] = f"{formatted_date} в {formatted_time}"
    data['email'] = email
    
    if check_theme_repeat(existing_data, theme):
        return dict(
            data_file_path=data_file_path,
            year=datetime.now().year,
            error='1',
            novelties=novelties,
            author=author,
            email=email
        )
    
    existing_data[str(index)] = data
    
    save_actual_novelties_data(data_file_path, existing_data)
    
    return dict(
        data_file_path=data_file_path,
        year=datetime.now().year,
        error='',
        novelties='',
        author='',
        email=''
    )
        