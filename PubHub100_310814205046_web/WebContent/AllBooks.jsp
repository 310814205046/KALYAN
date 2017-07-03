<%@page import="com.revature.model.Book"%>
<%@page import="java.util.List"%>
<%@page import="com.revature.DAO.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOOKS</title>
</head>
<body action="FindAll" method="post">

<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="successful.jsp" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>BOOKOID</a>
  <a href="AddBook.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-orange" title="insert">AddBook</i></a>
  <a href="ChangePrice.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-orange" title="Account Settings">Change Price</i></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white" title="Messages">View</a>
  
  </div>
 
</div>

<div class="w3-display-middle" style="width:600px">
<table class="w3-table-all  w3-border  w3-border w3-small" >
<tr class="w3-blue">
<th>BOOK ID</th>
<th>Book Name</th>
<th>Author</th>
<th>Price</th>
<%
BookDAO bd=new BookDAO();
List<Book> list=bd.findAll();

for(Book book:list)
{
%>

<tr>
	<td><%=book.getId() %></td>
	<td><%=book.getBookname() %></td>
	<td><%=book.getAuthor() %></td>
	<td><%=book.getPrice() %></td>

</tr>
 <%
 }
 %>
 </div>
 

</body>
</html>