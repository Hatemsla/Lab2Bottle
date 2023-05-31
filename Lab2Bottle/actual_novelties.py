from datetime import datetime
import json
from bottle import post, request, route, view

# -*- coding: utf-8 -*-


@post('/actual_novelties')
@route('/actual_novelties')
@view('actual_novelties')
def form_handler():
    theme = request.forms.get("theme")
    novelties = request.forms.get("novelties")
    author = request.forms.get("author")
    
    now = datetime.now()
    formatted_date = now.strftime("%d %b %Y")
    formatted_time = now.strftime("%H:%M")
    data_file_path = 'static/data/actual_novelties.json'
    
    try:
        with open(data_file_path, 'r', encoding="utf-8") as f:
            existing_data = json.load(f)
    except:
        existing_data = {}
        
    if not existing_data:
        index = 1
    else:
        index = int(max(existing_data.keys())) + 1
    
    data = {}
    data['theme'] = theme
    data['novelties'] = novelties
    data['author'] = author
    data['date'] = f"{formatted_date} в {formatted_time}"
    existing_data[str(index)] = data
    
    with open(data_file_path, 'w', encoding="utf-8") as f:
        json.dump(existing_data, f, indent=4, ensure_ascii=False)
    
    return dict(
        data_file_path=data_file_path,
        year=datetime.now().year
    )