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
<title>Add Book</title>
</head>
<body >

<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="successful.jsp" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>BOOKOID</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white" title="insert">AddBook</i></a>
  <a href="ChangePrice.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-orange" title="Account Settings">Change Price</i></a>
  <a href="AllBook.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-orange" title="Messages">View</a>
  
  </div>
 
</div>


<div class="w3-col m5 w3-twothird" style="max-width:1900px;margin-top:80px;margin-left:500px">

<form class="w3-panel w3-center w3-card-2" action="AddBook" method="post">
  <h2>Add Book</h2>

  <p><input class="w3-input" type="text" placeholder="Bookname" name="bookname"></p>
  <p><input class="w3-input" type="text" placeholder="Author" name="author"></p>
  <p><input class="w3-input" type="number" placeholder="price" name="price"></p>
  <p><button class="w3-btn w3-black" type="submit" onclick="document.getElementById('id01').style.display='block'" class="w3-btn w3-black">SAVE</button></p>
  
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4">
      <header class="w3-container w3-grey"> 
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
        <h2>Bookoid</h2>
      </header>
      <div class="w3-container">
        <p>Book Added!</p>
        
      </div>
      
    </div>
  </div>
  
</form>
</div>





<footer class="w3-container w3-theme-d3 w3-padding-16 w3-bottom">
</footer>
</body>
</html>