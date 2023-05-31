import unittest

import sys
import os

# Получение абсолютного пути к текущему скрипту
current_dir = os.path.dirname(os.path.abspath(__file__))

# Получение пути
folder1_path = os.path.join(current_dir, '..', 'static')

# Добавление пути к folder1 в sys.path
sys.path.append(folder1_path)

from model import our_clients_handler

class TestPositiveOurClients(unittest.TestCase):
    """Unittest класс для правильных тестов"""

    def test_normal_mobile_phone_no_error_text(self):
        # Arrange
        expected_answer = ''

        # Act
        actual_answer = our_clients_handler.check_phone("+7 965 071 07 66")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_normal_landline_phone_no_error_text(self):
        # Arrange
        expected_answer = ''

        # Act
        actual_answer = our_clients_handler.check_phone("+7 812 484 25 66")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_normal1_email_no_error_text(self):
        # Arrange
        expected_answer = ''

        # Act
        actual_answer = our_clients_handler.check_email("nik701rus@gmail.com")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_normal2_email_no_error_text(self):
        # Arrange
        expected_answer = ''

        # Act
        actual_answer = our_clients_handler.check_email("tnv@mail.ru")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_normal3_email_no_error_text(self):
        # Arrange
        expected_answer = ''

        # Act
        actual_answer = our_clients_handler.check_email("nik_rus@gmail.com")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

class TestNegativeOurClients(unittest.TestCase):
    """Unittest класс для неправильных тестов"""
    def test_to_long_mobile_phone_error_text(self):
        # Arrange
        expected_answer = 'Телефон не соответствует требуемому шаблону!'

        # Act
        actual_answer = our_clients_handler.check_phone("+7 812 484 25 66 88")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_to_short_mobile_phone_error_text(self):
        # Arrange
        expected_answer = 'Телефон не соответствует требуемому шаблону!'

        # Act
        actual_answer = our_clients_handler.check_phone("+7 812 484 25")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_iccorect_mobile_phone_error_text(self):
        # Arrange
        expected_answer = 'Телефон не соответствует требуемому шаблону!'

        # Act
        actual_answer = our_clients_handler.check_phone("+7 812484 25 85")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_mobile_phone_without_plus_error_text(self):
        # Arrange
        expected_answer = 'Телефон не соответствует требуемому шаблону!'

        # Act
        actual_answer = our_clients_handler.check_phone("7 812484 25 85")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_email_without_dog_error_text(self):
        # Arrange
        expected_answer = 'Email не соответствует требуемому шаблону!'

        # Act
        actual_answer = our_clients_handler.check_email("nik701rusyandex.ru")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_to_short1_email_error_text(self):
        # Arrange
        expected_answer = 'Email не соответствует требуемому шаблону!'

        # Act
        actual_answer = our_clients_handler.check_email("@yandex.ru")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_to_short2_email_error_text(self):
        # Arrange
        expected_answer = 'Email не соответствует требуемому шаблону!'

        # Act
        actual_answer = our_clients_handler.check_email("nik@.ru")

        # Assert
        self.assertEqual(expected_answer, actual_answer)

    def test_to_short2_email_error_text(self):
        # Arrange
        expected_answer = 'Email не соответствует требуемому шаблону!'

        # Act
        actual_answer = our_clients_handler.check_email("nik@mail.")

        # Assert
        self.assertEqual(expected_answer, actual_answer)




if __name__ == '__main__':
    unittest.main()