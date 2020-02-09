<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Se connecter</title>

<!-- BOOTSTRAP -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!--Font Awesome-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">

<!-- MARERIAL -->
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<link rel='stylesheet' type='text/css' href='styles/signin.css' />
</head>

<body>
	<a href="./" class="waves-effect waves-light btn">Retour à
		l'accueil</a>


	<h3 style="text-align: center">Se Connecter</h3>
	<div class="card">
		<p
			style="background: red; color: white; text-align: center; font-size: 32px;"
			class="errorMessage">${errorMessage}</p>
		<form method="post" action="signin">
			<label for='email'>Votre Email :</label> <input required
				id='emailConnect' name='txtLogin' type='text' value='${login}'
				autofocus id="passwordConnect" required /> <br /> <label
				for='txtPassword'>Votre Mot de Passe :</label> <input
				name='txtPassword' type='password' value='${password}' /> <br /> <br />

			<p>
				<label> <input type="checkbox" /> <span>Se souvenir
						de moi</span>
				</label>
			</p>
			<button class="btn waves-effect waves-light" type="submit"
				name="btnConnect">
				Valider<i class="material-icons right">send</i>
			</button>
		</form>

	</div>



	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script src="./js/js.js"></script>
</body>
</html>