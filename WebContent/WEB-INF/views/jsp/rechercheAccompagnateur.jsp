<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<form:form method="post" action="map">
    <div class="form-group">
              <label for="sel1">Je suis disponible pour une durée de :</label>
    
  
            <select class="form-control" id="sel1" name="temps">
            	<option selected>0 - 30min</option>
                <option selected>30min - 1h00</option>
                <option selected>1h00 - 1h30</option>
                <option selected>1h30 - 2h00</option>
                <option selected>2h00 - 2h30</option>
                <option selected>2h30 - 3h00</option>
             </select>
</div>
    <table>
        <tr>
            <td><p>Je cherche....</p></td>
        </tr>
        <tr>
              <td>
              <div class="form-group">
              <label for="sel1">choisissez votre sexe:</label>
                <select class="form-control" id="sel1" name="choixsexe">
                   <option selected>Un homme</option>
                   <option selected>Une femme</option>
                      <option selected>Indifférent</option>
                  </select>     
                  </div>       
            </td>
  

        </tr>
    </table>
    
     <table>
        <tr>
            
        </tr>
        <tr>
            <td>
            <div class="form-group">
  <label for="usr">perimetre de recherche</label>
                <INPUT TYPE="text" class="form-control" id="usr" placeholder="perimètre (en mètres)" name="zone">
        
                
            </td>
        </tr>
    </table>
    
       <button class="btn btn-primary" type="submit" value="valider"><span class="glyphicon glyphicon-ok-sign" style="color:#4f4;"></span> valider</button>
    
</form:form>



<a href="profilDetaille">Modifier profil</a>