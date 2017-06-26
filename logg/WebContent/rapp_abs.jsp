<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles.css">
</head>
<body style="background-image:url(backbleu.jpg); background-attachment: fixed;">
			<div  class="page">
<div id='cssmenu'>
<ul>
   <li><a href=''><span>Home</span></a></li>
    
    <li class='active has-sub'><a href='gest_abs.html'><span>gestion des abbsence</span></a>
         <ul>
         
         <li class='has-sub'><a href='#'><span>les rapports des abbsence</span></a></li>
         <li class='has-sub'><a href='#'><span>les graphes et les statistique </span></a></li>
         <li class='has-sub'><a href='annabs.jsp'><span>annulation d'abssence</span></a></li>
         </ul>
         </li>
             <li class='active has-sub'><a href='#'><span>gestion des etudiants </span></a>
             <ul>
              <li class='has-sub'><a href='#'><span>les liste des classe </span></a></li>
         <li class='has-sub'><a href='#'><span>ajoute d'un etudiant</span></a></li>
               <li class='has-sub'><a href='#'><span>suppression d'un etudiant</span></a></li>
                 <li class='has-sub'><a href='#'><span>cordonée d'etudiant</span></a></li>
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
<table class="table-style-two">
 <tbody>
 <tr>
    <td height="32"><a href='selrapre.html'> les rapports des abbsence</td></a>
    </tr>
   <tr>
    <td><a href='#'> les graphes et les statistique</td></a>
    </tr>
    <tr>
    <td> <a href='annabs.jsp'> annulation d'abssence</td> </a>
    </tr>
 
  

</table>
</div>
<div class="cor" style="color:#000;height:450px; margin_left:160px">
<br/>
<br/>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/app","root","yassine");
Statement sst=con.createStatement();
String clss=request.getParameter("clss");
String qr="SELECT * FROM etu WHERE clls='"+clss+"'";
ResultSet rs=sst.executeQuery(qr);


%>
	<table class="table-style-two">
	<thead>
	  <tr>
	    <th width="89" scope="col">ID</th>
	    <th width="70" scope="col">PRENOM</th>
	    <th width="84" scope="col">NOM</th>
	    <th width="84" scope="col">classe</th>
	    <th width="84" scope="col">nbrH</th>
	  </tr>
	  </thead>
	  <tbody>
<%
while(rs.next()){
%>
	<tr>
    <td height="32"><% out.print(rs.getString("id"));%> </td>
    <td> <% out.print(rs.getString("nutili"));%></td>
    <td><% out.print(rs.getString("pass"));%></td>
    <td><% out.print(rs.getString("clls"));%></td>
  <td><% out.print(rs.getString("nbrh")); }%></td>
  </tr>
  <%

	%>
	</tbody>
  </table>

</div>
