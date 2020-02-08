<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Veuillez vous authentifier</title>
        <link rel='stylesheet' type='text/css' href='styles.css' />
     
    </head>
    <body>
    <h1 style="color: green">Vous êtes authentifié !</h1>
 
   
        
        <table border ="1" width="500" align="center"> 
         <tr bgcolor="red" color="white"> 
          <th><b>Nom</b></th> 
           <th><b>Prénom</b></th> 
            <th><b>Age</b></th> 
            <th><b>Mail</b></th> 
        
         </tr> 
      
            <tr> 
                <td> ${prenom} </td>   
                <td> ${nom} </td> 
                <td> ${age} </td>  
               <td> ${email} </td>   
            </tr> 
           
        </table> 
    </body>
</html>