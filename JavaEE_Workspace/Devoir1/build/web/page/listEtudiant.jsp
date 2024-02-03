<%-- 
    Document   : listEtudiant
    Created on : 30 janv. 2024, 18:27:16
    Author     : pelpav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List du Etudiant</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Matricule</th>           
                    <th>Nom</th>
                    <th>Prenom</th>   
                    <th>Telephone</th>
                    <th>Classe</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${etudiant.matricule}</td>  
                    <td>${etudiant.nom}</td>
                    <td>${etudiant.prenom}</td>
                    <td>${etudiant.telephone}</td>      
                    <td>${etudiant.classe}</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
