"""
Routes and views for the bottle application.
"""
import json
import re
import locale

# -*- coding: utf-8 -*-

from bottle import route, view, request, post
from datetime import datetime

from static.model import our_clients_handler # Lab2Bottle.static.model нихуя не работает
locale.setlocale(locale.LC_TIME, 'ru_RU')

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
    data_file_path = 'static/data/actual_novelties.json'
    return dict(
        data_file_path=data_file_path,
        year=now.year,
        error=''
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
        required_product="",
        text_error = '',
        phone='',
        email=''
    )

@route('/our_clients_new_client', method='post')
@post('/our_clients_new_client', method='post')
@view('our_clients')
def about():
    data, error, name_company, required_product, phone, email = our_clients_handler.user_data_processing()
    return dict(
        title='Our clients',
        message='Our clients page',
        year=datetime.now().year,
        data_clients=data,
        name_company=name_company,
        required_product=required_product,
        text_error=error,
        phone=phone,
        email=email
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

    name = mail = review = ""

    if request.forms.get("reviews_form") == "Send":
        name = str(request.forms.getunicode('inputName'))
        mail = str(request.forms.getunicode('inputMail'))
        review = str(request.forms.getunicode('inputReview'))
        if len(name) > 2:
            if mail_correct(mail):
                if name in data:
                    data[name]['mail'] = mail
                    if review not in data[name]['messages']:
                        data[name]['messages'].append(review)
                        name = mail = review = ""
                    else:
                        review = "none"
                else:
                    data[name] = {'mail': mail, 'messages': [review]}
                    name = mail = review = ""
                with open(file_path, 'w', encoding="utf-8") as outfile:
                    json.dump(data, outfile, indent=4)
            else:
                mail = "none"
        else:
            name = "none"

    return dict(
        title='Reviews',
        message='Reviews',
        year=datetime.now().year,
        data=data,
        name=name,
        mail=mail,
        review=review,
    )


def mail_correct(mail):
    regex = re.fullmatch(r"^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$", mail)
    return regex
