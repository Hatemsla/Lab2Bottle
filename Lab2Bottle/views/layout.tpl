<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }} - Team summury</title>
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
    <script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-collapse collapse">
                <ul class="ulmenu">
                    <li class="limenu"><a class="logo" href="/"><img height="30" width="30" src="static\images\logo_team.jpg"/></a></li>
                    <li class="limenu"><a href="/home">Home</a></li>
                    <li class="limenu"><a href="/topic_tarasov">Tarasov Nikita</a></li>
                    <li class="limenu"><a href="/topic_kalashnikov">Kalashnikov Jan</a></li>
                    <li class="limenu"><a href="/topic_rykhlov">Rykhlov Kirill</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container body-content">
        {{!base}}
        <hr />
        <footer>
            <p>&copy; {{ year }} - Team summury</p>
        </footer>
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>

</body>
</html>
