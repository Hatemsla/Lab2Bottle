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
            
        
class TestPhone(unittest.TestCase):    
    def test_false_validate_phone(self):
        phone_pattern = re.compile(r"\+7\s\d{3}\s\d{3}\s\d{2}\s\d{2}")
        test_phones = ["+73047293423", "+82332123312", "8 282 424 13 42", "+7 (232) 232 34 12"]
        for phone in test_phones:
            self.assertFalse(re.fullmatch(phone_pattern, phone))
            
    
    def test_true_validate_theme(self):
        phone_pattern = re.compile(r"\+7\s\d{3}\s\d{3}\s\d{2}\s\d{2}")
        test_phones = ["+7 293 123 34 13", "+7 203 123 43 12", "+7 999 999 99 99"]
        for phone in test_phones:
            self.assertTrue(re.fullmatch(phone_pattern, phone))    
            

if __name__ == "__main__":
    unittest.main()