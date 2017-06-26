<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
         
         <li class='has-sub'><a href='interselecresp.jsp'><span>les rapports des abbsence</span></a></li>
         
         <li class='has-sub'><a href='annabs.jsp'><span>annulation d'abssence</span></a></li>
         </ul>
         </li>
             <li class='active has-sub'><a href='gestclsrsp.jsp'><span>gestion des etudiants </span></a>
             <ul>
              <li class='has-sub'><a href='interselecresp.jsp'><span>les liste des classe </span></a></li>
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
</div>

<div class="cor" style="color:#000;">
<%
Connection conn=null;


String cl=request.getParameter("clss"); 


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/app","root","yassine");
Statement sst=con.createStatement();
Statement sstt=con.createStatement();
System.out.println(cl);
String qr="SELECT * FROM etu  WHERE clls='"+cl+"'";
ResultSet rs=sst.executeQuery(qr);






%>

  
  <table class="table-style-two">
	<thead>
	  <tr>
	    <th width="89" scope="col">ID</th>
	    <th width="70" scope="col">PRENOM</th>
	    <th width="84" scope="col">NOM</th>
	    <th width="84" scope="col">classe</th>
	    <th width="84" scope="col">absence</th>
	    <th width="84" scope="col">date d'absence</th>
	    <th width="84" scope="col">decission</th>
	  </tr>
	  </thead>
	  <tbody>
<%while (rs.next()) {
	String qrr="SELECT * FROM dat  WHERE clls='"+cl+"'and id='"+rs.getString(1)+"'";
	ResultSet rss=sstt.executeQuery(qrr);


%>
	<tr>
    <td height="32"><% out.print(rs.getString(1));%></td>
    <td><% out.print(rs.getString(2));%> </td>
    <td><% out.print(rs.getString(3));%></td>
    <td><% out.print(rs.getString(7));%></td>
    <td><% out.print(rs.getString(6));%></td>
   <%  %>
    <td><%while (rss.next()){
    	out.print(rss.getString("dtab")+" "+rss.getString("pr"));%> 
   <% }%>
    </td>
    <td>
    <%
    
    if(rs.getInt(6)<=6)
    	out.print("aucun ");
    if(6<rs.getInt(6)&& rs.getInt(6)<=12)
    	out.print("1 ere avertisement");
    if(12<rs.getInt(6)&& rs.getInt(6)<=15)
    	out.print("2 eme  avertisement");
    if(15<rs.getInt(6)&& rs.getInt(6)<=20)
    	out.print("Blame");
    if(20<rs.getInt(6))
    	out.print("censeille descipline");
    %>
    
    </td>
    
  </tr>
  <%} %>


	
	</tbody>
  </table>
  
</div>







</div>
</body>
</html>>