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
<table  rules="all" style="border:1px solid black">
	<tr style="font-weight: bold">
	<td>Entry Number</td>
	<td>Dog Name</td>
	<td>Owner Name</td>
	<td>Breed</td>
	<td>Group</td>
	<td>Gender</td>
	<td>Type</td>
	<td>Host Dates</td>
	<td>Click to Edit</td>
	<td>Click to Delete Record</td>
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
		<td><a href="<c:url value="/editLink/${dog.entryNumber}" />">Edit</a></td>
		<td><a href="<c:url value="/deleteLink/${dog.entryNumber}" />">Delete</a></td>
	</tr>
	</c:forEach>
</table>



</body>
</html>