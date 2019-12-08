<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: blue;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: red;
}

.active {
  background-color: blue;
  orange
}
</style>
</head>
<body>


<ul>
  <li><a href="../Designs/index.jsp">Home</a></li>
  <li><a href="../donor/donor_add.jsp">Register Donor</a></li>
  <li><a href="../receiver/receiver_add.jsp">Register Receiver</a></li>
  <li><a href="../donor/donor_view_all.jsp">View Donor Details</a></li>
  <li><a href="../receiver/receiver_view_all.jsp">View Receiver Details</a></li>
  <li><a href="../admin/admin_home.jsp">Admin Page</a></li>
</ul>

</body>
</html>