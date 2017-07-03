<%@page import="javax.swing.plaf.basic.BasicScrollPaneUI.HSBChangeListener"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
</head>
<body >

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>BOOKOID</a>
  <a href="AddBook.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-orange" title="insert">AddBook</i></a>
  <a href="ChangePrice.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-orange" title="changePrice">Change Price</i></a>
  
  <a href="AllBooks.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-orange" title="vies">View</a>
  
  </div>
 
</div>


    
	<div class="w3-container w3-content" style="max-width:1900px;margin-top:80px;margin-left:500px">      
    <!-- Left Column -->
    <div class="w3-col m5">
      <!-- Profile -->
      <div class="w3-card-2 w3-round w3-white">
        <div class="w3-container">
         <h4 class="w3-center">Welcome</h4>
             <hr>
        <a href="AddBook.jsp"> <p><i class="fa fa-plus fa-fw w3-margin-right w3-text-theme"></i> Add Book</p></a>
         <a href="ChangePrice.jsp"><p><i class="fa fa-barcode fa-fw w3-margin-right w3-text-theme"></i> Change Price</p>
         <a href="#"><p><i class="fa fa-search fa-fw w3-margin-right w3-text-theme"></i> View</p>
        </div>
      </div>
	</div>
	
	</div>
	
   
<!-- Footer -->
<footer class="w3-container w3-theme-d3 w3-padding-16 w3-bottom">
  
</footer>




</body>
</html>