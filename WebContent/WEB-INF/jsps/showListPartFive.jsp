<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
body  {
    background-image: url("https://wallpapercave.com/wp/wp2308793.jpg" ) ;
	color:white;
     background-size: 100% 300%;
     background-repeat: no-repeat;
     }
     #header{
     text-align:center;
     background-color: grey;
     }
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 style="color:white; test-align:center;" id="header">Dog Shows</h1>
<a href="/Assignment_Manmeet2/"><button>Main Menu</button></a>
	Choose a date  to view dogs that are register for that day to show:
	<ul>
		<li><a href="<c:url value="/friday" />">Jan 4, 2019 , Friday</a></li>
		<li><a href="<c:url value="/saturday" />">Jan 5, 2019, Saturday</a></li>
		<li><a href="<c:url value="/sunday" />">Jan 6, 2019, Sunday</a></li>
	</ul>
<table  rules="all" style="border:1px solid black">
	<tr style="font-weight: bold">
	<td>Breed Count</td>
	<td>Breed Name</td>
	<td>Owner Name</td>
	</tr>
	<tr>
		<c:forEach items="${dogsList}" var="dog">
			<td> ${dog.breed} </td>
			<td> ${dog.name} </td>
		<td> ${dog.specialty} </td>
	</tr>
	</c:forEach>
</table>



</body>
</html>