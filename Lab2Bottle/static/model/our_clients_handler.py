from bottle import request
import json
file_path = 'static/data/our_clients.json'

def user_data_processing():
    data = read_from_file()
    name_company = request.forms.getunicode('name_company')
    required_product = request.forms.getunicode('required_product')
    technologies = technology_stack_formation()
    phone = request.forms.getunicode('company_phone')
    email = request.forms.getunicode('company_email')
    if name_company in data:
        orders = data[name_company]["orders"]
        for order in orders:
            if order["product"] == required_product:
                print("Ошибка: У компании", name_company, "уже есть заказ с продуктом", required_product)
                return
        orders.append({"product": required_product, "technologies": technologies})
    else:
        data[name_company] = {
            "orders": [{"product": required_product, "technologies": technologies}],
            "phone": phone,
            "email": email
        }
    write_to_file(data)
    return ""

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
    return resultText

def read_from_file():
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except:
        data = {}
    return data

def write_to_file(data):
    with open(file_path, 'w', encoding="utf-8") as outfile:
        json.dump(data, outfile, indent=4)
    return