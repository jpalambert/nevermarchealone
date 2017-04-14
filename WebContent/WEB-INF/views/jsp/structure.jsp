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
<head background="http://www.active.com/Assets/Walking/460/diet-detective-walk-for-your-health.jpg">
<!--  <style type="text/css"> -->


<!--     </style> -->
     

<!-- <meta charset="utf-8"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="css/business-casual.min.css"> -->

<!-- <script src="js/bootstrap.min.js"></script> -->
<title>Never Marche Alone</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">



    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- <script src="js/jquery.js"></script> -->
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>






</head>


<body >
<script>
   $(document).ready(function () {
       $('.dropdown-toggle').dropdown();
   });
</script>
    <div class="brand">Never Marche Alone</div>
    <div class="address-bar">10 rue ferrari |Marseille 13004 | 00.00.00.00.00</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">Business Casual</a>
            </div>
            
            
            
            
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                  <ul class="nav navbar-nav" style="float: none"> 
				<c:if test="${user.username != null }">
					<li><a href="connex">Accueil </a></li>
				</c:if>
				<c:if test="${user.username == null }">
					<li ><a href="connexion">Login</a></li>
				</c:if>
				    
				<c:if test="${user.etat == 'accompagne'}">
					<li><a href="recherche">Recherche <span
							class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
				</c:if>

				<c:if test="${user.etat == 'accompagnateur'}">
					<li><a href="rechercheacc">Recherche <span
							class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
				</c:if>


				<li><a href="about">About <span
						class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></a></li>
				<li><a href="cgu">C.G.U. <span
						class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></a></li>
				<li><a href="faq">F.A.Q. <span
						class="glyphicon glyphicon-question-sign" aria-hidden="true"></span></a></li>

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
    
    
<!-- 	<nav class="navbar navbar-default" style="height: 80%;weight:20%;"> -->
<!-- 		<a class="navbar-brand" rel="home" href="#" title="never walk alone"> -->
<!-- 			<img style="max-width: 40px; margin-top: -7px;" -->
<!-- 			src="http://chantalserriere.blog.lemonde.fr/files/2008/03/marcheur.1205428588.png"> -->
<!-- 		</a> -->
<!-- 		<div class="container-fluid"> -->
<!-- 			<div class="navbar-header"> -->
<!-- 				<a class="navbar-brand" href="#">Never Marche Alone</a> -->
<!-- 			</div> -->
<!-- 			<ul class="nav navbar-nav" style="float: none"> -->
<%-- 				<c:if test="${user.username != null }"> --%>
<!-- 					<li><a href="connex">Accueil <span -->
<!-- 							class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li> -->
<%-- 				</c:if> --%>
<%-- 				<c:if test="${user.username == null }"> --%>
<!-- 					<li class="active"><a href="connexion">Login</a></li> -->
<%-- 				</c:if> --%>
<!-- 				      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">recherche <span class="caret"></span></a> -->
<!-- 				        <ul class="dropdown-menu"> -->
<%-- 				<c:if test="${user.etat == 'accompagne'}"> --%>
<!-- 					<li><a href="recherche">Rechercher un accompagnateur <span -->
<!-- 							class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li> -->
<%-- 				</c:if> --%>

<%-- 				<c:if test="${user.etat == 'accompagnateur'}"> --%>
<!-- 					<li><a href="rechercheacc">Proposer ma compagnie <span -->
<!-- 							class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li> -->
<%-- 				</c:if> --%>


<!-- 				<li><a href="about">About <span -->
<!-- 						class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></a></li> -->
<!-- 				<li><a href="cgu">C.G.U. <span -->
<!-- 						class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></a></li> -->
<!-- 				<li><a href="faq">F.A.Q. <span -->
<!-- 						class="glyphicon glyphicon-question-sign" aria-hidden="true"></span></a></li> -->

<%-- 				<c:if test="${user.username == null }"> --%>
<!-- 					<li><a href="subscribe">Subscribe</a></li> -->
<%-- 				</c:if> --%>

<%-- 				<c:if test="${user.username != null }"> --%>
<!-- 					<li class="dropdown" style="float: right"><a -->
<!-- 						class="dropdown-toggle" data-toggle="dropdown" href="#">Bienvenue -->
<%-- 							${user.username} <span class="glyphicon glyphicon-user" --%>
<!-- 							aria-hidden="true"></span><span class="caret"></span> -->

<!-- 					</a> -->
<!-- 						<ul class="dropdown-menu"> -->
<!-- 							<li><a href="modifProfil">Modifier profil</a></li> -->
<!-- 							<li><a href="profilDetaille">Profil détaillé</a></li> -->
<!-- 							<li><a href="deconnexion">Déconnexion <span -->
<!-- 									class="glyphicon glyphicon-off" aria-hidden="true"></span></a></li> -->
<!-- 						</ul></li> -->
<%-- 				</c:if> --%>
<!-- 			</ul> -->

<!-- 		</div> -->
<!-- 	</nav> -->
	<script src="js/bootstrap.js"></script>

</body>
</html>

<body>


	<div class="container">
		<tiles:insertAttribute name="body" />
	</div>
<script src="js/bootstrap.js"></script>

</body>
</html>