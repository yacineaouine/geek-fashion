<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Veuillez vous authentifier</title>
        <link rel='stylesheet' type='text/css' href='style.css' />
    </head>
    <body>
        <h1>Veuillez vous authentifier !</h1>
        <form method="post" action="login">
            <label for='txtLogin'>Login :</label>
            <input id='txtLogin' name='txtLogin' type='text' value='${login}' autofocus /> <br/>
            <label for='txtPassword'>Password :</label>
            <input name='txtPassword' type='password' value='${password}' /> <br/>
            <br/>
            <input name='btnConnect' type='submit' /> <br/>
        </form>     
         <div class="errorMessage">${errorMessage}</div>
    </body>
</html>