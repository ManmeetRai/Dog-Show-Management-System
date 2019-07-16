<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body  {
    background-image: url("https://wallpapercave.com/wp/wp2308793.jpg" ) ;
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
<body >
<h1 style="color:white; test-align:center;" id="header">Dog Shows</h1>
	<ul>
		<li><a href="/Assignment_Manmeet2/register" >New Register</a></li>
		
		<li><a href="/Assignment_Manmeet2/search">Search Dog</a></li>
		
		<li><a href="/Assignment_Manmeet2/displayDogList">View Dog List</a></li>
		
		<li><a href="/Assignment_Manmeet2/showListPartFive">View Dog List By Class and Specialityr</a></li>
		
		<li><a href="/Assignment_Manmeet2/insert">Insert 100 dogs</a></li> 
	    			
		<li><a href="/Assignment_Manmeet2/handlerLogin">Handler </a></li>
			    			
		<li><a href="/Assignment_Manmeet2/awards">View Awards and Assign Awards </a></li>
	</ul>
</body>
</html>