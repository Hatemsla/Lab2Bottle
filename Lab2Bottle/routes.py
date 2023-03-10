"""
Routes and views for the bottle application.
"""

# -*- coding: utf-8 -*-

from bottle import route, view
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
