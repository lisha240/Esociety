<%@page import="USERDAO.maintenancedao"%>
<%@page import="bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>payment success</h1>
<%

User u=(User)session.getAttribute("user");
maintenancedao.payment(u);
%>


</body>
</html>