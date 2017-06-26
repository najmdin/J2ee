<%@ page import="java.sql.*" %>
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
Connection conn=null;
String clss=request.getParameter("clss");
String idabs=request.getParameter("idabs");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/app","root","yassine");
Statement sst=con.createStatement();
String qr="SELECT * FROM etu WHERE id='"+idabs+"'";
ResultSet rs=sst.executeQuery(qr);
if (rs.next()){

	String nb=rs.getString(4);	

int nbn=Integer.valueOf(nb);

int nnbh=nbn+2;

String qrr="UPDATE etu SET nbrh='"+nnbh+"' WHERE  id='"+idabs+"'";
sst.executeUpdate(qrr);
}


%>

</body>
</html>
<jsp:include page="selcens.jsp"></jsp:include>
