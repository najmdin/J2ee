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
  
   
   <li><a href='yass?identifiant=yassine&password=bahra&stt=etu&se+connecter=se+connecter'><span>home</span></a></li>
   
  
   <li class='last'><a href='dec.jsp'><span>deconexion</span></a></li>
</ul>
</div>
<br/>
<div class="info">
<br/>

<div id='csssmenu'>
<ul>
  
   
   <li><a href='yass?identifiant=yassine&password=bahra&stt=etu&se+connecter=se+connecter'><span>home</span></a></li>
  
  
   <li class='last'><a href='dec.jsp'><span>deconexion</span></a></li>
</ul>
</div>
</div>


<div class="cor" style="color:#000; height:500px;">
<table class="table-style-two">
	<thead>
	
	<tr>
    <th width="39" height="30" scope="col">ID</th>
    <th width="87" scope="col">PRENOM</th>
    <th width="87" scope="col">NOM</th>
    <th width="87" scope="col">nombre d'heures d'abssence</th>
  </tr>
  </thead>
	  <tbody>
	<tr>
	<td>${model.tt.idetu }</td>
	<td>${model.tt.pnetu }</td>
	<td>${model.tt.netu}</td>
	<td>${model.tt.nbr}</td>
	</tr>
	</tbody>
  </table>
	</div>
	</div>
</body>

</html>