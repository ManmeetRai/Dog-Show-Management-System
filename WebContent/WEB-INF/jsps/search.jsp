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
<form   action="/Assignment_Manmeet2/dogSearch"  method="post" >
Search By  :<select name="searchBy">
  <option value="entryNumber"> By Entry Number </option>
  <option value="name"> By Name </option>
  <option value="ownerName"> By Owner </option>
  <option value="breed"> By Breed </option>
  <option value="dogGroup"> By Group </option>
  </select>
  <input type="text" name="inputText"/><br/>
 	<br/><br/>
	<center>
		<input type="SUBMIT"/>
	</center>
	<br/><br/>
</form>


<table style="border:1px solid black" rules="all">
	<tr style="font-weight: bold">
	<td>Entry Number</td>
	<td>Dog Name</td>
	<td>Owner Name</td>
	<td>Breed</td>
	<td>Group</td>
	<td>Gender</td>
	<td>Type</td>
	</tr>
	<c:forEach items="${dogsList}" var="dog">
	<tr style="text-align: center">
		<td> ${dog.entryNumber} </td>
		<td> ${dog.name} </td>
		<td> ${dog.ownerName} </td>
		<td> ${dog.breed} </td>
		<td> ${dog.dogGroup} </td>
		<td> ${dog.gender} </td>
		<td> ${dog.specialty} </td>
	</tr>
	</c:forEach>
</table>



</body>
</html>