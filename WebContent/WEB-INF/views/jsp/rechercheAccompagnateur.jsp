<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<form:form method="post" action="map">
    
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
        </tr>
        <tr>
              <td>
                <select name="choixsexe">
                   <option selected>Un homme</option>
                   <option selected>Une femme</option>
                      <option selected>Indifférent</option>
                  </select>            
            </td>
        </tr>
    </table>
    
     <table>
        <tr>
            <td><p>sur une zone de ... : </p></td>
        </tr>
        <tr>
            <td>
                <INPUT TYPE="text" placeholder="perimètre (en mètres)" name="zone">
        
                
            </td>
        </tr>
    </table>
    
    <input type="submit" value="Valider">
</form:form>



<a href="modifProfil">Modifier profil</a>