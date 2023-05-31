"""
Routes and views for the bottle application.
"""
import json

# -*- coding: utf-8 -*-

from bottle import route, view, request, post
from datetime import datetime

from Lab2Bottle.static.model import our_clients_handler


@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )


@route('/topic_tarasov')
@view('topic_tarasov')
def about():
    """Renders the topic_tarasov page."""
    return dict(
        title='Tarasov Nikita',
        message='Topic Tarasov page',
        year=datetime.now().year
    )


@route('/topic_kalashnikov')
@view('topic_kalashnikov')
def about():
    """Renders the topic_tarasov page."""
    return dict(
        title='Kalashnikov Jan',
        message='Topic Kalashnikov page',
        year=datetime.now().year
    )


@route('/topic_rykhlov')
@view('topic_rykhlov')
def about():
    """Renders the topic_tarasov page."""
    return dict(
        title='Rykhlov Kirill',
        message='Topic Rykhlov page',
        year=datetime.now().year
    )


@route('/actual_novelties')
@view('actual_novelties')
def about():
    """Renders the actual_novelties page."""
    now = datetime.now()
    formatted_date = now.strftime("%d %b %Y")
    formatted_time = now.strftime("%H:%M")
    data_file_path = 'static/data/actual_novelties.json'
    return dict(
        data_file_path=data_file_path,
        date=f"{formatted_date} в {formatted_time}",
        year=now.year
    )


@route('/our_clients')
@view('our_clients')
def about():
    """Renders the our_clients page."""
    data = our_clients_handler.read_from_file()
    return dict(
        title='Our clients',
        message='Our clients page',
        year=datetime.now().year,
        data_clients=data,
        name_company="",
        required_product=""
    )

@route('/our_clients_new_client', method='post')
@post('/our_clients_new_client', method='post')
@view('our_clients')
def about():
    data = our_clients_handler.user_data_processing()
    return dict(
        title='Our clients',
        message='Our clients page',
        year=datetime.now().year,
        data_clients=data,
        name_company='',
        required_product=''
    )


@post('/reviews_page')
@route('/reviews_page')
@view('reviews_page')
def review_form_handler():
    file_path = 'static/data/reviews.json'
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except:
        data = {}

    if request.forms.get("reviews_form") == "Send":
        name = str(request.forms.get('inputName'))
        mail = str(request.forms.get('inputMail'))
        review = str(request.forms.get('inputReview'))
        if name in data:
            data[name]['mail'] = mail
            data[name]['messages'].append(review)
        else:
            data[name] = {'mail': mail, 'messages': [review]}
        with open(file_path, 'w', encoding="utf-8") as outfile:
            json.dump(data, outfile, indent=4)

    # print(data)

    return dict(
        title='Reviews',
        message='Reviews',
        year=datetime.now().year,
        data=data
    )
