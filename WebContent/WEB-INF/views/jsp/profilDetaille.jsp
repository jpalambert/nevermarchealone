<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="box">
                <div class="col-lg-12"><center>

<c:choose>
   <c:when test="${cdupost==1}">
<h3>Profil détaillé de ${profiler }</h3>


       <b><u>prenom et nom :</u> </b>
       <p class="text-info">${profilerprenom} ${profilernom}</p>
       <b> <u>Description :</u></b>
       <p class="text-info">${profilerdescription}</p>

       <b> <u>parle : </u></b>
       <p class="text-info">${profilerbavard}</p>
       <b> <u>passions :</u></b>
       <p class="text-info">${profilerhobbie}</p>
   
   </c:when>

   <c:otherwise>
       <h3>Profil détaillé de ${usession.username }</h3>
       
   
       <b>Prenom et Nom :</b>
      <p class="text-info">${usession.prenom} ${usession.nom}</p>
       <b>Description :</b>
      <p class="text-info">${usession.description}</p>

     <b>Parle :</b>
      <p class="text-info">${usession.bavard}</p>
      <b>Passions :</b>
       <c:forEach items="${parts}" var="part">
          <p class="text-info"><c:out value="${part}"/></p>
       </c:forEach>
   
   </c:otherwise>
</c:choose>


<c:if test="${cdupost!=1}">
<a href="modifProfil"><button class="btn btn-default btn-lg" type="submit"><span class="glyphicon glyphicon-ok-sign"></span>Valider</button></a>
</c:if>
<c:if test="${cdupost==1}">
<a href="recherche"><button class="btn btn-default btn-lg" type="submit"><span class="glyphicon glyphicon-ok-sign"></span>Recherche</button></a>
</c:if>
</div></div></center>
