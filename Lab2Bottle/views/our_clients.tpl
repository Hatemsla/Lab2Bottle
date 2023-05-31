% rebase('layout.tpl', year=year, data_clients=data_clients, required_product=required_product, name_company=name_company, text_error=text_error, phone=phone, email=email)
<link rel="stylesheet" href="/static/content/style_our_clints.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">


<div class="wrapper" style="margin-top:50px">
    <div class="intro">
        <div class="profile">
            <div class="photo">
                <img class="color-icon-white" src="\static\images\icon\now_client.svg"  alt="Картинка заказов и сотрудничества">
            </div>
            <div class="bio">
                <h1 class="name">Наши клиенты:</h1>
            </div>
        </div>
        <div class="intro-section contact">
            <form action="/our_clients_new_client" method='post'>
                <div class="div-photo-name">
                    <img class="color-icon-blue" width="30" height="30" src="\static\images\icon\new_client.svg">
                    <h1 class="title">Станьте нашим клиентом</h1>
                </div>
                % if len(text_error) > 5:
                    <div class="error-message">
                        <span class="error-text">{{text_error}}</span>
                    </div>
                %end
                <div class="info-section">
                    <label for="name_company">Название организации:</label>
                    <input name="name_company" id="name_company" value="{{name_company}}" required
                           pattern="^(?!\d+$).{2,}$" class="input-field" maxlength="40"
                            title="Укажите название компании, которое состоит не только из цифр и длиной более 2 знаков">
                </div>
                <div class="info-section">
                    <label for="required_product">Требуемый продукт:</label>
                    <input name="required_product" id="required_product" value="{{required_product}}" required
                           pattern="^(?!\d+$).{2,}$" class="input-field" maxlength="50"
                            title="Укажите требуемый продукт. Название не может состоять только из цифр и должно быть длиной более 2 знаков ">
                </div>
                <div class="info-section">
                    <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\phone-solid.svg"></img>
                    <label for="company_phone">Телефон для обратной связи:</label>
                    <input name="company_phone" id="company_phone" value="{{phone}}"
                                   pattern="^\+7\s\d{3}\s\d{3}\s\d{2}\s\d{2}$" class="input-field"
                                   title="Введите российский номер в формате +7 xxx xxx xx xx" required >
                </div>
                <div class="info-section">
                    <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\envelope-solid.svg"></img>
                    <label for="company_phone">Email для обратной связи:</label>
                    <input name="company_email" id="company_email"  class="input-field"
                           pattern="^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$"
                           value="{{email}}"
                           title="Осуществляется проверка адреса Email. Введите существующий адрес." required>
                </div>
                <div class="info-section">
                    <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\technologies.svg"></img>
                    <label for="company_phone">Стек технологий:</label>

                    <div>
                        <p class="p_technology">Frontend:</p>
                        <input  type="checkbox" name="technologies_html" id="technologies_html" placeholder="HTML" >
                        <label class="label-in-stack" for="technologies_html">HTML</label>

                        <input type="checkbox" name="technologies_css" id="technologies_css" placeholder="CSS" >
                        <label class="label-in-stack" for="technologies_css">CSS</label>

                        <input type="checkbox" name="technologies_js" id="technologies_js" placeholder="JavaScript" >
                        <label class="label-in-stack" for="technologies_js">JavaScript</label>

                        <input type="checkbox" name="technologies_react" id="technologies_react" placeholder="React" >
                        <label class="label-in-stack" for="technologies_react">React</label>
                    </div>
                    <div>
                        <p class="p_technology">Backend:</p>
                        <input type="checkbox" name="technologies_Node"  id="technologies_Node" placeholder="Node" >
                        <label class="label-in-stack" for="technologies_Node">Node</label>

                        <input type="checkbox" name="technologies_django" id="technologies_django" placeholder="Django" >
                        <label class="label-in-stack" for="technologies_django">Django</label>

                        <input type="checkbox" name="technologies_asp" id="technologies_asp" placeholder="ASP.NET" >
                        <label class="label-in-stack" for="technologies_asp">ASP.NET</label>

                        <input type="checkbox" name="technologies_php" id="technologies_php" placeholder="PHP" >
                        <label class="label-in-stack" for="technologies_php">PHP</label>
                    </div>
                    <div>
                        <p class="p_technology">Базы данных:</p>
                        <input type="checkbox" name="technologies_MySQL"  id="technologies_MySQL" placeholder="MySQL" >
                        <label class="label-in-stack" for="technologies_MySQL">MySQL</label>

                        <input type="checkbox" name="technologies_PostgreSQL" id="technologies_PostgreSQL" placeholder="PostgreSQL" >
                        <label class="label-in-stack" for="technologies_PostgreSQL">PostgreSQL</label>

                        <input type="checkbox" name="technologies_MongoDB" id="technologies_MongoDB" placeholder="MongoDB" >
                        <label class="label-in-stack" for="technologies_MongoDB">MongoDB</label>
                    </div>
                    <div >
                        <p class="p_technology">Android:</p>
                        <input type="checkbox" name="technologies_Java"  id="technologies_Java" placeholder="Java" >
                        <label class="label-in-stack" for="technologies_Java">Java</label>

                        <input type="checkbox" name="technologies_Kotlin" id="technologies_Kotlin" placeholder="Kotlin" >
                        <label class="label-in-stack" for="technologies_Kotlin">Kotlin</label>
                    </div>
                    <div>
                        <p class="p_technology">iOS:</p>
                        <input type="checkbox" name="technologies_Swift"  id="technologies_Swift" placeholder="Swift" >
                        <label class="label-in-stack" for="technologies_Swift">Swift</label>

                        <input type="checkbox" name="technologies_Objective-C" id="technologies_Objective-C" placeholder="Objective-C" >
                        <label class="label-in-stack" for="technologies_Objective-C">Objective-C</label>
                    </div>
                    <div>
                        <p class="p_technology">Языки программирования:</p>
                        <input type="checkbox" name="technologies_charp"  id="technologies_charp" placeholder="C#" >
                        <label class="label-in-stack" for="technologies_charp">C#</label>

                        <input type="checkbox" name="technologies_c_plus" id="technologies_c_plus" placeholder="C++" >
                        <label class="label-in-stack" for="technologies_c_plus">C++</label>

                        <input type="checkbox" name="technologies_python" id="technologies_python" placeholder="Python" >
                        <label class="label-in-stack" for="technologies_Python">Python</label>
                    </div>
                </div>
                <div class="container-button">
                    <button class="btn" type="submit" >Отправить заказ</button>
                </div>
            </form>
        </div>
    </div>

    <div class="detail">
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