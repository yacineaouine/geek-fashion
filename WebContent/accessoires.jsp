
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accessoires de Geek&Fashion</title>



<!-- MARERIAL -->
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

</head>
<body>

	<header>

		<nav class="nav-extended black">
			<div class="nav-wrapper">
				<a href="./" class="brand-logo">Geek&Fashion</a> <a href="#"
					data-target="mobile-demo" class="sidenav-trigger"><i
					class="material-icons">menu</i></a>
				<ul id="nav-mobile" class="right hide-on-med-and-down">
					<li><a class="nav-link" href="./signup.jsp">Créer un compte</a></li>
					<li><a class="nav-link" href="./signin.jsp">Se connecter</a></li>
					<li><a class="nav-link" href="help">Aide</a></li>
					<li><a class="nav-link " href="./login.jsp">Administrateur</a></li>
				</ul>
			</div>
			<div class="nav-content">
				<ul class="tabs tabs-transparent">
					<li class="tab"> <a id="new" class="nav-link heartbeat" href="#">Nouveautés</a></li>
					<li class="tab"> <a class="nav-link bold-text link-txt" href="#">Homme</a></li>
					<li class="tab disabled"><a class="nav-link bold-text link-txt" href="#">Femme</a></li>
					<li class="tab"><a class="nav-link bold-text link-txt" href="#">Enfant</a></li>
					<li class="tab"><a class="nav-link bold-text link-txt" href="Accessoires">Accessoires</a></li>
				</ul>
			</div>
		</nav>

		<ul class="sidenav" id="mobile-demo">
			<li><a class="nav-link" href="./signup.jsp">Créer un compte</a></li>
			<li><a class="nav-link" href="./signin.jsp">Se connecter</a></li>
			<li><a class="nav-link" href="help">Aide</a></li>
			<li><a class="nav-link " href="./login.jsp">Administrateur</a></li>
		</ul>

	</header>

<h4 class="center-align">Nos Accessoires</h4>

	<div class="row">
		<div class="col s12">
			<c:forEach items="${myArticles}" var="art">

				<div class="col s3 ">
					<div class="card white">
						<div class="card-image">
							<img src="assets/logi.jpg"> <span class="card-title"><c:out
									value="${art.brand}"></c:out></span>
						</div>
						<div class="card-content black-text">

							<p>
								<c:out value="${art.description}"></c:out>
							</p>
						</div>
						<div class="card-action">
							<a href="#"><c:out value="${art.unitaryPrice}"></c:out> €</a>
						</div>
					</div>
				</div>


			</c:forEach>


		</div>
	</div>

	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script src="./js/js.js"></script>
</body>
</html>