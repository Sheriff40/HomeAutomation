<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html style="background:black;">
<head>
<meta charset="ISO-8859-1">
<title>EarthQuake Detection Device</title>
<style>
	body
	{
	width:50%;margin:0 auto;background:#f9f9f9;padding:50px;text-align:center;background:#f9f9f9;
	}
</style>
</head>
<body>
	
	<c:forEach var="listVar" items="${earthquakes}">
  			<c:out value="${listVar.id}. "/>
  			EarthQuake Detected Time: ${listVar.description}
  			<br>
  		
	</c:forEach>
</body>
</html>