<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<form:form method="post" action="rechercheUtilisateur">
    
    <p>Je suis disponible pour une durée de ... minutes :</p>
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