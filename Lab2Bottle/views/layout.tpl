<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
    <script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-collapse collapse">
                <ul class="ulmenu">
                    <li class="limenu"><a class="logo" href="/"><img height="30" width="30" src="static\images\logo_team.png"/></a></li>
                    <li class="limenu"><a href="/home">Главная</a></li>
                    <li class="limenu"><a href="/topic_tarasov">Тарасов Никита</a></li>
                    <li class="limenu"><a href="/topic_kalashnikov">Калашников Ян</a></li>
                    <li class="limenu"><a href="/topic_rykhlov">Рыхлов Кирилл</a></li>
                    <li class="limenu"><a href="/actual_novelties">Актуальные новинки</a></li>
                    <li class="limenu"><a href="/reviews_page">Отзывы</a></li>
                    <li class="limenu"><a href="/our_clients">Наши клиенты</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container body-content">
        {{!base}}
        <hr />
        <footer>
            <p>&copy; {{ year }} - Командное резюме</p>
        </footer>
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>

</body>
</html>
