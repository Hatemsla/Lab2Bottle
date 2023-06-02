import re


def mail_correct(mail):
    regex = re.fullmatch(r"^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$", mail)
    return regex


def name_correct(name):
    regex = re.fullmatch(r"^[\s_a-zа-яA-ZА-Я0-9]+$", name)
    return regex
