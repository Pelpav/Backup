<%-- 
    Document   : etudiant
    Created on : 30 janv. 2024, 17:35:22
    Author     : pelpav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/style.css" />
        <title>Etudiant Christian</title>
    </head>
    <body>
        <form action="../EtudiantServlet" >
                    <label for="matricule">MATRICULE</label>
                    
                    <input id="matricule" type="text" name="matricule"/> <br><br>

                    <label for="nom">Nom</label>
                    <input id="nom" type="text" name="nom"/><br><br>

                    <label for="prenom">Prenom</label>
                    <input id="prenom" type="text" name="prenom"/><br><br>
                    
                    <label for="telephone">Telephone</label>
                    <input id="telephone" type="text" name="telephone"/><br><br>

                    <label for="classe">Classe</label>
                    <input id="classe" type="text" name="classe"/><br><br>

                    <input id="valide" type="submit" value="OK" name="Valider"/>
        </form>
    </body>
</html>
