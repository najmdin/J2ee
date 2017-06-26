<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="menuh.css">
</head>
<body style="background-image:url(backbleu.jpg); background-attachment: fixed;">

			<div  class="page">
<div id='cssmenu'>
<ul>
   <li><a href='interresp.jsp'><span>Home</span></a></li>
    
    <li class='active has-sub'><a href='gest_abs.jsp'><span>gestion des abbsence</span></a>
         <ul>
         
         <li class='has-sub'><a href='seleclisresp.jsp'><span>les rapports des abbsence</span></a></li>
    
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
            <li class='active has-sub'><a href='#'><span>parametre de compte</span></a>
      <ul>
         
         <li class='has-sub'><a href='#'><span>changer mot de passe</span></a></li>
		 <li class='has-sub'><a href='#'><span>changer le nom d'utilisateur</span></a>
         </li>
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
   <li><a href='seleclisresp.jsp'><span> les liste des classe</span></a>
     
   </li>
   <li><a href='interajout.jsp'> <span> ajoute d'un etudiant</span></a></li>
   <li> <a href='intersup.jsp'><span> suppression d'un etudiant </a></li>
   <li> <a href='interselmod.jsp'><span> cordonée d'etudiant </a></li>
   <li class='last'><a href='dec.jsp'><span>deconexion</span></a></li>
</ul>
</div>
</div>
<div class="cor" style="color:#000;">

<form method="get" action="servres">
<label for=clss> classe  :   &nbsp;&nbsp; </label> 
  <select name="clss" id="clss">
 <option value ="info1">info1 </option>
 <option value ="info2">info2</option>
 <option value ="tm1">TM1 </option>
 <option value ="tm2">TM2 </option>
  <option value ="godt1">GODT1 </option>
 <option value ="godt2">GODT2 </option>
 <option value ="er1">ER1 </option>
 <option value ="er2">ER2 </option>

 </select>
  <input  name="action" type="submit" value="selectioner" > 
  </form>
  <table class="table-style-two">
	<thead>
	  <tr>
	    <th width="89" scope="col">ID</th>
	    <th width="70" scope="col">PRENOM</th>
	    <th width="84" scope="col">NOM</th>
	    <th width="84" scope="col">classe</th>
	    <th width="84" scope="col">abssence</th>
	  </tr>
	  </thead>
	  <tbody>
	  
	  <c:forEach items="${modd.list}" var="e">
	<tr>
    <td height="32">${e.idetu} </td>
    <td>${e.pnetu } </td>
    <td>${e.netu}</td>
    <td>${e.cls}</td>
    <td>${e.nbr}</td>
  </tr>
  </c:forEach>

	
	</tbody>
  </table>
  
</div>







</div>
</body>
</html>