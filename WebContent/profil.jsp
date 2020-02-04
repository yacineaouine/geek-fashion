<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulaire d'authentification</title>
     
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!--Font Awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    
    <link rel="stylesheet" href="./style.css">
</head>

<body>

<section>

<h1 style="text-align: center;">S'inscrire</h1>
   <p style="background: red; color: white; text-align: center; font-size: 32px;"> ${message}</p>
 <form method="post" class="form" id="form1" action="monprofil">
                            
    <p class="name"> 
      <input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" required placeholder="Votre Nom" id="name" />
    </p>
    
    <p class="prenom">
      <input name="prenom" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" required placeholder="Votre Prénom" id="prenom" />
    </p>
    
     <p class="date">
      <input name="date" type="date" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" required placeholder="Votre date de naissance" id="date" />
    </p>
    
    <p class="email">
      <input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email" required placeholder="Votre Email" />
    </p>
    
     <p class="mdp">
      <input name="mdp" type="password" class="validate[required,custom[password]] feedback-input" id="password" required placeholder="Votre Mot de Passe" />
    </p>
    
    <p class="text">
      <textarea name="adresse" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="Votre Adresse (facultatif)"></textarea>
    </p>
    
    
    <div class="submit">
      <input type="submit" value="Envoyer" id="button-blue"/>
      <div class="ease"></div>
    </div>
  </form>

	<h1 style="text-align: center;">Se connecter</h1>
 
 <form method="post" class="form" id="form2" action="monprofil">
                            
   
    <p class="email">
      <input name="emailConnect" type="text" class="validate[required,custom[email]] feedback-input" id="emailConnect" required placeholder="Votre Email" />
    </p>
    
     <p class="mdp">
      <input name="mdpConnect" type="password" class="validate[required,custom[password]] feedback-input" id="passwordConnect" required placeholder="Votre Mot de Passe" />
    </p>
    
    
    <div class="submit">
      <input type="submit" value="Envoyer" id="button-blue"/>
      <div class="ease"></div>
    </div>
  </form>
  
  </section>
     
</body>
</html>