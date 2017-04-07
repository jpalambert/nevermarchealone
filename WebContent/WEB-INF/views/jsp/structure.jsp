<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="titleCode" scope="request">
	<tiles:insertAttribute name="title" />
</c:set>

<!DOCTYPE html>

<!-- <html> -->
<!-- <head> -->
<!-- <!-- Bootstrap --> 
<!-- <!-- Latest compiled and minified CSS --> 
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->

<!-- <!-- Optional theme --> 
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->

<!-- <!-- Latest compiled and minified JavaScript --> 
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> -->

<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->


<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default">
 <a class="navbar-brand" rel="home" href="#" title="never walk alone">
                <img style="max-width:40px; margin-top: -7px;"
                     src="http://chantalserriere.blog.lemonde.fr/files/2008/03/marcheur.1205428588.png" >
            </a>
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Never Marche Alone</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="connexion">Accueil</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">recherche <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="rechercheacc">Recherche accompagnateur</a></li>
          <li><a href="recherche">Recherche utilisateur</a></li>
          
         
        </ul>
      </li>
      <li><a href="subscribe">subscribe</a></li>
     
    </ul>
  </div>
</nav>
  
</body>
</html>
  <div class="container">
                
     



<!-- Materialize -->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

</head>

<body>
	

	<div class="container">
		<tiles:insertAttribute name="body" />
	</div>

	
</body>
</html>