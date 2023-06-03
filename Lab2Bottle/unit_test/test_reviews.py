import unittest

import sys
import os

# Получение абсолютного пути к текущему скрипту
current_dir = os.path.dirname(os.path.abspath(__file__))

# Получение пути
folder1_path = os.path.join(current_dir, '..', 'static')

# Добавление пути к folder1 в sys.path
sys.path.append(folder1_path)

from model import reviews_page_manager

class TestMail(unittest.TestCase):
    def test_mails_positive(self):
        mails = ['kirotron2002@mail.ru', 'sh37ghse3whf@gmail.com', 'fshdj4356765347267354276345@gmail.com', 'ANFDUIGIUOAEGOUIADSHFIU@yandex.ru']
        for i in mails:
            res = False
            if reviews_page_manager.mail_correct(i):
                res = True
            self.assertEqual(res, True)  # Check good mails

    def test_mails_negative(self):
        mails = [' 42367623417824316@andex.ru', '@mail.ru', '', '    ', '  @gmail.com', 'wer@mail', 'rwe@gmail...com', '\'2@mail.com.com', 'hsfjh@fjhs@mail.ru']
        for i in mails:
            self.assertEqual(reviews_page_manager.mail_correct(i), None)  # Check bad mails

class TestName(unittest.TestCase):
    def test_names_positive(self):
        names = ['Алексей Петров', 'jfsakdkjsa', 'JaKoB324234', 'ALEXEYYYYYYY22222', 'mega_man', 'I Am bIG Bosss']
        for i in names:
            res = False
            if reviews_page_manager.name_correct(i):
                res = True
            self.assertEqual(res, True)  # Check good names

    def test_names_negative(self):
        names = ['@', 'huwe89q32/.,/', 'AW>,fE', 'qf/.z/', 'HFIU FWUH HFH\'', ' wf2oqjiw]']
        for i in names:
            self.assertEqual(reviews_page_manager.name_correct(i), None)  # Check bad names


if __name__ == '__main__':
    unittest.main()
