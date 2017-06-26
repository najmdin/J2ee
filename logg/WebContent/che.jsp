<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
 String[] btn;
btn=request.getParameterValues("btn");
			 if(btn!=null){
			for(int i=0;i<btn.length;i++){
		   out.print( btn[i]);
		   }
			out.print( "ejfbss");
			 }
			 out.print( "ssss");
%>
</body>
</html>