% rebase('layout.tpl', title='Home Page', year=year)

<link rel="stylesheet" href="/static/content/style_main_page.css">
<link rel="stylesheet" href="/static/content/font-awesome.css">


<html lang="en">

	<head>
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<meta content="width=device-width, initial-scale=1.0" name="viewport" />
		<meta http-equiv="X-UA Compatible" content ="IE=edge">
		<link href="https://fonts.googleapis.com/css?family=Bungee+Shade" rel="stylesheet">
	</head>

	<body>
		<div class="wrapper" style="margin-top:50px">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img class="first-slide" src="\static\images\tri1.jpg" alt="First slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Наша команда</h1>
								<p>Молодая команда перспективных разработчиков.</p>
								<p><a class="btn btn-lg btn-primary button-bot" href="https://github.com/Hatemsla/Lab2Bottle" role="button">Наш проект</a></p>
							</div>
						</div>
					</div>
					<div class="item">
						<img class="second-slide" src="\static\images\tri2.jpg" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Наша команда</h1>
								<p>Программирует на таких языках как: C#, C++, Python, Java и др.</p>
								<p><a class="btn btn-lg btn-primary button-bot" href="https://github.com/TNV-801" role="button">Никита</a></p>
							</div>
						</div>
					</div>
					<div class="item">
						<img class="third-slide" src="\static\images\tri3.jpg" alt="Third slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Наша команда</h1>
								<p>Занимается проектировкой баз данных, в частности используем MySQL, SQLite и PostgreSQL.</p>
								<p><a class="btn btn-lg btn-primary button-bot" href="https://github.com/Hatemsla" role="button">Ян</a></p>
							</div>
						</div>
					</div>
					<div class="item">
						<img class="fourth-slide" src="\static\images\tri4.jpg" alt="Fourth slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Наша команда</h1>
								<p>Любит всячески равзлекаться, вкусно кушать и ходить на страшные квесты.</p>
								<p><a class="btn btn-lg btn-primary button-bot" href="https://github.com/kirushaaxd" role="button">Кирилл</a></p>
							</div>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

			<div class="container marketing">

				<div class="row">
					<div class="col-lg-4">
						<div class="image-person-kirill">
							<a href="/topic_rykhlov">
								<img class="img-circle img-circle_kirusha" src="static/images/kirushaaxd.jpeg" alt="Рыхлов Кирилл" width="170" height="170">
							</a>			
						</div>		
						<h2>Рыхлов Кирилл</h2>
						<p class="about-person" >Главный лентяй и создатель схем.</p>
					</div>
					<div class="col-lg-4">
						<div class="image-person-nik">
							<a href="/topic_tarasov">
								<img class="img-circle img-circle_nikitka" src="https://avatars.githubusercontent.com/u/89140653?v=4" alt="Тарасов Никита" width="170" height="170">
							</a>
						</div>		
						<h2>Тарасов Никита</h2>
						<p class="about-person" >Главный ломатель коммитов и дронер.</p>
					</div>
					<div class="col-lg-4">
						<div class="image-person-jan">
							<a href="/topic_kalashnikov">
								<img class="img-circle img-circle_yaya" src="https://avatars.githubusercontent.com/u/81965397?v=4" alt="Калашников Ян" width="170" height="170">
							</a>
						</div>	
						<h2>Калашников Ян</h2>
						<p class="about-person" >Создатель репозитория и главный технический специалист в области Git.</p>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>


