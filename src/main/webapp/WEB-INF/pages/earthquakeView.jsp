<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="background:black;">
<head>
<meta charset="ISO-8859-1">
<title>EarthQuake Detection Device</title>
<style>
	html
	{
	padding:170px 0px;
	}
	body{
		width:50%;margin:0 auto;background:#f9f9f9;padding:50px;
		position:relative;
	}
	h1{
		text-align:center;color:green;font-style:italics;
	}
	a{
	padding:10px;color:white;background:black;style:none;position:absolute;
	top:5%; right:2%;
	
	}
</style>
</head>
<body>
	<h1 >${earthquake.id} ${earthquake.description}</h1>
	<a href="http://localhost:8080/earthquakes" ]>All earthquakes</a>
	<hr>
	<h2 >Earthquake Date: ${time.getMonth()}, ${time.getDayOfMonth()}, ${time.getYear() }</h2>
	<h2>Earthquake Time: ${time.getHour()}:${time.getMinute() }:${time.getSecond()}</h2>
	
</body>
</html>