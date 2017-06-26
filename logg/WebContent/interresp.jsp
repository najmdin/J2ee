<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="stylee.css" />
		<script src="library/jquery.min.js"></script>
		<script type="text/javascript" src="library/tweenmax.min.js"></script>
		<script type="text/javascript" src="main.js"></script>	

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
    
    <li class='active has-sub'><a href='gest_abs.jsp'><span>gestion des abbsence</span></a>
        
         </li>
             <li class='active has-sub'><a href='gestclsrsp.jsp'><span>gestion des etudiants </span></a>
             
             </li>
            
  
   <li class='last'><a href='dec.jsp'><span>deconexion</span></a></li>
</ul>
</div>
</div>
<div class="corr" style="background-image:url(ens.jpg) ;">
<div id="textDiv"  >
			BIENVENUE DANS L'ESPACE DE RESPONSABLE 
		</div>
</div>








</div>
</body>
</html>