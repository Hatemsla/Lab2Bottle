% rebase('layout.tpl', title=title, year=year)

<link rel="stylesheet" href="/static/content/style_for_personal_page.css">

<div class="wrapper" style="margin-top:50px">
  <div class="intro">
    <div class="profile">
      <div class="photo">
        <img src="https://avatars.githubusercontent.com/u/89140653?v=4">
      </div>
      <div class="bio">
        <h1 class="name">Тарасов Никита Вячеславович</h1>
        <p class="profession">Многофункциональный разработчик</p>
      </div>
    </div>
    <div class="intro-section about">
      <h1 class="title">about me</h1>
      <p class="paragraph">
       Всем привет, я backend разработчик, обучаюсь в ФСПО ГУАП на специальности: "Информационные системы и программирование". Чаще всего я разрабатываю приложение на C# core, но также пробую себя и в других направлениях.
      </p>
    </div>
    <div class="intro-section contact">
      <h1 class="title">Contact</h1>
      <div class="info-section">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\phone-solid.svg"></img>
        <span>+7-965-721-07-66</span>
      </div>
      <div class="info-section">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\location-dot-solid.svg"></img>
        <span>Россия, Санкт-Петербруг</span>
      </div>
      <div class="info-section">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\envelope-solid.svg"></img>
        <span>nik601rus@yandex.ru</span>
      </div>
      <div class="info-section link">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\vk.svg"></img>
        <a target="_blank" rel="author" href="https://vk.com/nik701rus">
          <span>VK</span>
        </a>
      </div>
    </div>
    <div class="intro-section follow">
      <h1 class="title">Follow</h1>
      <div class="info-section link">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\github.svg">
        <a target="_blank" rel="author" href="https://github.com/TNV-801">
          <span>GitHub: TNV-801</span>
        </a>
      </div>
    </div>
  </div>
  <div class="detail">
    <div class="detail-section edu">
      <div class="detail-title">
        <div class="title-icon">
          <img class="color-icon-white" width="20" height="20" src="\static\images\icon\user-graduate-solid.svg"></img>
        </div>
        <span>Образование</span>
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
    <div class="detail-section pg-skill">
      <div class="detail-title">
        <div class="title-icon">
          <img class="color-icon-white" width="20" height="20" src="\static\images\icon\laptop-code-solid.svg"></img>
        </div>
        <span>Навыки программирования</span>
      </div>
      <div class="detail-content">
        <ul class="pg-list">
            <li class="pg-list-li">
            <span class="pg-list-li-span">C# core</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 90%"></div>
            </div>
            </li>
            <li class="pg-list-li">
            <span class="pg-list-li-span">WPF</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 70%"></div>
            </div>
            </li>
            <li class="pg-list-li">
            <span class="pg-list-li-span">SQL</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 60%"></div>
            </div>
            </li>
            <li class="pg-list-li">
            <span class="pg-list-li-span">Python3</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 20%"></div>
            </div>
            </li>
            <li class="pg-list-li">
            <span class="pg-list-li-span">Java</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 10%"></div>
            </div>
            </li>
            <li class="pg-list-li">
            <span class="pg-list-li-span">HTML5</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 10%"></div>
            </div>
            </li>
            <li class="pg-list-li">
            <span class="pg-list-li-span">CSS3</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 7%"></div>
            </div>
            </li>
        </ul>
      </div>
    </div>
    <div class="detail-section tool-skill">
      <div class="detail-title">
        <div class="title-icon">
          <img class="color-icon-white" width="20" height="20" src="\static\images\icon\screwdriver-wrench-solid.svg"></img>
        </div>
        <span>Инструменты разработки</span>
      </div>
      <div class="detail-content">
        <ul class="tool-list">
          <li>
            <svg viewbox="0 0 100 100">
              <circle cx="50" cy="50" r="45"></circle>
              <circle class="cbar" cx="50" cy="50" r="45" style="--percent: 0.7"></circle>
            </svg>
            <span class="tl-name">Visual Studio</span>
            <span class="tl-exp">70%</span>
          </li>
          <li>
            <svg viewbox="0 0 100 100">
              <circle cx="50" cy="50" r="45"></circle>
              <circle class="cbar" cx="50" cy="50" r="45" style="--percent: 0.55"></circle>
            </svg>
            <span class="tl-name">Visual Studio Code</span>
            <span class="tl-exp">55%</span>
          </li>
          <li>
            <svg viewbox="0 0 100 100">
              <circle cx="50" cy="50" r="45"></circle>
              <circle class="cbar" cx="50" cy="50" r="45" style="--percent: 0.7"></circle>
            </svg>
            <span class="tl-name">Git</span>
            <span class="tl-exp">70%</span>
          </li>
          <li>
            <svg viewbox="0 0 100 100">
              <circle cx="50" cy="50" r="45"></circle>
              <circle class="cbar" cx="50" cy="50" r="45" style="--percent: 0.74"></circle>
            </svg>
            <span class="tl-name">MySQL Workbench</span>
            <span class="tl-exp">74%</span>
          </li>
        </ul>
      </div>

    </div>
    <div class="detail-section interests">
      <div class="detail-title">
        <div class="title-icon">
          <img class="color-icon-white" width="20" height="20" src="\static\images\icon\heart-solid.svg"></img>
        </div>
        <span>Увлечения</span>
      </div>
      <div class="detail-content">
        <div class="outer-frame">
          <ul class="favor-list">
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\drone-svgrepo-com.svg"></img>
              <span>FPV</span>
            </li>
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\music-solid.svg"></img>
              <span>Музыка</span>
            </li>
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\book-solid.svg"></img>
              <span>Самообучение</span>
            </li>
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\person-running-solid.svg"></img>
              <span>Спорт</span>
            </li>
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\gamepad-solid.svg"></img>
              <span>ПК игры</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

