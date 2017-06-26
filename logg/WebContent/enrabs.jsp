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
String id=request.getParameter("btn");
String clss=request.getParameter("clss");
String idabs=request.getParameter("idabs");
System.out.print(id);
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/app","root","yassine");
Statement sst=con.createStatement();
String nb ;
//while(rs.next()){
	/*if(rs.next()){
	String nb=rs.getString("nbrh");	

int nbn=Integer.valueOf(nb);

int nnbh=nbn+2;

String qrr="UPDATE etu SET nbrh='"+nnbh+"' WHERE  id='"+idabs+"'";
sst.executeUpdate(qrr);*/

//}
//System.out.print(bt);
// while(rs.next()){
//	for(int i=1;i<=2;i++){
	// boolean bt = request.getParameter("btn")!=null;
	 //String btt=String.valueOf(bt);
// switch (btt) {
	//case "true": 
		//if (btt.toString()=="true"){
			String qr="SELECT * FROM etu WHERE id='"+idabs+"'";
	ResultSet rs=sst.executeQuery(qr);
	while(rs.next()){
	
		nb=rs.getString("nbrh");	

	int nbn=Integer.valueOf(nb);

	int nnbh=nbn+2;

	String qrr="UPDATE etu SET nbrh='"+nnbh+"' WHERE  id='"+idabs+"'";
	sst.executeUpdate(qrr);//}}
    // break;

	/*case "false" : 
	out.print(rs.getString("nutili")+"abssent");
	break;
	default: System.out.println("err");*/

 
/*if(bt==true){
	System.out.print(rs.getString(3));
	System.out.println(bt);
}
else {
	System.out.println(btrequest.getParameter("btn"));
	out.print("nabssent");
} */
 //}
}
%>
 <jsp:forward page="/selcens.jsp"/>
</body>
</html>