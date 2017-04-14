<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="titleCode" scope="request">
	<tiles:insertAttribute name="title" />
</c:set>
<!DOCTYPE html>
<html lang="en">


  <head>
    <style type="text/css">
      html, body { height: 100%; margin: 25px; padding: 0; }
      #map { height: 70%; border: 5px solid midnightblue}
    </style>
     
  
  <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="css/bootstrap.min.css">


 <script
	src="js/bootstrap.min.js"></script>
	
	<!-- Materialize -->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/css/essai.css"/>" media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  </head>
  
  
  <body>
<nav class="navbar navbar-default">
		<a class="navbar-brand" rel="home" href="#" title="never walk alone">
			<img style="max-width: 40px; margin-top: -7px;"
			src="http://chantalserriere.blog.lemonde.fr/files/2008/03/marcheur.1205428588.png">
		</a>
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Never Marche Alone</a>
			</div>
			<ul class="nav navbar-nav" style="float: none">
			<c:if test="${user.username != null }">
				<li ><a href="connex">Accueil<span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
				</c:if>
				<c:if test="${user.username == null }">
				<li class="active"><a href="connexion">Login</a></li>
				</c:if>
				<!--       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">recherche <span class="caret"></span></a> -->
				<!--         <ul class="dropdown-menu"> -->
				<c:if test="${user.etat == 'accompagne'}">
					<li><a href="recherche">Rechercher un accompagnateur <span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
				</c:if>

				<c:if test="${user.etat == 'accompagnateur'}">
					<li><a href="rechercheacc">Rechercher un utilisateur <span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
				</c:if>

		
				<li><a href="about">About <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></a></li>
				<li><a href="cgu">C.G.U. <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></a></li>
				<li><a href="faq">F.A.Q. <span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span></a></li>
				
				<c:if test="${user.username == null }">
				<li><a href="subscribe">Subscribe</a></li>
				</c:if>
				
				<c:if test="${user.username != null }">
				<li class="dropdown" style="float: right"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#">Bienvenue
						${user.username} <span class="glyphicon glyphicon-user" aria-hidden="true"></span><span class="caret"></span>
						
				</a>
					<ul class="dropdown-menu">					
						<li><a href="modifProfil">Modifier profil</a></li>
						<li><a href="profilDetaille">Profil détaillé</a></li>
						<li><a href="deconnexion">Déconnexion <span class="glyphicon glyphicon-off" aria-hidden="true"></span></a></li>
					</ul></li>
					</c:if>
			</ul>
				
		</div>
	</nav>
  
  <tiles:insertAttribute name="body" />
	 <script src="js/bootstrap.js"></script>
</body>
</html>