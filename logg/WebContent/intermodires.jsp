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
<link rel="stylesheet" href="form.css">
</head>
<body style="background-image:url(backbleu.jpg); background-attachment: fixed;">

			<div  class="page">
<div id='cssmenu'>
<ul>
   <li><a href=''><span>Home</span></a></li>
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
                 <li class='has-sub'><a href='interselmod.jsp'><span>cordon�e d'etudiant</span></a></li>
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
   <li> <a href='interselmod.jsp'><span> cordon�e d'etudiant </a></li>
   <li class='last'><a href='dec.jsp'><span>deconexion</span></a></li>
</ul>
</div>
</div>

<div class="cor" style="color:#000;">

<form action="servres" method="get">
<ul class="form-style-1"> 
<li>
 <label>
<span> ID : </span>  </label>
 <input type="text" name="id" class="field-long">
</li>
 <li>
  <label>
<span> CLASS : </span>  </label>

 <select name="clls" id="clls" class="field-select">
 <option value ="info1">info1 </option>
 <option value ="info2">info2</option>
 <option value ="tm1">TM1 </option>
 <option value ="tm2">TM2 </option>
  <option value ="godt1">GODT1 </option>
 <option value ="godt2">GODT2 </option>
 <option value ="er1">ER1 </option>
 <option value ="er2">ER2 </option>
  <input type="submit"   class="button" name="action" value="modifier">
 </select>
 </li>
 </ul>
 </form>
 <h3> l'etudiant a modifier</h3>

<form action="servres" method="get"> 
ID : ${modd.et.idetu }<input type="hidden"name="idm" value="${modd.et.idetu }"><br/>
CLASSE : ${modd.et.cls} <br/>
<ul class="form-style-1">
<li>
<label>
<span>  NOM :</span>  </label>
  <input type="text" name="nom" value="${modd.et.netu}"  class="field-long"> 
   </li>
   <li>
   <label>
<span>   PRENOM :</span>  </label>

   <input type="text" name="pnom" value="${modd.et.pnetu}"  class="field-long"> 
    </li>
    <input type="hidden"name="nbr" value="${modd.et.nbr }">
    <input type="hidden"name="nut" value="${modd.et.nuti }">
    <input type="hidden"name="ps" value="${modd.et.pss }">
   
    <li>
    <label>
<span>  CLASS :</span>  </label>
     <select name="cls" id="clls" class="field-select">
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
  <input type="submit" name="action" class="button" value="enregistrer">
  </li>
  </ul>
  </form>
 <c:choose>
  
    <c:when test="${msg.equals('falsee')}">
       <script >

alert("'l'op�ration  �chou�e' :check information  ");
</script>
    </c:when>
   </c:choose>
</div>
  
  
  
</div>







</div>
</body>
</html>