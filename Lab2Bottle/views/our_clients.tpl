% rebase('layout.tpl', year=year, data_new_client=data_new_client, data_clients=data_clients, required_product=required_product, name_company=name_company)

<link rel="stylesheet" href="/static/content/style_actual_novelties_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">

<div class="wrapper" style="margin-top:50px">
    <div class="detail">
        <div class="detail-section edu">
            <div class="detail-title">
                <div class="title-icon">
                    <img class="color-icon-white" width="20" height="20" src="\static\images\icon\new_client.svg"></img>
                </div>
                <span>Станьте нашим клиентом</span>
            </div>
            <div class="detail-content">
            <div class="timeline-block">
                <form action="/our_clients_new_client" method='post'>
                    <div>
                        <label for="name_company">Название организации:</label>
                        <input name="name_company" id="name_company" value="{{name_company}}"
                            title="Укажите название компании, которое состоит не только из цифр и длиной более 2 знаков">
                    </div>
                    <div>
                        <label for="required_product">Требуемый продукт</label>
                        <input name="required_product" id="required_product" value="{{required_product}}"
                            title="Укажите требуемый продукт. Название не может состоять только из цифр и должно быть длиной более 2 знаков ">
                    </div>
                    <div>
                        <label for="company_phone">Телефон для обратной связи</label>
                        <input name="company_phone" id="company_phone"
                               pattern="\+7\s\d{3}\s\d{3}\s\d{2}\s\d{2}"
                               title="Введите российский мобильный номер в формате +7 xxx xxx xx xx" required >
                    </div>
                    <div>
                        <label for="company_email">Email для обратной связи</label>
                        <input name="company_email" id="company_email"  pattern="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$" title="Осуществляется проверка адреса Email. Введите существующий адрес." required>
                    </div>
                    <label for="required_product">Требуемый продукт</label>
                    <div>
                        <p class="p_technology">Frontend:</p>
                        <input type="checkbox" name="technologies_html" id="technologies_html" placeholder="HTML" >
                        <label for="technologies_html">HTML</label>

                        <input type="checkbox" name="technologies_css" id="technologies_css" placeholder="CSS" >
                        <label for="technologies_css">CSS</label>

                        <input type="checkbox" name="technologies_js" id="technologies_js" placeholder="JavaScript" >
                        <label for="technologies_js">JavaScript</label>

                        <input type="checkbox" name="technologies_react" id="technologies_react" placeholder="React" >
                        <label for="technologies_react">React</label>
                    </div>
                    <div>
                        <p class="big-bold-text">Backend:</p>
                        <input type="checkbox" name="technologies_Node"  id="technologies_Node" placeholder="Node" >
                        <label for="technologies_Node">Node</label>

                        <input type="checkbox" name="technologies_django" id="technologies_django" placeholder="Django" >
                        <label for="technologies_django">Django</label>

                        <input type="checkbox" name="technologies_asp" id="technologies_asp" placeholder="ASP.NET" >
                        <label for="technologies_asp">ASP.NET</label>

                        <input type="checkbox" name="technologies_php" id="technologies_php" placeholder="PHP" >
                        <label for="technologies_php">PHP</label>
                    </div>
                    <div>
                        <p class="big-bold-text">Базы данных:</p>
                        <input type="checkbox" name="technologies_MySQL"  id="technologies_MySQL" placeholder="MySQL" >
                        <label for="technologies_MySQL">MySQL</label>

                        <input type="checkbox" name="technologies_PostgreSQL" id="technologies_PostgreSQL" placeholder="PostgreSQL" >
                        <label for="technologies_PostgreSQL">PostgreSQL</label>

                        <input type="checkbox" name="technologies_MongoDB" id="technologies_MongoDB" placeholder="MongoDB" >
                        <label for="technologies_MongoDB">MongoDB</label>
                    </div>
                    <div class="p_technology">
                        <p>Android:</p>
                        <input type="checkbox" name="technologies_Java"  id="technologies_Java" placeholder="Java" >
                        <label for="technologies_Java">Java</label>

                        <input type="checkbox" name="technologies_Kotlin" id="technologies_Kotlin" placeholder="Kotlin" >
                        <label for="technologies_Kotlin">Kotlin</label>
                    </div>
                    <div class="p_technology">
                        <p>iOS:</p>
                        <input type="checkbox" name="technologies_Swift"  id="technologies_Swift" placeholder="Swift" >
                        <label for="technologies_Swift">Swift</label>

                        <input type="checkbox" name="technologies_Objective-C" id="technologies_Objective-C" placeholder="Objective-C" >
                        <label for="technologies_Objective-C">Objective-C</label>
                    </div>
                    <div class="p_technology">
                        <p>Языки программирования:</p>
                        <input type="checkbox" name="technologies_charp"  id="technologies_charp" placeholder="C#" >
                        <label for="technologies_charp">C#</label>

                        <input type="checkbox" name="technologies_c_plus" id="technologies_c_plus" placeholder="C++" >
                        <label for="technologies_c_plus">C++</label>

                        <input type="checkbox" name="technologies_python" id="technologies_python" placeholder="Python" >
                        <label for="technologies_Python">Python</label>
                    </div>
                    <div>
                        <input type="submit" value="Subscribe!">
                    </div>
                </form>
            </div>
          </div>
        </div>
        % if len(data_clients) > 0:
            % for company, company_data in data_clients.items():
                <div class="detail-section edu">
                    <div class="detail-title">
                        <div class="title-icon">
                            <img class="color-icon-white" width="20" height="20" src="\static\images\icon\now_client.svg"></img>
                        </div>
                        <span>{{company}}</span>
                    </div>
                    <div class="detail-content">
                        % for order in company_data["orders"]:
                            <div class="timeline-block">
                                <h1>{{order['product']}}</h1>
                                <p >{{order['technologies']}}</p>
                            </div>
                        % end
                    </div>
                </div>
            % end
        % end
    </div>
</div>