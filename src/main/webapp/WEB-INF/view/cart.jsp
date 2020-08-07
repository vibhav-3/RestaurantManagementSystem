<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
    <title>truYum-menu-customer-cart</title>
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
    nav{
    height: 100px;
    background-color: aliceblue;
    }
    
    p{
    float: right;
    margin-right: 200px;
    margin-top: 35px;
    
    }
    .2p
    {
     display: inline;
    float: right;
    margin-top: 35px;
    margin-right: 100px;
    }
    
    h1{
     margin-left: 200px;
    height: 60px;
    }
    
    table{
    margin-left: 200px;
    border-spacing: 20px;
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

.deleteButton {
-webkit-box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35); 
box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35);
	box-shadow:inset 0px 1px 16px -7px #f29c93;
	background:linear-gradient(to bottom, #fe1a00 5%, #ce0100 100%);
	background-color:#fe1a00;
	border-radius:8px;
	border:2px solid #d83526;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Courier New;
	font-size:14px;
	font-weight:bold;
	font-style:italic;
	padding:7px 13px;
	text-decoration:none;
	text-shadow:0px 1px 0px #b23e35;
}
.deleteButton:hover {
	background:linear-gradient(to bottom, #ce0100 5%, #fe1a00 100%);
	background-color:#ce0100;
}
.deleteButton:active {
	position:relative;
	top:1px;
}
  
  table.cart {
  position: relative;
    top: 150px;
  font-family: "Comic Sans MS", cursive, sans-serif;
  border: 5px solid #555555;
  background-color: #555555;
  width: 400px;
  text-align: center;
  border-collapse: collapse;
}
table.cart td, table.cart th {
  border: 1px solid #555555;
  padding: 10px 10px;
}
table.cart tbody td {
  font-size: 13px;
  font-weight: bold;
  color: #CEFFC8;
}
table.cart td:nth-child(even) {
  background: #398AA4;
}
table.cart thead {
  background: #398AA4;
  background: -moz-linear-gradient(top, #6aa7bb 0%, #4c95ad 66%, #398AA4 100%);
  background: -webkit-linear-gradient(top, #6aa7bb 0%, #4c95ad 66%, #398AA4 100%);
  background: linear-gradient(to bottom, #6aa7bb 0%, #4c95ad 66%, #398AA4 100%);
  border-bottom: 10px solid #398AA4;
}
table.cart thead th {
  font-size: 15px;
  font-weight: bold;
  color: #FFB1E4;
  text-align: center;
  border-left: 3px solid #398AA4;
}
table.cart thead th:first-child {
  border-left: none;
}

table.cart tfoot td {
  font-size: 8px;
}
table.cart tfoot .links {
  text-align: right;
}
table.cart tfoot .links a{
  display: inline-block;
  background: #FFFFFF;
  color: #398AA4;
  padding: 2px 8px;
  border-radius: 5px;
}  


.totalText {
	box-shadow: 0px 0px 0px 2px #9fb4f2;
	background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	background-color:#7892c2;
	border-radius:8px;
	border:2px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Courier New;
	font-size:19px;
	font-style:italic;
	padding:12px 33px;
	text-decoration:none;
	text-shadow:0px 1px 20px #283966;
}
.totalText:hover {
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	background-color:#476e9e;
}
.totalText:active {
	position:relative;
	top:1px;
}
.footer {
clear: both;
    position: relative;
    height: 100px;
    margin-top: -200px;
    top:150px;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: ghostwhite;
   color: blue;
   text-align: center;
}
    </style>

  </head>
  <body>

    <div class="nav">
       <p class="logo">truYum</p>
      <p><a href="/user-menu" class="cartButton">Menu</a></p>
      <p class="2p"><a href="/cart-menu" class="cartButton">Cart</a></p>
    </div>

  <table class="cart">
    <thead>
      <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Category</th>
        <th>Free Delivery</th>
        <th>Action</th>
      </tr>
    </thead>

    <tbody>
    <c:forEach items="${cartList}" var="cart">
      <tr>
        <td>${cart.name}</td>
        <td>${cart.price}</td>
        <td>${cart.category}</td>
        <td>${cart.freeDelivery}</td>
        <td><a href="/cart-delete?id=${cart.id}" class="deleteButton">Delete</a></td>
      </tr>
</c:forEach>
    </tbody>


  </table>
  
<p class="totalText">Total : ${total}</p>

 <div class="footer">
 <p class="footerLogo">truYum</p>
  <p class="footerText">Created By Manish</p>
</div>
  </body>
</html>
