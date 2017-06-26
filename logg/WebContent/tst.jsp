<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="">
  <table >  
    <tr>    
      <td>Select up to 3 files to upload</td>
    </tr>    
    <tr>    
      <td>   
        <input type="hidden" name="newFileName" value="newUploadedFileName1">
        <input type="file" name="uploadfile" >
        </td>    
    </tr>    
    <tr>    
     <td align="center">   
      <input type="submit" name="Submit" value="Upload">
      <input type="reset" name="Reset" value="Cancel">
     </td>
    </tr>
</table>
</form>
<%
if ("POST".equalsIgnoreCase(request.getMethod())) {
    out.print("qsfg");
    } else {
    // It was likely a GET request.
}


%>


</body>
</html>