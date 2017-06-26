<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="menuh.css">
<link rel="stylesheet" href="form.css">
</head>
<body style="background-image:url(backbleu.jpg); background-attachment: fixed;">
			<div  class="page">
<div id='cssmenu'>
<ul>
   <li><a href='interresp.jsp'><span>Home</span></a></li>
    
    <li class='active has-sub'><a href='gest_abs.jsp'><span>gestion des abbsence</span></a>
         <ul>
         
         <li class='has-sub'><a href='interselecresp.jsp'><span>les rapports des abbsence</span></a></li>
        
         <li class='has-sub'><a href='annabs.jsp'><span>annulation d'abssence</span></a></li>

         </ul>
         </li>
             <li class='active has-sub'><a href='gestclsrsp.jsp'><span>gestion des etudiants </span></a>
             <ul>
              <li class='has-sub'><a href='seleclisresp.jsp'><span>les liste des classe </span></a></li>
         <li class='has-sub'><a href='interajout.jsp'><span>ajoute d'un etudiant</span></a></li>
               <li class='has-sub'><a href='intersup.jsp'><span>suppression d'un etudiant</span></a></li>
                 <li class='has-sub'><a href='interselmod.jsp'><span>cordonée d'etudiant</span></a></li>
                 </ul>
             </li>
            
  
   <li class='last'><a href='dec.jsp'><span>deconexion</span></a></li>
</ul>
</div>
<br/>
<div class="info">
<br/>
<div id='csssmenu'>
<ul>
   <li><a href='interresp.jsp'><span>Home</span></a></li>
   <li><a href='interselecresp.jsp'><span>les rapports des abbsence</span></a>
     
   </li>
   <li><a href='annabs.jsp'><span>annulation d'abssence</span></a></li>
   <li class='last'><a href='dec.jsp'><span>deconexion</span></a></li>
</ul>
</div>
</div>
<div class="cor" style="color:#000;height:450px">

 <form method="get" action="servres">
<ul class="form-style-1"> 
<li>
   <label > classe d'etudiant:    </label> 
  <select name="clss" id="clss" class="field-select">
 <option value ="info1">info1 </option>
 <option value ="info2">info2</option>
 <option value ="tm1">TM1 </option>
 <option value ="tm2">TM2 </option>
  <option value ="godt1">GODT1 </option>
 <option value ="godt2">GODT2 </option>
 <option value ="er1">ER1 </option>
 <option value ="er2">ER2 </option>
 </select>
 </li>
<li>
  <label > id d'etudiant :   </label>
 <input name="idsup" type="text"  class="field-long">
 </li>
<li>
  <label > la date  :   </label>
 <input name="dt" type="text"  class="field-long" value="AAAA-MM-JJ">
 </li>
 <li>
 <label > peroide:    </label> 
  <select name="p" id="p" class="field-select">
 <option value ="p1">periode 1 </option>
 <option value ="p2">periode 2</option>
 <option value ="p3">periode 3 </option>
 <option value ="p4">periode 4 </option>
 </select>
 </li>
 <li>
 <input id="submitbutton" class="button"  name="action" type="submit" value="suprimer l'absence" >
 </li>
 </form>
</div>
<c:choose>
    <c:when test="${msg.equals('truee')}">
        <script >

alert("operation success");
</script>
    </c:when>
  
    <c:when test="${msg.equals('falsee')}">
       <script >

alert("'l'opération  échouée' :check information  ");
</script>
    </c:when>
   </c:choose>
</div>
</body>
</html>