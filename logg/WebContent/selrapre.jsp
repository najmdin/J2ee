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
   <li><a href='interresp.jsp'><span>Home</span></a></li>
    
     
    <li class='active has-sub'><a href='gest_abs.jsp'><span>gestion des abbsence</span></a>
         <ul>
         
         <li class='has-sub'><a href='interselecresp.jsp'><span>les rapports des abbsence</span></a></li>
         <li class='has-sub'><a href='#'><span>les graphes et les statistique </span></a></li>
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
<table class="table-style-two">
 <tbody>
 <tr>
    <td height="32"><a href='selrapre.jsp'> les rapports des abbsence</td></a>
    </tr>
   <tr>
    <td><a href='#'> les graphes et les statistique</td></a>
    </tr>
    <tr>
    <td> <a href='annabs.jsp'> annulation d'abssence</td> </a>
    </tr>
 
  

</table>
</div>
<div class="cor" style="color:#000;height:450px">
<form method=POST action="rapp_abs.jsp">
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
  <input  name="selectioner" type="submit" value="selectioner" > 
  </form>

</div>








</div>
</body>
</html>