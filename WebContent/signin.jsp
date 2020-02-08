<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Se connecter</title>
     
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!--Font Awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    
    <link rel="stylesheet" href="./styles/style.css">
</head>

<body>

<button style="background: black;">
 <a  href="./">Retour à l'accueil</a>
</button>

	<h1 style="text-align: center;">Se connecter</h1>
 
      <p style="background: red; color: white; text-align: center; font-size: 32px;" class="errorMessage">${errorMessage}</p>

    
 <form method="post" class="form" id="form2" action="signin">
                            
   
    <p class="email">
      <input name="txtLogin" value="${login}" type="text" class="validate[required,custom[email]] feedback-input" id="emailConnect" required placeholder="Votre Email" />
    </p>
    
     <p class="mdp">
      <input name="txtPassword" value="${password}" type="password"  class="validate[required,custom[password]] feedback-input" id="passwordConnect" required placeholder="Votre Mot de Passe" />
    </p>
    
    
    <div class="submit">
      <input type="submit" value="Envoyer" id="button-blue"/>
      <div class="ease"></div>
    </div>
  </form>


  
     
</body>
</html>