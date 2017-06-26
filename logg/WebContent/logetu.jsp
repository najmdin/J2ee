<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script type="text/javascript">
function functionOne() { alert('invalide password'); }
  </script>
<style type="text/css">





</style>
<link rel="stylesheet" href="styles.css">
</head>
<body style="background-image:url(backbleu.jpg); background-attachment: fixed;" >
<% 
Connection conn=null;


	String nm=request.getParameter("identifiant"); 
	String pss=request.getParameter("password");
	String stt=request.getParameter("stt");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/app","root","yassine");
	Statement sst=con.createStatement();
	String qr="SELECT * FROM "+stt+" WHERE nutili='"+nm+"'AND pass='"+pss+"'";
	ResultSet rs=sst.executeQuery(qr);
	String etu="etu";
	String ens="ens";
	if(rs.next())
	{
		if(rs.getString("pass").equals(pss))
	{
		switch (stt){
		case "etu":
		
	%>
	<table border="1">
	<tr>
    <th width="39" height="30" scope="col">ID</th>
    <th width="87" scope="col">PRENOM</th>
    <th width="87" scope="col">NOM</th>
    <th width="87" scope="col">nombre d'heures d'abssence</th>
  </tr>
	<tr>
	<td><% out.print(rs.getString(1));%></td>
	<td><% out.print(rs.getString(2));%></td>
	<td><% out.print(rs.getString(3));%></td>
	<td><% out.print(rs.getString(4));%></td>
	</tr>
	</table>
	<br/>
	<% 
		break;
		case "ens":
			//if(stt.equals(ens)){%>
				

			<div  class="page">
<div id='cssmenu'>
<ul>
   <li><a href=''><span>Home</span></a></li>
    <li><a href='interselecens.html'><span>abbsence</span></a></li>
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
<div class="info"style="color:#000;">
<br/>
 PNOM :<% out.print(rs.getString("pnom"));%>
<p> NOM :<% out.print(rs.getString("nom"));%></p>
<p> mat :<% out.print(rs.getString("mati"));%></p>
<p> id :<% out.print(rs.getString("id"));%></p>
</div>
<div class="cor" style="color:#000;">

'jfpirjgig7
rgg



rgg








regg
</div>
</div>
				
		<% 
		break;//}	
		case "resp"	:%>
			

			<div  class="page">
<div id='cssmenu'>
<ul>
   <li><a href=''><span>Home</span></a></li>
    
    <li class='active has-sub'><a href='gest_abs.html'><span>gestion des abbsence</span></a>
         <ul>
         
         <li class='has-sub'><a href='selec_rapp_rep.html'><span>les rapports des abbsence</span></a></li>
         <li class='has-sub'><a href='#'><span>les graphes et les statistique </span></a></li>
         <li class='has-sub'><a href='annabs.html'><span>annulation d'abssence</span></a></li>
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
<div class="info"style="color:#000;">
<br/>
 PNOM :<% out.print(rs.getString("pnom"));%>
<p> NOM :<% out.print(rs.getString("noml"));%></p>

</div>
<div class="cor" style="color:#000;">

respp
</div>








</div><% 
			break;
			
		}		
	}
	}
 else{%>

	 <jsp:forward page="/logwrg.html"/>
	 
		<% }
		%>


</body>
</html>