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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- Materialize -->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<title><spring:message code="${ titleCode }" /></title>
</head>

<body>
	<tiles:insertAttribute name="navigation" />

	<div class="container">
		<tiles:insertAttribute name="body" />
	</div>

	<script type="text/javascript" src="../js/materialize.min.js"></script>
</body>
</html>