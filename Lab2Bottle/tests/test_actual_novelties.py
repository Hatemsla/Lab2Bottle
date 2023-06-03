import unittest
import re

class TestTheme(unittest.TestCase):    
    def test_false_validate_theme(self):
        theme_pattern = re.compile(r"^(?=.*[а-яА-Яa-zA-Z]).{10,100}$")
        test_themes = ["", "1232", "."]
        for theme in test_themes:
            self.assertFalse(re.fullmatch(theme_pattern, theme))
            
    
    def test_true_validate_theme(self):
        theme_pattern = re.compile(r"^(?=.*[а-яА-Яa-zA-Z]).{10,100}$")
        test_themes = ["Консолидация отображения данных с использованием протокола OData", "Консолидация отображения данных с использованием протокола OData", "Упрощаем разработку на React Native: чем полезен CocoaPods?"]
        for theme in test_themes:
            self.assertTrue(re.fullmatch(theme_pattern, theme))
            
        
class TestEmail(unittest.TestCase):    
    email_pattern = re.compile(r"^([a-z])([a-z0-9]+)@([a-z0-9]+)\.([a-z]{2,3})$")
    def test_false_validate_email(self):
        test_false_emails = ["", "kalashnikov@@jan.ru", "232323@yandex.ru", "kalashnikovjan.ru", "kalashnikovjan@ru", "kalashnikovjan@.ru", "kalashnikovjan@yandexru", "kalashnikovjan@yandex..ru", "kalashnikovjan@yandex.rusd"]
        for email in test_false_emails:
            self.assertFalse(re.fullmatch(self.email_pattern, email))
            
    
    def test_true_validate_email(self):
        test_true_emails = ["kalashnikovjan@yandex.ru", "kalashnikovhan123@gmail.com", "lolikmolik123@yandex.ru"]
        for email in test_true_emails:
            self.assertTrue(re.fullmatch(self.email_pattern, email))    
            

if __name__ == "__main__":
    unittest.main()