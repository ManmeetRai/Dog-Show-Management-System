<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html>
<html>
<head>
<style>
body  {
		color:white;
    background-image: url("https://wallpapercave.com/wp/wp2308793.jpg" ) ;

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
<body >
<h1 style="color:white; test-align:center;" id="header">Dog Shows</h1>
<h1>Registration</h1>
<a href="/Assignment_Manmeet2/"><button>Main Menu</button></a>
<form:form  modelAttribute="dog"  action="/Assignment_Manmeet2/dogRegister"  method="post" >
	Name : <form:input type="text" path="name" /><br/>
	Owner name : <form:input type="text" path="ownerName"/><br/>
	Breed : <form:input type="text" path="breed"/><br/>
	Group (Must be one of the 7 groups listed) : <form:select path="dogGroup" items="${dog.dogGroups}" />
	<br/>
	Gender (Male/Female) : <form:select path="gender" items="${dog.dogGenders}" /><br>
	Enter E-mail : <form:input type="text" path="email"/><br/>
	Class or Specialty : <form:select path="specialty" items="${dog.dogSpecialtiesOrClass}" /><br>
	Choose a Hosting date : <form:checkbox path="dayOfShow" value="Jan-4-2019" />Jan 4, 2019 , Friday
	<form:checkbox path="dayOfShow" value="Jan-4-2019" />Jan 5, 2019, Saturday
    <form:checkbox path="dayOfShow" value="Jan-4-2019" />Jan 6, 2019, Sunday
	<br/><br/>
	<center>
	<input type="SUBMIT"/>
	</center>
</form:form >



</body>
</html>