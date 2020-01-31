<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Veuillez vous authentifier</title>
        <link rel='stylesheet' type='text/css' href='styles.css' />
        <%
  SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
  String date = sdf.format(new Date());
%>
    </head>
    <body>
    <h1 style="color: green">Vous êtes authentifié !</h1>
    	<h3>Nous sommes le: <%=date%></h3>
    	<h1>Bonjour <%= request.getParameter( "txtLogin" ) %></h1>
        
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