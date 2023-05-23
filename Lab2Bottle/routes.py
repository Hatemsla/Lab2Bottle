"""
Routes and views for the bottle application.
"""

# -*- coding: utf-8 -*-

from bottle import route, view, request
from datetime import datetime


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
    return dict(
        title='Actual Novelties',
        message='Actual Novelties page',
        year=datetime.now().year
    )


@route('/our_clients')
@view('our_clients')
def about():
    """Renders the our_clients page."""
    return dict(
        title='Our clients',
        message='Our clients page',
        year=datetime.now().year,
        data_clients=[],
        data_new_client=[],
        name_company="",
        required_product=""
    )

@route('/our_clients_new_client')
@view('our_clients_new_client')
def about():
    """Renders the our_clients page."""
    name_company = request.forms.getunicode('name_company')
    required_product = request.forms.getunicode('required_product')
    return dict(
        title='Our clients',
        message='Our clients page',
        year=datetime.now().year,
        data_clients=[],
        data_new_client=[],
        name_company=name_company,
        required_product=required_product
    )


@route('/reviews_page')
@view('reviews_page')
def about():
    """Renders the our_clients page."""
    return dict(
        title='Reviews',
        message='Reviews',
        year=datetime.now().year
    )
