
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<form:form method="post" action="rechercheUtilisateur">
    <p>Aujourd'hui je souhaite :</p>
    
    
    <!--<form>
    <input type="radio" name="accompagnant" value="accompagnant">Accompagner</input>
    <input type="radio" name="accompagne" value="accompagne">Etre accompagné</input>
        </form>-->
        
    <%-- <td><form:radiobutton path="etat" value="accompagnateur" />Accompagner</td>
      <td><form:radiobutton path="etat" value="accompagne" />Etre accompagne</td> --%>
    
    <p>Et je suis disponible pour une durée de :</p>
            <select name="temps">
                   <option selected>5</option>
                   <option selected>10</option>
                      <option selected>15</option>
                      <option selected>20</option>
                      <option selected>25</option>
                   <option selected>30</option>
                      <option selected>35</option>
                      <option selected>40</option>
                      <option selected>45</option>
                      <option selected>50</option>
                      <option selected>55</option>
                      <option selected>60 et +</option>
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
    
    <p></p>

    

    
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
    
    <input type="submit" value="Valider">
</form:form>