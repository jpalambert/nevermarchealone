<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<form:form method="post" action="map">


	<!--<form>
    <input type="radio" name="accompagnant" value="accompagnant">Accompagner</input>
    <input type="radio" name="accompagne" value="accompagne">Etre accompagné</input>
        </form>-->

	<%-- <td><form:radiobutton path="etat" value="accompagnateur" />Accompagner</td>
      <td><form:radiobutton path="etat" value="accompagne" />Etre accompagne</td> --%>
	<div class="form-group">
		<label for="sel1">Je suis disponible pour une durée de :</label> <select
			class="form-control" id="sel1" name="temps">
			<option selected>0 - 30min</option>
			<option selected>30min - 1h00</option>
			<option selected>1h00 - 1h30</option>
			<option selected>1h30 - 2h00</option>
			<option selected>2h00 - 2h30</option>
			<option selected>2h30 - 3h00</option>
		</select> <br>
		<table>
			<tr>
				<td>
					<div class="form-group">
						<label for="sel1">je cherche:</label> <select class="form-control"
							id="sel1" name="choixsexe">
							<option selected>Un homme</option>
							<option selected>Une femme</option>
							<option selected>Indifférent</option>
						</select>
					</div>
				</td>
		</table>
		<table>
			<tr>
				<td>
					<div class="form-group">
						<label for="sel1">qui parle:</label> <select class="form-control"
							id="sel1" name="parle">
							<option selected>Un peu</option>
							<option selected>Beaucoup</option>
							<option selected>Passionnément</option>
						</select>
				</td>

			</tr>
		</table>
	</div>
	<table>
		<tr>
			<div class="form-group">
				<label for="sel1">qui peut discuter de:</label><p class="text-info">(maintenir ctrl pour faire plusieur choix)</p> <select multiple
					class="form-control" id="sel2">
					

					<option selected>Sport</option>
					<option selected>Musique</option>
					<option selected>Cinema</option>
					<option selected>Politique</option>
					<option selected>Voyages</option>
					<option selected>Actualites</option>
					<option selected>Sciences</option>
					<option selected>Histoire</option>
					<option selected>Litterature</option>
					<option selected>Autres</option>
				</select>
			</div>
			</tr>
			<tr>
            <td>
            <div class="form-group">
  <label for="usr">sur une zone de :</label>
                <INPUT TYPE="text" class="form-control" id="usr" placeholder="perimètre (en kilomètres)" name="zone">
        
             </div>   
            </td>
        </tr>
	</table>

	<button class="btn btn-primary" type="submit" value="valider">
		<span class="glyphicon glyphicon-ok-sign" style="color: #4f4;"></span>
		valider
	</button>
</form:form>



<a href="modifProfil">Modifier profil</a>