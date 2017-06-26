<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="styles.css">

</head>
<body  style="background-image:url(backbleu.jpg); background-attachment: fixed;">

 

				<div  class="page">
<div id='cssmenu'>
<ul>
   <li><a href=''><span>Home</span></a></li>
    <li><a href="interselecens.html"><span>abbsence</span></a></li>
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
	
	<div class="cor" style="color:#000; width:auto;">
	  <form method="post" action="" >
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
	  
	  <c:forEach items="${model.et}" var="e">
	<tr>
    <td height="32">${e.idetu} </td>
    <td>${e.pnetu } </td>
    <td>${e.netu}</td>
    <td>${e.cls}</td>
    <td><a href="servens.php?action=abs&idd=${e.idetu}">abss</a></td>
  </tr>
  </c:forEach>

	
	</tbody>
  </table>
  
  



    <label for="idabs">ID D'ETUDIANT</label>
  </br>
  <input type="text" name="idabs">
  </br>
  <input  name="submit" type="submit" value="enregistrer" >

 </div>
	</div>
	


</body>
</html>

