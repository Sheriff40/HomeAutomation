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
	h1
	{
		text-align:center;
	}
</style>
</head>
<body>
	<h1>Earthquakes</h1>
	<hr>
	<c:forEach var="listVar" items="${earthquakes}">
  			<c:out value="${listVar.id}. "/>
  			Earthquake Detected Date: ${listVar.date.getMonth()}, ${listVar.date.getDayOfMonth()}, ${listVar.date.getYear()}, Time:  ${listVar.date.getHour()}:${listVar.date.getMinute() }:${listVar.date.getSecond()}
  			<br>
  		
	</c:forEach>
</body>
</html>