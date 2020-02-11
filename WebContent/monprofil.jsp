<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Page Mon Profil</title>

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
	bhref="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<link rel="stylesheet" href="./styles/monprofil.css">

</head>

<body>
	
	<c:if test="${ !empty sessionScope.connectUser && !empty sessionScope.catalogBrowser }">
        <p>Vous êtes ${ sessionScope.connectUser.login } ${ sessionScope.catalogBrowser } !</p>
    </c:if>

	<a href="./" class="waves-effect waves-light btn">Retour à
		l'accueil</a>


	<h5 style="text-align: center;">Dashboard de Mr
		${connectedUser.nom}</h5>

	<section style="display: flex;">

		<div class="row">
			<div class="col">

				<div class="card">

					<div class="card-image">
						<img src="./assets/profile-bg.jpg"> <span class="card-title">
							${connectedUser.prenom} ${connectedUser.nom}</span> <a
							class="btn-floating halfway-fab waves-effect waves-light red modal-trigger"
							href="#modal1"> <i class="material-icons">settings</i>
						</a>


					</div>

					<div class="card-content"
						style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
						<h6>Votre Age:</h6>
						<p style="color: #039be5;">${connectedUser.age} ans</p>
						<h6>Votre Mail:</h6>
						<p style="color: #039be5;">${connectedUser.login}</p>
						<h6>Votre Adresse:</h6>
						<p style="color: #039be5;">${connectedUser.adresse}</p>
					</div>

					<!-- Supprimer compte -->
					<ul class="collapsible">
						<li>
							<div class="collapsible-header red white-text">
								<i class="material-icons">delete</i>Supprimer votre compte
							</div>
							<div class="collapsible-body">
								<div class="row">
									<form method="post" action="MonProfil" class="col s12">
										<input name="id" type="hidden" value="${connectedUser.idUser}">
										<input name="mdpuser" type="hidden"
											value="${connectedUser.password}">
										<div class="row">
											<div class="input-field col s12">
												<input name="mdp" id="icon_mdp" type="password"
													class="validate"> <label for="icon_mdp">Votre
													Mot de Passe</label>
											</div>
										</div>
										<button class="btn waves-effect waves-light red col s12"
											type="submit" name="action">Supprimer</button>
									</form>
									<p
										style="background: red; color: white; text-align: center; font-size: 32px;"
										class="errorMessage">${errorMessage}</p>
								</div>
							</div>
						</li>
					</ul>

				</div>
			</div>
		</div>



		<table class="striped responsive-table">
			<thead>
				<tr>
					<th>Id</th>
					<th>Produit</th>
					<th>Description</th>
					<th>Prix</th>
					<th></th>
				</tr>
			</thead>

			<tbody>
				<tr>

					<td>${catalogBrowser.currentArticle.idArticle}</td>
					<td>${catalogBrowser.currentArticle.brand}</td>
					<td>${catalogBrowser.currentArticle.description}</td>
					<td>${catalogBrowser.currentArticle.unitaryPrice}€</td>
					<td><a class="waves-effect waves-light btn-small">Voir</a></td>
				</tr>
				<tr>

					<td>2</td>
					<td>Nike</td>
					<td>1</td>
					<td>150 €</td>
					<td><a class="waves-effect waves-light btn-small">Voir</a></td>
				</tr>
				<tr>

					<td>3</td>
					<td>Reebok</td>
					<td>1</td>
					<td>50 €</td>
					<td><a class="waves-effect waves-light btn-small">Voir</a></td>
				</tr>
				
			</tbody>
		</table>


	</section>

	<!-- Modal Structure -->
	<div id="modal1" class="modal">
		<div class="modal-content">


			<div class="card teal lighten-2 white-text">
				<h6>Modifier vos données</h6>
				<p
					style="background: red; color: white; text-align: center; font-size: 32px;"
					class="errorMessage">${errorMessage}</p>
			</div>

			<div class="card">
				<form method="post" action="signup">
					<label for='prenom'>Votre Prénom :</label> <input required
						name='prenom' type='text' autofocus /> <br /> <label for='name'>Votre
						Nom :</label> <input required name='name' type='text' /> <br /> <label
						for='date'>Votre Date de Naissance :</label> <input required
						name='date' type='date' /> <br /> <label for='email'>Votre
						Email :</label> <input required name='email' type='text' /> <br /> <label
						for='txtPassword'>Votre Mot de Passe :</label> <input required
						name='mdp' type='password' /> <br /> <label for='adresse'>Votre
						Adresse (facultatif):</label>
					<textarea name='adresse'></textarea>
					<br /> <br />

					<button class="btn waves-effect waves-light" type="submit"
						name="btnConnect">
						Valider<i class="material-icons right">send</i>
					</button>
				</form>
			</div>
		</div>
	</div>


	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script src="./js/js.js"></script>

</body>
</html>