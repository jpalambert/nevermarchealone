

<form method="post" action="profilDetaille" model="user" >

	

	<h1>Modifier vos informations ${user.prenom} ${user.nom}</h1>
	
		

		<p>Dites-en nous plus sur vous :</p>
		<input type="text" placeholder="décrivez-vous...!" name="description"/>
		</p>
		<p>Vous êtes plutôt quelqu'un qui parle :</p>
		<table>
		<tr>
			<td><input type="radio" name="bavard" value="un peu" /> Un peu</td>
			<td><input type="radio" name="bavard" value="beaucoup" />Beaucoup</td>
			<td><input type="radio" name="bavard" value="passionnement" />Passionnément</td>
			
			</tr></table></p>
			<p>J'aime parler de :</p>
	<table>
		<tr>
			<td><input type="checkbox" path="hobbie" value="sport" />Sport</td>
			<td><input type="checkbox" path="hobbie" value="musique" />Musique</td>
			<td><input type="checkbox" path="hobbie" value="politique" />Politique</td>
		</tr>
		<tr>
			<td><input type="checkbox" path="hobbie" value="jeuxvideo" />Jeux
				Vidéo</td>
			<td><input type="checkbox" path="hobbie" value="lecture" />Lecture</td>
			<td><input type="checkbox" path="hobbie" value="cinema" />Cinéma</td>
		</tr>
		<tr>
			<td><input type="checkbox" path="hobbie" value="danse" />Danse</td>
			<td><input type="checkbox" path="hobbie" value="histoire" />Histoire</td>
			<td><input type="checkbox" path="hobbie" value="voyages" />Voyages</td>
		</tr>
		<tr>
			<td><input type="checkbox" path="hobbie" value="actualites" />Actualités</td>
			<td><input type="checkbox" path="hobbie" value="sciences" />Sciences</td>
			<td><input type="checkbox" path="hobbie" value="autres" />Autres</td>
		</tr>
		<tr>
			<td><input type="submit" value="Modifier" /></td>
		</tr>
	</table>
</form>