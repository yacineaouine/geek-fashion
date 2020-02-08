<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Bienvenue sur JavaPress</title>
        <link rel='stylesheet' type='text/css' href='styles/login.css' />
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
    </head>
    
    <body>
        <h3 style="text-align: center">Bienvenue sur JavaPress !</h3>
        <h6 style="text-align: center">Veuillez vous authentifier pour accéder à votre compte d'administrateur</h6>
   <div class="card">
    <form method="post" action="login">
            <label for='txtLogin'>Votre Login :</label>
            <input id='txtLogin' name='txtLogin' type='text' value='${login}' autofocus /> <br/>
            <label for='txtPassword'>Votre Mot de Passe :</label>
            <input name='txtPassword' type='password' value='${password}' /> <br/>
            <br/>
            <p>
		     <label>
		       <input type="checkbox" />
		       <span>Se souvenir de moi</span>
		     </label>
		   </p>
            <button class="btn waves-effect waves-light" type="submit" name="btnConnect">Submit
			    <i class="material-icons right">send</i>
			</button>
        </form> 
        
    <p id="nav">
		<a rel="nofollow" href="https://yacineaouine.github.io/">Inscription</a> | 	
		<a href="https://yacineaouine.github.io/">Mot de passe oublié&nbsp;?</a>
	</p>
	<p id="backtoblog"><a href="./">
		← Retour vers Geek&Fashion		</a>
		</p>
  </div>
           
         <div class="errorMessage">${errorMessage}</div>
    </body>
</html>