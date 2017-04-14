<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="historique">
	<c:forEach items="${historiqueUser}" var="commande">
		
			<p>Vous avez accompagn&eacute; : </p>
			<c:if test ="${commande.usernameAcc==user.username }">
				<li>${commande.usernameUser}</li>
			</c:if>
			
			<p>Vous avez &eacute;t&eacute; accompagn&eacute; par : </p>
			<c:if test ="${commande.usernameUser==user.username }">
				<li>${commande.usernameAcc}</li>
			</c:if>
	
	</c:forEach>
</div>