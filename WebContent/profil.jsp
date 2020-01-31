<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>S'inscrire</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
<h1>S'inscrire</h1>
         <%  String email = (String)session.getAttribute("email");
        
        if((email.contains("@gmail.com") || email.contains("@hotmail.fr") || email.contains("@outlook.fr"))) {%> <p></p><%} 
        else { %><p style="background: red; color: white; text-align: center">Veuillez entrer un mail valide</p> <% } %>
        <%  String mdp = (String)session.getAttribute("mdp");
        if(mdp.length() >= 8 ) {%> <p></p><%} 
        else { %><p style="background: red; color: white; text-align: center">Veuillez entrer un mdp valide</p> <% } %>
 <form method="post" class="form" id="form1" action="monprofil">
                            
    <p class="name"> 
    ${name}
      <input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" required placeholder="Votre Nom" id="name" />
    </p>
    
    <p class="prenom">
    ${prenom}
      <input name="prenom" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" required placeholder="Votre Prénom" id="prenom" />
    </p>
    
    <p class="email">
    ${email}
      <input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email" required placeholder="Votre Email" />
    </p>
    
     <p class="mdp">
     ${mdp}
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


     
</body>
</html>