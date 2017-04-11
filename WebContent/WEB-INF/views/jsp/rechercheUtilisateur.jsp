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
    
    <p>Je suis disponible pour une durée de ... :</p>
            <select name="temps">
            	<option selected>0 - 30min</option>
                <option selected>30min - 1h00</option>
                <option selected>1h00 - 1h30</option>
                <option selected>1h30 - 2h00</option>
                <option selected>2h00 - 2h30</option>
                <option selected>2h30 - 3h00</option>
             </select>

    <table>
        <tr>
            <td><p>Je cherche....</p></td>
            <td><p>qui parle....</p></td>
        </tr>
        <tr>
              <td>
              <!--
                <INPUT TYPE="button" VALUE="Un homme" ONCLICK="homme">
                <INPUT TYPE="button" VALUE="Une femme" ONCLICK="femme">
                <INPUt TYPE="button" VALUE="Indifférent" ONCLICK="indifferent">    
                -->
                <select name="choixsexe">
                   <option selected>Un homme</option>
                   <option selected>Une femme</option>
                      <option selected>Indifférent</option>
                  </select>            
            </td>
            <td>
                <!-- <INPUT TYPE="button" VALUE="Un peu" ONCLICK="peu">
                <INPUT TYPE="button" VALUE="Beaucoup" ONCLICK="femme">
                <INPUT TYPE="button" VALUE="Passionnement" ONCLICK="passionnement">
                -->
                <select name="parle">
                   <option selected>Un peu</option>
                   <option selected>Beaucoup</option>
                      <option selected>Passionnément</option>
                  </select>    

            </td>
        </tr>
    </table>
    
       <table>
        <tr>
            <td><p>Qui peut discuter de :</p></td>
            <td><p>sur une zone de ... : </p></td>
        </tr>
        <tr>
            <td>
                <select multiple="multiple" name="hobbies">
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
                
            </td>
            <td>
                <INPUT TYPE="text" placeholder="perimètre (en mètres)" name="zone">
        
                
            </td>
        </tr>
    </table>
    
       <button class="btn btn-primary" type="submit" value="valider"><span class="glyphicon glyphicon-ok-sign" style="color:#4f4;"></span> valider</button>

</form:form>



<a href="modifProfil">Modifier profil</a>