<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
    <title>truYum-menu-admin</title>
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
    
    
    .nav{
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
    
    table{
    margin-left: 200px;
    border-spacing: 20px;
    }
    
    .addButton {
  
    -webkit-box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35); 
box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35);
	box-shadow: 0px 10px 14px -7px #bee2f9;
	background:linear-gradient(to bottom, #63b8ee 5%, #468ccf 100%);
	background-color:#63b8ee;
	border-radius:20px;
	border:2px solid #3866a3;
	display:inline-block;
	cursor:pointer;
	color:#14396a;
	font-family:Courier New;
	font-size:12px;
	font-weight:bold;
	font-style:italic;
	padding:5px 11px;
	text-decoration:none;
	text-shadow:-23px -13px 19px #7cacde;
}
.addButton:hover {
	background:linear-gradient(to bottom, #468ccf 5%, #63b8ee 100%);
	background-color:#468ccf;
}
.addButton:active {
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


.editButton {
-webkit-box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35); 
box-shadow: 0px 10px 13px -7px #000000, -9px 2px 23px 11px rgba(192,184,255,0.35);
	box-shadow:inset 0px 1px 0px 0px #bee2f9;
	background:linear-gradient(to bottom, #63b8ee 5%, #468ccf 100%);
	background-color:#63b8ee;
	border-radius:8px;
	border:1px solid #3866a3;
	display:inline-block;
	cursor:pointer;
	color:#14396a;
	font-family:Courier New;
	font-size:14px;
	font-weight:bold;
	font-style:italic;
	padding:7px 10px;
	text-decoration:none;
	text-shadow:0px 1px 0px #7cacde;
}
.editButton:hover {
	background:linear-gradient(to bottom, #468ccf 5%, #63b8ee 100%);
	background-color:#468ccf;
}
.editButton:active {
	position:relative;
	top:1px;
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
 
 table.admin-menu-table {
 -webkit-box-shadow: -10px 0px 13px -7px #000000, 10px 0px 13px -7px #000000, inset -4px -4px 26px 3px rgba(192,184,255,0.45); 
box-shadow: -10px 0px 13px -7px #000000, 10px 0px 13px -7px #000000, inset -4px -4px 26px 3px rgba(192,184,255,0.45);
  font-family: "Comic Sans MS", cursive, sans-serif;
  border: 5px solid #555555;
  background-color: #555555;
  width: 400px;
  text-align: center;
  border-collapse: collapse;
}
table.admin-menu-table td, table.admin-menu-table th {
  border: 1px solid #555555;
  padding: 10px 10px;
}
table.admin-menu-table tbody td {
  font-size: 13px;
  font-weight: bold;
  color: #CEFFC8;
}
table.admin-menu-table td:nth-child(even) {
  background: #398AA4;
}
table.admin-menu-table thead {
  background: #398AA4;
  background: -moz-linear-gradient(top, #6aa7bb 0%, #4c95ad 66%, #398AA4 100%);
  background: -webkit-linear-gradient(top, #6aa7bb 0%, #4c95ad 66%, #398AA4 100%);
  background: linear-gradient(to bottom, #6aa7bb 0%, #4c95ad 66%, #398AA4 100%);
  border-bottom: 10px solid #398AA4;
}
table.admin-menu-table thead th {
  font-size: 15px;
  font-weight: bold;
  color: #FFB1E4;
  text-align: center;
  border-left: 3px solid #398AA4;
}
table.admin-menu-table thead th:first-child {
  border-left: none;
}

table.admin-menu-table tfoot td {
  font-size: 8px;
}
table.admin-menu-table tfoot .links {
  text-align: right;
}
table.admin-menu-table tfoot .links a{
  display: inline-block;
  background: #FFFFFF;
  color: #398AA4;
  padding: 2px 8px;
  border-radius: 5px;
}

  .footer {
  clear: both;
    position: relative;
    height: 100px;
    margin-top: -200px;
    top:10px;
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
      <p><a href="/logout" class="logoutButton">LOGOUT</a></p>
      <p><a href="/admin-menu" class="cartButton">Menu</a></p>
    </div>

    <h1>Menu Items</h1>

  <table class="admin-menu-table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Active Status</th>
        <th>Date of Launch</th>
        <th>Category</th>
        <th>Free Delivery</th>
        <th>Action</th>
        <th>Action</th>
      </tr>
    </thead>

    <tbody>
    <c:forEach items="${menuItemList}" var="menu">
      <tr>
        <td>${menu.name}</td>
        <td>${menu.price}</td>
        <td>${menu.activeStatus}</td>
        <td><fmt:formatDate value="${menu.dateOfLaunch}" pattern="dd/MM/yyyy"/></td>
        <td>${menu.category}</td>
        <td>${menu.freeDelivery}</td>
        <td><a href="/edit-menu" class="editButton">Edit</a></td>
        <td style="color: red;"><a href="/delete-menu?id=${menu.id}" class="deleteButton">Delete</a></td>
      </tr>

 </c:forEach>
    </tbody>


  </table>
  <p ><a href="/add-menu" class="addButton" >ADD MENU ITEM</a></p>
  
 <div class="footer">
 <p class="footerLogo">truYum</p>
  <p class="footerText">Created By Manish</p>
</div> 
  </body>
</html>
