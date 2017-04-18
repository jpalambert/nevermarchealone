<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="box">
                <div class="col-lg-12"><center>

<form:form method="post" action="map">


	<!--<form>
    <input type="radio" name="accompagnant" value="accompagnant">Accompagner</input>
    <input type="radio" name="accompagne" value="accompagne">Etre accompagné</input>
        </form>-->

	<%-- <td><form:radiobutton path="etat" value="accompagnateur" />Accompagner</td>
      <td><form:radiobutton path="etat" value="accompagne" />Etre accompagne</td> --%>
	<table>
			<tr>
				<td>
	<div class="form-group">
		<label for="sel1">Je veux me balader pour une durée de :</label> <select
			class="form-control" id="sel1" name="temps">
			<option selected>0 - 30min</option>
			<option selected>30min - 1h00</option>
			<option selected>1h00 - 1h30</option>
			<option selected>1h30 - 2h00</option>
			<option selected>2h00 - 2h30</option>
			<option selected>2h30 - 3h00</option>
		</select> 
		</div>
				</td>
		</table>
		
		<br>
		<table>
			<tr>
				<td>
					<div class="form-group">
						<label for="sel1">je cherche:</label> <select class="form-control"
							id="sel1" name="choixsexe">
							<option selected value="M">Un homme</option>
							<option selected value="F">Une femme</option>
							<option selected value="indifferent">Indifférent</option>
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
							<option selected value="un peu">Un peu</option>
							<option selected value="beaucoup">Beaucoup</option>
							<option selected value="passionnement">Passionnément</option>
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
			</table>
			<tr>
            <td>
            <div class="form-group">
  <label for="usr">sur une zone de :</label>
                <INPUT TYPE="text" class="form-control" id="usr" placeholder="perimètre (en kilomètres)" name="zone">
        
             </div>   
            </td>
        </tr>
	</table>

	<button class="btn btn-default btn-lg" type="submit" value="valider">
		<span class="glyphicon glyphicon-ok-sign" ></span>
		valider
	</button>
</form:form>
</div></div>
</center>
