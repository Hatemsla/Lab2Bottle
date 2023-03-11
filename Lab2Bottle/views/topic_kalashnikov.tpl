% rebase('layout.tpl', title=title, year=year)

<link rel="stylesheet" href="/static/content/style_for_personal_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">

<div class="wrapper" style="margin-top:50px">
  <div class="intro">
    <div class="profile">
      <div class="photo">
        <img src="https://avatars.githubusercontent.com/u/81965397?v=4">
      </div>
      <div class="bio">
        <h1 class="name">Калашников Ян Русланович</h1>
        <p class="profession">Многофункциональный разработчик</p>
      </div>
    </div>
    <div class="intro-section about">
      <h1 class="title">About me</h1>
      <p class="paragraph">
        Привет, Я Калашников Ян!
        Всем привет, я unity-разработчик, я учусь в ГУАПе, и моя специальность - программист. Недавно я попробовал
        улучшить свои навыки работы с веб-интерфейсом. Мое любимое занятие - наблюдать за портфолио других людей.
      </p>
    </div>
    <div class="intro-section contact">
      <h1 class="title">Contact</h1>
      <div class="info-section">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\phone-solid.svg">
        <span>+7-965-582-08-60</span>
      </div>
      <div class="info-section">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\location-dot-solid.svg">
        <span>Россия, Санкт-Петербург</span>
      </div>
      <div class="info-section">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\envelope-solid.svg">
        <span>kalashnikovjan@yandex.ru</span>
      </div>
      <div class="info-section link">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\vk.svg">
        <a target="_blank" rel="author" href="https://vk.com/jan_47">
          <span>VK</span>
        </a>
      </div>
    </div>
    <div class="intro-section follow">
      <h1 class="title">Follow</h1>
      <div class="info-section link">
        <img class="color-icon-blue" width="20" height="20" src="\static\images\icon\github.svg">
        <a target="_blank" rel="author" href="https://github.com/Hatemsla">
          <span>GitHub: Hatemsla</span>
        </a>
      </div>
    </div>
  </div>
  <div class="detail">
    <div class="detail-section edu">
      <div class="detail-title">
        <div class="title-icon">
          <img class="color-icon-white" width="20" height="20" src="\static\images\icon\user-graduate-solid.svg">
        </div>
        <span>Образование</span>
      </div>
      <div class="detail-content">
        <div class="timeline-block">
          <h1>Гимназия №3</h1>
          <p>Муниципальное бюджетное образовательное учреждение "Гимназия № 3 Зеленодольского муниципального района Республики Татарстан"</p>
          <time>2011 - 2020</time>
        </div>
        <div class="timeline-block">
          <h1>Факультет среднего профессионального образования ГУАП</h1>
          <p>Федеральное государственное автономное образовательное учреждение высшего профессионального образования "Санкт-Петербургский государственный университет аэрокосмического приборостроения"</p>
          <time>2020 - наши дни</time>
        </div>
      </div>
    </div>
    <div class="detail-section pg-skill">
      <div class="detail-title">
        <div class="title-icon">
          <img class="color-icon-white" width="20" height="20" src="\static\images\icon\laptop-code-solid.svg">
        </div>
        <span>Навыки программирования</span>
      </div>
      <div class="detail-content">
        <ul class="pg-list">
            <li class="pg-list-li">
            <span class="pg-list-li-span">C# core</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 80%"></div>
            </div>
            </li>
            <li class="pg-list-li">
            <span class="pg-list-li-span">WPF</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 50%"></div>
            </div>
            </li>
            <li class="pg-list-li">
            <span class="pg-list-li-span">SQL</span>
            <div class="sb-skeleton">
                <div class="skillbar" style="--pgbar-length: 30%"></div>
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
          <img class="color-icon-white" width="20" height="20" src="\static\images\icon\screwdriver-wrench-solid.svg">
        </div>
        <span>Инструменты разработки</span>
      </div>
      <div class="detail-content">
        <ul class="tool-list">
          <li>
            <svg viewbox="0 0 100 100">
              <circle cx="50" cy="50" r="45"></circle>
              <circle class="cbar" cx="50" cy="50" r="45" style="--percent: 0.8"></circle>
            </svg>
            <span class="tl-name">Visual Studio</span>
          </li>
          <li>
            <svg viewbox="0 0 100 100">
              <circle cx="50" cy="50" r="45"></circle>
              <circle class="cbar" cx="50" cy="50" r="45" style="--percent: 0.6"></circle>
            </svg>
            <span class="tl-name">Jetbrains Rider</span>
          </li>
          <li>
            <svg viewbox="0 0 100 100">
              <circle cx="50" cy="50" r="45"></circle>
              <circle class="cbar" cx="50" cy="50" r="45" style="--percent: 0.7"></circle>
            </svg>
            <span class="tl-name">Git</span>
          </li>
          <li>
            <svg viewbox="0 0 100 100">
              <circle cx="50" cy="50" r="45"></circle>
              <circle class="cbar" cx="50" cy="50" r="45" style="--percent: 0.74"></circle>
            </svg>
            <span class="tl-name">MySQL Workbench</span>
          </li>
        </ul>
      </div>

    </div>
    <div class="detail-section interests">
      <div class="detail-title">
        <div class="title-icon">
          <img class="color-icon-white" width="20" height="20" src="\static\images\icon\heart-solid.svg">
        </div>
        <span>Интересы</span>
      </div>
      <div class="detail-content">
        <div class="outer-frame">
          <ul class="favor-list">
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\gamepad-solid.svg">
              <span>Игры</span>
            </li>
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\music-solid.svg">
              <span>Музыка</span>
            </li>
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\unity.svg">
              <span>Unity</span>
            </li>
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\book-solid.svg">
              <span>Самообучение</span>
            </li>
            <li>
              <img class="color-icon-blue" width="40" height="40" src="\static\images\icon\person-running-solid.svg">
              <span>Спорт</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

