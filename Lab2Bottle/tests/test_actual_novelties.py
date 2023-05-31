import unittest
import re

class TestTheme(unittest.TestCase):    
    def test_false_validate_theme(self):
        theme_pattern = re.compile(r"^(?=.*[a-zA-Z]).{10,100}$")
        test_themes = ["", "1232", "."]
        for theme in test_themes:
            self.assertFalse(re.fullmatch(theme_pattern, theme))
            
    
    def test_true_validate_theme(self):
        theme_pattern = re.compile(r"^(?=.*[a-zA-Z]).{10,60}$")
        test_themes = ["Консолидация отображения данных с использованием протокола OData", "Консолидация отображения данных с использованием протокола OData", "Упрощаем разработку на React Native: чем полезен CocoaPods?"]
        for theme in test_themes:
            self.assertTrue(re.fullmatch(theme_pattern, theme))
            

if __name__ == "__main__":
    unittest.main()