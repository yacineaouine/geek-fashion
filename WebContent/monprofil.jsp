<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page Mon Profil</title>
</head>
<body>
<h1>Bienvenue Mr ${prenom}</h1>
   <table border ="1" width="500" align="center"> 
         <tr bgcolor="red" color="white"> 
          <th><b>Nom</b></th> 
           <th><b>Prénom</b></th> 
            <th><b>Mail</b></th> 
            <th><b>Adresse</b></th> 
        
         </tr> 
      
            <tr> 
                <td> ${prenom} </td>   
                <td> ${name} </td> 
                <td> ${email} </td>  
               <td> ${adresse} </td>   
            </tr> 
           
        </table> 
</body>
</html>