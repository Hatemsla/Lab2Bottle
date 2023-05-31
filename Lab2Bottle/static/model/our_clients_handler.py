from bottle import request
import json
import re
file_path = 'static/data/our_clients.json'
pattern_phone = re.compile(r'^\+7\s\d{3}\s\d{3}\s\d{2}\s\d{2}$')
pattern_email = re.compile(r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$")

#Функция проверки телефона
def check_phone(phone):
    if pattern_phone.match(phone):
        return ''
    return 'Телефон не соответствует требуемому шаблону!'

#Функция проверки email
def check_email(email):
    if pattern_email.match(email):
        return ''
    return 'Email не соответствует требуемому шаблону!'


# Функция обработки добавление нового заказа
def user_data_processing():
    data = read_from_file()
    name_company = request.forms.getunicode('name_company')
    required_product = request.forms.getunicode('required_product')
    technologies = technology_stack_formation()
    phone = request.forms.getunicode('company_phone')
    email = request.forms.getunicode('company_email')
    check_em = check_email(email)
    check_ph = check_phone(phone)
    if len(check_em):
        return data, check_em, name_company, required_product, phone, email
    if len(check_ph):
        return data, check_ph, name_company, required_product, phone, email
    if name_company in data:
        orders = data[name_company]["orders"]
        for order in orders:
            if (order["product"]).lower() == required_product.lower():
                return data, "Ошибка: У компании «" + name_company + "» уже есть заказ с продуктом «" + required_product + "»!", name_company, '', phone, email
        orders.append({"product": required_product, "technologies": technologies})
    else:
        data[name_company] = {
            "orders": [{"product": required_product, "technologies": technologies}],
            "phone": phone,
            "email": email
        }
    write_to_file(data)
    return data, "", '', '', '', ''


# Формирование стека технологий из checkboxs с формы
def technology_stack_formation():
    resultText = ""
    if request.forms.getunicode('technologies_html') == 'on':
        resultText +="HTML" + " | "
    if request.forms.getunicode('technologies_css') == 'on':
        resultText +="CSS" + " | "
    if request.forms.getunicode('technologies_js') == 'on':
        resultText +="JavaScript" + " | "
    if request.forms.getunicode('technologies_react') == 'on':
        resultText +="React" + " | "
    if request.forms.getunicode('technologies_Node') == 'on':
        resultText +="Node" + " | "
    if request.forms.getunicode('technologies_django') == 'on':
        resultText +="Django" + " | "
    if request.forms.getunicode('technologies_asp') == 'on':
        resultText +="ASP.NET" + " | "
    if request.forms.getunicode('technologies_php') == 'on':
        resultText +="PHP" + " | "
    if request.forms.getunicode('technologies_MySQL') == 'on':
        resultText +="MySQL" + " | "
    if request.forms.getunicode('technologies_PostgreSQL') == 'on':
        resultText +="PostgreSQL" + " | "
    if request.forms.getunicode('technologies_MongoDB') == 'on':
        resultText +="MongoDB" + " | "
    if request.forms.getunicode('technologies_Java') == 'on':
        resultText +="Java" + " | "
    if request.forms.getunicode('technologies_Kotlin') == 'on':
        resultText +="Kotlin" + " | "
    if request.forms.getunicode('technologies_Swift') == 'on':
        resultText +="Swift" + " | "
    if request.forms.getunicode('technologies_Objective-C') == 'on':
        resultText +="Objective-C" + " | "
    if request.forms.getunicode('technologies_charp') == 'on':
        resultText +="C#" + " | "
    if request.forms.getunicode('technologies_c_plus') == 'on':
        resultText +="C++" + " | "
    if request.forms.getunicode('technologies_python') == 'on':
        resultText +="Python" + " | "
    return resultText

# Функция чтения json из файла
def read_from_file():
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except:
        data = {}
    return data

# Функция записи json в файл
def write_to_file(data):
    with open(file_path, 'w', encoding="utf-8") as outfile:
        json.dump(data, outfile, indent=4)
    return