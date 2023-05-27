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
                <form action="/our_clients_new_client" method="post">
                    <div>
                        <label for="name_company">Название организации:</label>
                        <input name="name_company" id="name_company" value="{{name_company}}" placeholder="Название организации" >
                    </div>
                    <div>
                        <label for="required_product">Требуемый продукт</label>
                        <input name="required_product" id="required_product" value="{{required_product}}" placeholder="Требуемый продукт" >
                    </div>
                    <label for="required_product">Требуемый продукт</label>
                    <div>
                        <input type="checkbox" name="required_product" id="required_product" value="{{required_product}}" placeholder="Требуемый продукт" >
                    </div>
                </form>
            </div>
          </div>
        </div>
        <div class="detail-section edu">
            <div class="detail-title">
                <div class="title-icon">
                    <img class="color-icon-white" width="20" height="20" src="\static\images\icon\now_client.svg"></img>
                </div>
                <span>Наши клиенты</span>
            </div>
            <div class="detail-content">
            <div class="timeline-block">
              <h1>Средняя школа № 252</h1>
              <p>Государственное бюджетное образовательное учреждение Красносельского района Санкт-Петербурга</p>
              <time>2011 - 2020</time>
            </div>
            <div class="timeline-block">
              <h1>Факультет среднего профессионального образования ГУАП</h1>
              <p>Федеральное государственное автономное образовательное учреждение высшего профессионального образования "Санкт-Петербургский государственный университет аэрокосмического приборостроения"</p>
              <time>2020 - present</time>
            </div>
          </div>
        </div>
    </div>
</div>