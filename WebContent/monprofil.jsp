<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page Mon Profil</title>

	<!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!--Font Awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

	<!--Import Google Icon Font-->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!-- Compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="help.css">  
</head>

<body>
<button style="background: black;">
 <a  href="./">Retour à l'accueil</a>
</button>

<h5 style="text-align: center;">Dashboard de Mr ${connectedUser.login}</h5>

 <section style="display: flex;">
    
  <div class="row">
    <div class="col">
      <div class="card">
        <div class="card-image">
          <img src="./assets/profile-bg.jpg">
          <span class="card-title">${prenom} ${name}</span>
          <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
        </div>
        <div class="card-content" style="display: flex;
										    flex-direction: column;
										    justify-content: center;
										    align-items: center;">
        	<h6>Votre Age:</h6>
          	<p style="color: #039be5;">${date} ans</p>
          	<h6>Votre Mail:</h6>
          	<p style="color: #039be5;">${email}</p>
        	<h6>Votre Adresse:</h6>
          	<p style="color: #039be5;">${adresse}</p>
        </div>
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
               <td>${catalogBrowser.currentArticle.unitaryPrice} €</td>   
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
</body>
</html>