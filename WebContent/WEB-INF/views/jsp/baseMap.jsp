<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="titleCode" scope="request">
	<tiles:insertAttribute name="title" />
</c:set>
<!DOCTYPE html>
<html>

  <head>
    <style type="text/css">
      html, body { height: 100%; margin: 0; padding: 0; }
      #map { height: 100%; }
    </style>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
				<li class="active"><a href="connex">Accueil</a></li>
				</c:if>
				<c:if test="${user.username == null }">
				<li class="active"><a href="connexion">Login</a></li>
				</c:if>
				<!--       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">recherche <span class="caret"></span></a> -->
				<!--         <ul class="dropdown-menu"> -->
				<c:if test="${user.etat == 'accompagne'}">
					<li><a href="recherche">Rechercher un <center>accompagnateur</center></a></li>
				</c:if>

				<c:if test="${user.etat == 'accompagnateur'}">
					<li><a href="rechercheacc">Rechercher un <center>utilisateur</center></a></li>
				</c:if>

		
				<li><a href="about">About</a></li>
				<li><a href="cgu">C.G.U.</a></li>
				<li><a href="faq">F.A.Q.</a></li>
				
				<c:if test="${user.username == null }">
				<li><a href="subscribe">Subscribe</a></li>
				</c:if>
				
				<c:if test="${user.username != null }">
				<li class="dropdown" style="float: right"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#">Bienvenue
						<center>${user.username}<span class="caret"></span>
						</center>
				</a>
					<ul class="dropdown-menu">					
						<li><a href="modifProfil">Modifier profil</a></li>
						<li><a href="profilDetaille">Profil détaillé</a></li>
						<li><a href="deconnexion">Déconnexion</a></li>
					</ul></li>
			</ul>
				</c:if>
		</div>
	</nav>
  
  <tiles:insertAttribute name="body" />
	
</body>
</html>