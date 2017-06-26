<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript">
    function checkBoxValidation()
    {
    	String fruits[]= request.getParameterValues("btn");
    	for(var i=0; i < document.form1.fruit.length; i++)
    	{
    	if(!document.form1.fruit[i].checked)
    	{
    	alert("Please Select Your favorite fruit");
    	return false;
    	}
    	else
    	{
    	alert("Click OK to display your favorite fruit list");
    	return true;
    	}
    	}
    }
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <BODY>
        <H1>Using Multiple Forms</H1>
        <% 
            if(request.getParameter("submit") != null) {
        %>
            You clicked 
            <%= request.getParameter("submit") %>
        <%
            }
        %>

        <FORM NAME="form1" METHOD="POST">
            <INPUT TYPE="SUBMIT" NAME="submit" VALUE="Button 1">
        </FORM>

        <FORM NAME="form2" METHOD="POST">
            <INPUT TYPE="SUBMIT" NAME="submit" VALUE="Button 2">
        </FORM>

        <FORM NAME="form3" METHOD="POST">
            <INPUT TYPE="SUBMIT" NAME="submit" VALUE="Button 3">
        </FORM>
        
        
        


Checkbox: <input type="checkbox" id="myCheck">

<p>Click the "Try it" button to find out whether the checkbox is checked, or not.</p>

<button onclick="myFunction()">Try it</button>

<p id="demo"></p>

<script type=text/javascript>
function validate(){
if (remember.checked == 1){
    alert("checked") ;
}else{
alert("You didn't check it! Let me check it for you.")
}
}

</script>
<input id="remember" name="remember" type="checkbox" onclick="validate()" />
<script>
function myFunction() {

    if (document.getElementById("myCheck").checked)
  var x= document.getElementById("demo").innerHTML = true;
}
else
{var x= document.getElementById("demo").innerHTML = false;} 
</script>
<input type="checkbox" id="abs" name="btn" value="1"> 
    <input type="checkbox" id="abs" name="btn" value="2"> 
    

 
<form name="form1" onsubmit="checkBoxValidation()">

<p><input type="submit" value="submit"/>
</form>
</body>
</html>
 