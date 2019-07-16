<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
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
<h1 style="color:white; test-align:center;" id="header">Dog Shows</h1>
<body >
<a href="/Assignment_Manmeet2/"><button>Main Menu</button></a>
<table  rules="all" style="border:1px solid black">
	<tr style="font-weight: bold">
	<td>Dog Name</td>
	<td>Owner Name</td>
	<td>Breed</td>
	<td>Group</td>
	<td>Gender</td>
	<td>Type</td>
	<td>Host Dates</td>
	<td>Award In Group</td>
	<td>Assign Awards</td>
	</tr>
	<tr modelAttribute="dog"  style="align:center">
	<td> ${dog.name} </td>
	<td> ${dog.ownerName} </td>
	<td> ${dog.breed} </td>
	<td> ${dog.dogGroup} </td>
	<td> ${dog.gender} </td>
	<td> ${dog.specialty} </td>
	<td> ${dog.dayOfShow} </td>
	<td height="68" width="48%"> ${dog.awards}
		<c:choose>
		    <c:when test="${dog.awards == 'Best of Breed'}">
		     <img src='<c:url value="/images/bestInBread.jpg"></c:url>' />
		    </c:when>
		    <c:when test="${dog.awards == 'Reserve Winners'}">
		     <img src='<c:url value="/images/reserveWinner.jpg"></c:url>' />
		    </c:when>
		    <c:when test="${dog.awards == 'Best of Opposite Sex'}">
		     <img src='<c:url value="/images/bestOfOppositeSex.jpg"></c:url>' />
		    </c:when>
		</c:choose>	
	 </td>
	<td> ${dog.awardsInGroup} </td>
	</tr>
</table>
 <form:form  modelAttribute="dog"  action="/Assignment_Manmeet2/dogAwardsAssign"  method="post" >
	<form:hidden path="entryNumber" value="${dog.entryNumber}" />
	<form:hidden path="name" value="${dog.name}" />
	<form:hidden path="ownerName" value="${dog.ownerName}" />
	<form:hidden path="breed" value="${dog.breed}" />
	<form:hidden path="dogGroup" value="${dog.dogGroup}" />
	<form:hidden path="gender" value="${dog.gender}" />
	<form:hidden path="email" value="${dog.email}" />
	<form:hidden path="specialty" value="${dog.specialty}" />
	<form:hidden path="dayOfShow" value="${dog.dayOfShow}" />
	Award :<form:select path="awards">
            <form:option value="Best of Breed">Best of Breed</form:option>
            <form:option value="Reserve Winners">Reserve Winners</form:option>
            <form:option value="Best of Opposite Sex">Best of Opposite Sex</form:option>
            </form:select>
	<br/>
	Award in Group : <form:select path="awardsInGroup">
            <form:option value="First in Group">First in Group</form:option>
            <form:option value="Second in Group">Second in Group</form:option>
            <form:option value="Third in Group">Third in Group</form:option>
            <form:option value="Best of Opposite Sex">Fourth in Group</form:option>
            </form:select>
	<br/><br/>
	<center>
	<input type="SUBMIT"/>
	</center>
</form:form >



</body>
</html>