<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<form:form method="post" action="rechercheAcc" modelAttribute="user">
	<table>
		<tr>
			<td><form:label path="username">Username</form:label></td>
			<td><form:input path="username" value="${user.username}" /></td>
			<td><form:errors path="username" /></td>
		</tr>
		<tr>
			<td><form:label path="password">Password</form:label></td>
			<td><form:password path="password" value="${user.password}" /></td>
			<td><form:errors path="password" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="Valider"></td>
		</tr>
	</table>
	<tr><td><form:button type="submit">Envoi</form:button>

</form:form>

<a href="<c:url value='/subscribe' />" >je ne possède pas de compte,
	je souhaite m'inscrire</a>
	<tr>

	<footer> 
	<a href="<c:url value='/cgu' />" >cgu</a>
</tr>
      
      <a href="<c:url value='/map' />" >map</a>    </footer>

