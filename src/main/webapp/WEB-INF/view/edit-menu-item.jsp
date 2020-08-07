<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
    <title>truYum-menu-edit</title>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@700&display=swap" rel="stylesheet">
    <style>
     .footerText{
font-family: 'Kaushan Script', cursive;
color: darkturquoise;
font-size: 25px;
}
    body{
    margin-top: 0px;
  margin-left: 0px;
  margin-right: 0px;
  margin-bottom: 0px;
 background: rgb(138,148,250);
background: -moz-linear-gradient(top, rgb(138,148,250) 0%, rgb(140,146,255) 100%, rgb(245,255,245) 100%);
background: -webkit-linear-gradient(top, rgb(138,148,250) 0%, rgb(140,146,255) 100%, rgb(245,255,245) 100%);
background: linear-gradient(to bottom, rgb(138,148,250) 0%, rgb(140,146,255) 100%, rgb(245,255,245) 100%);
    }
    
    .nav
    {
    height: 100px;
    background-color: aliceblue;
    }
    
   .logo{
   font-family: 'Josefin Sans', sans-serif;
   margin-left: 50px;
    margin-right: 50px;
    margin-top: 40px;
    margin-bottom: 40px;
    position: relative;
    right: 1300px;
    font-size: 40px;
    color: darkturquoise;
   }
   .footerLogo{
   font-family: 'Josefin Sans', sans-serif;
   margin-left: 50px;
    margin-right: 50px;
    margin-top: 40px;
    margin-bottom: 40px;
    position: relative;
    right: 1300px;
    font-size: 30px;
    color: darkturquoise;
   } 
    p{
    display: inline;
    float: right;
    margin-top: 35px;
    margin-right: 100px;
    }
    
    h1{
    margin-left: 200px;
    height: 60px;
    }
    
    form{
    margin-left: 50px;
    }
    
    .name{
    position: relative;
    top: 30px;
    right: 40px;
    }
    
    .div1
    {
    position: relative;
    top: 100px;
    }
    
     .price
    {
    position: relative;
    top: 30px;
    right: 65px;
    }
    
    .dateOfLaunch
    {
    position: relative;
    top: 30px;
    right: 100px;
    }
    
    .category
    {
    position: relative;
    top: 30px;
    right: 55px;
    }
    
    
    .errors{
    color: red;
    }
    
    .updateButton {
    background-color: green;
  border: 12px solid rgba(30,128,10,0.98);
border-radius: 40px;
    -webkit-box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35); 
box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35);
    position: relative;
    top: 150px;
    left: 30px;

}

.cartButton {
-webkit-box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35); 
box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35);
	box-shadow:inset 0px 1px 0px 0px #e184f3;
	background:linear-gradient(to bottom, #c123de 5%, #a20dbd 100%);
	background-color:#c123de;
	border-radius:8px;
	border:2px solid #a511c0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Courier New;
	font-size:14px;
	font-weight:bold;
	font-style:italic;
	padding:6px 10px;
	text-decoration:none;
	text-shadow:0px 1px 0px #9b14b3;
}
.cartButton:hover {
	background:linear-gradient(to bottom, #a20dbd 5%, #c123de 100%);
	background-color:#a20dbd;
}
.cartButton:active {
	position:relative;
	top:1px;
}

.logoutButton {
-webkit-box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35); 
box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35);
	box-shadow:inset 0px 1px 0px 0px #f9eca0;
	background:linear-gradient(to bottom, #f0c911 5%, #f2ab1e 100%);
	background-color:#f0c911;
	border-radius:10px;
	border:1px solid #e65f44;
	display:inline-block;
	cursor:pointer;
	color:#c92200;
	font-family:Courier New;
	font-size:14px;
	font-weight:bold;
	font-style:italic;
	padding:9px 19px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ded17c;
}
.logoutButton:hover {
	background:linear-gradient(to bottom, #f2ab1e 5%, #f0c911 100%);
	background-color:#f2ab1e;
}
.logoutButton:active {
	position:relative;
	top:1px;
}
 .footer {
  clear: both;
    position: relative;
    height: 100px;
    margin-top: -200px;
    top:600px;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: ghostwhite;
   color: blue;
   text-align: center;
}       
    </style>

  </head>
  <body >

    <div class="nav">
 <p class="logo">truYum</p>
       <p><a href="/logout" class="logoutButton">LOGOUT</a></p>
      <p><a href="/admin-menu" class="cartButton">Menu</a></p>
    </div>

    <h1>Edit Menu Items</h1>

<form:form class="edit-form" action="/edit-menu" method="post" modelAttribute="menuItem">

  <form:label path="name" style="margin-left: 30px;">Name</form:label><form:input type="text" path="name" class="name"/><br>
  <form:errors path="name" cssClass="errors"></form:errors>

<div class="div1">
  <form:label path="price" style="margin-left: 30px;">Price(Rs.)</form:label>
  <form:input type="number" path="price" class="price"/>
  <form:errors path="price" cssClass="errors"></form:errors>
  
  <form:label path="activeStatus">Active Status</form:label><form:radiobutton  path="activeStatus" value="Yes"/>Yes  <form:radiobutton path="activeStatus" value="No"/>No
  
  <form:label path="dateOfLaunch" style="margin-left: 50px;">Date of Launch</form:label>
  <form:input type="String" path="dateOfLaunch" value="${dateOfLaunch}" class="dateOfLaunch"/> 
  <form:errors path="dateOfLaunch" cssClass="errors"></form:errors>
  
  <form:label path="category">Category</form:label>
  <form:select class="category" path="category" >
    <form:option value="Main Course">Main Course</form:option>
    <form:option value="Starter">Starter</form:option>
    <form:option value="Dessert">Dessert</form:option>
    <form:option value="Drinks">Drinks</form:option>

  </form:select>
<form:label path="freeDelivery">Free Delivery </form:label><form:checkbox path="freeDelivery"/><br>
</div>

<input type="submit" name=submit class="updateButton" value="UPDATE"/>
</form:form>
<div class="footer">
<p class="footerLogo">truYum</p>
  <p class="footerText">Created By Manish</p>
</div>
  </body>
</html>
