<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="menuh.css">
</head>
<body style="background-image:url(backbleu.jpg); background-attachment: fixed;">

 
			<div  class="page">
<div id='cssmenu'>
<ul>
   <li><a href='incioens.jsp'><span>Home</span></a></li>
    <li><a href='interselecens.jsp'><span>abbsence</span></a></li>
  
  
   <li class='last'><a href='dec.jsp'><span>deconexion</span></a></li>
</ul>
</div>
<br/>


<div class="info">
<br/>
<div id='csssmenu'>
<ul>
   <li><a href='incioens.jsp'><span>Home</span></a></li>
    <li><a href='interselecens.jsp'><span>abbsence</span></a></li>
  
</div>


</div>
<div class="cor" style="color:#000; height:450px">
<form method="get" action="servens.php">
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
</div>
</div>
		
</body>
</html>