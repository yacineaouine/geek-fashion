<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page d'aide</title>
		
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
	<link rel="stylesheet" href="./styles/style.css">
	<link rel="stylesheet" href="./styles/help.css">
 
</head>

<body>
<!--En-tête de Navigation-->

    <header >

        <!--Navigation Client-->
        <nav class="navbar navbar-expand-sm bg-light navbar-light">

            <!--LOGO-->
            <div class="btn-back"><a href="./">Retour <i class="large material-icons">chevron_left</i></a></div>
               
    </header>

<main id="ancre">
<h3 class="txt-align">Convertisseur de monnaie</h3>

<form method="post" action="help">


<!-- Montant -->
	<div class="">
    <div class="col s12">
      <div class="row">
        <div class="input-field col s12">
          <i class="material-icons prefix">money</i>
          <input type="number" name="montant" id="autocomplete-input" class="autocomplete" required>
          <label for="autocomplete-input">Montant</label>
        </div>
      </div>
    </div>
  </div>
  
  
  <!-- Devise une -->
  <div class="input-field col s12">
    <select name="devise1">
      <option value=""  disabled selected>Choisir la devise 1</option>
      <option value="dollars">Dollars</option>
      <option value="euro">Euro</option>
    </select>
    <label>Devise 1</label>
  </div>
    
  
    
    
    <!-- Devse deux -->
    <div class="input-field col s12">
    <select name="devise2">
      <option value="" disabled selected>Choisir la devise 2</option>
      <option value="dollars">Dollars</option>
      <option value="euro">Euro</option>
    </select>
    <label>Devise 2</label>
  </div>
  
  <button class="btn waves-effect waves-light" type="submit" name="action">Calculer
    <i class="material-icons right">send</i>
  </button>
  </form>
  
  <div class="row block_result">
    <div class="col s12 m6">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Résultat</span>
          <p>Montant: ${montant } ${devise1 }</p>
          <p>Le résultat est: <span class="resultat">${resultat } ${devise2 }</span></p>
        </div>
      </div>
    </div>
  </div>
  </main>
  
  <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
     <script src="./js/js.js"></script>
</body>
</html>