<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="titleCode" scope="request">
	<tiles:insertAttribute name="title" />
</c:set>

<!DOCTYPE html>
<html >
<head>
<style type="text/css">
html, body {
    height: 100%;
    margin: 25px;
    padding: 0;
}

#map {
    height: 60%;
    border: 2px solid grey
</style>
<title>Never Marche Alone</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/business-casual.css" rel="stylesheet">



<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"
	rel="stylesheet" type="text/css">

<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- <script src="js/jquery.js"></script> -->
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>






</head>


<body>
	<script>
		$(document).ready(function() {
			$('.dropdown-toggle').dropdown();
		});
	</script>
	<div class="brand" style="text-shadow: 3px 3px 15px grey;" >Never Marche Alone</div>
	

	<!-- Navigation -->
	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
				<a class="navbar-brand" href="index.html">Business Casual</a>
			</div>




			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<ul class="nav navbar-nav" style="float: none">
						<c:if test="${user.username != null }">
							<li><a href="connex">Accueil </a></li>
						</c:if>
						<c:if test="${user.username == null }">
							<li><a href="connexion">Login</a></li>
						</c:if>

						<c:if test="${user.etat == 'accompagne'}">
							<li><a href="recherche">Recherche <span
									class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
						</c:if>

						<c:if test="${user.etat == 'accompagnateur'}">
							<li><a href="rechercheacc">Recherche <span
									class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
						</c:if>

<li class="dropdown" >
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Infos <span class="glyphicon glyphicon-info-sign"
							aria-hidden="true"></span><span class="caret"></span>

					</a>
					<ul class="dropdown-menu">
				<li><a href="about"><center>About</center></a></li>
				<li><a href="cgu"><center>C.G.U.</center></a></li>
				<li><a href="faq"><center>F.A.Q.</center></a></li>
						</ul>
</li>
	
						<c:if test="${user.username == null }">
							<li><a href="subscribe">Subscribe</a></li>
						</c:if>


						<c:if test="${user.username != null }">
							<li class="dropdown" style="float: right"><a
								class="dropdown-toggle" data-toggle="dropdown" href="#">Bienvenue
									${user.username} <span class="glyphicon glyphicon-user"
									aria-hidden="true"></span><span class="caret"></span>

							</a>
								<ul class="dropdown-menu">
									<li><a href="modifProfil">Modifier profil</a></li>
									<li><a href="profilDetaille">Profil détaillé</a></li>
									<li><a href="deconnexion">Déconnexion <span
											class="glyphicon glyphicon-off" aria-hidden="true"></span></a></li>
								</ul></li>
						</c:if>
					</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>





	<!-- jQuery -->


	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>


	<script src="js/bootstrap.js"></script>

</body>
</html>

<body>


<!-- 	<div class="container"> -->
		<tiles:insertAttribute name="body" />
<!-- 	</div> -->
	<script src="js/bootstrap.js"></script>

</body>
</html>