<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Refresh" content="5" URL="accompagnant">
<c:choose><c:when test="${commandeEnvoi==1}">
	<script type="text/javascript">
		alert("Vous �tes un gagnant!")
	</script>

</c:when>
<c:otherwise>
	<p>Vous �tes actuellement en attente d'un marcheur...</p>
</c:otherwise>
</c:choose>
