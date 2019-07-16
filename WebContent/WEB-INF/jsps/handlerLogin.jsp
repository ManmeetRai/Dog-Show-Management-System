<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Choose a Date to view Dogs Register on that day</title>
<style>
body{
    background-image: url("https://image.freepik.com/free-photo/3d-render-of-spotlights-on-a-grunge-brick-wall_1048-6284.jpg" ) ;
	color:white;
     background-size: 100% 300%;
     background-repeat: no-repeat;
     }
     a{
     color:white;
     font-size: 18px;
     }
     ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

/* Change the link color on hover */
li a:hover {
  background-color: #555;
  color: white;
}
     #header{
     text-align:center;
     background-color: grey;
     }
     </style>
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
	<td>Entry Number</td>
	<td>Dog Name</td>
	<td>Owner Name</td>
	<td>Breed</td>
	<td>Group</td>
	<td>Gender</td>
	<td>Type</td>
	<td>Date</td>
	</tr>
	<c:forEach items="${dogsList}" var="dog">
	<tr style="align:center">
		<td> ${dog.entryNumber} </td>
		<td> ${dog.name} </td>
		<td> ${dog.ownerName} </td>
		<td> ${dog.breed} </td>
		<td> ${dog.dogGroup} </td>
		<td> ${dog.gender} </td>
		<td> ${dog.specialty} </td>
		<td> ${dog.dayOfShow} </td>
	</tr>
	</c:forEach>
</table>

<br/><br/>


</body>
</html>