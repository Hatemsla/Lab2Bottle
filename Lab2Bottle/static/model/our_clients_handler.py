from bottle import request

def user_data_processing():
    name_company = request.forms.getunicode('name_company')
    required_product = request.forms.getunicode('required_product')

    tech_html = request.forms.getunicode('technologies_html')
    tech_css = request.forms.getunicode('technologies_css')
    print(technology_stack_formation())
    return

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