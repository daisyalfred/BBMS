<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Donor welcome page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../Designs/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="../Designs/css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="../Designs/style.css">
    <script src="js/custom.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<h1>Welcome <%=session.getAttribute("donorId")%></h1>

 <%if(session.getAttribute("donorId")!=null)
                  {
                	  out.println(" Hello "+(String)session.getAttribute("donorId"));
                	  //session.removeAttribute("message");
                  }
                  else
                  {
                	  response.sendRedirect("../authentication/donor_logout.jsp");
                  }
                  %>


<%@ include file="../includes/menu.jsp" %>
<table><tr>
<form action="donor_edit.jsp" method="post">
	<input type="submit" name="update" value="UPDATE">
</form>&nbsp;&nbsp;
<form action="donationform.jsp" method="post">
	<input type="submit" name="dform" value="DONATE">
</form>&nbsp;&nbsp;
<form action="donor_profile.jsp" method="post">
	<input type="submit" name="dprofile" value="VIEW PROFILE">
</form>&nbsp;&nbsp;
<form action="../authentication/donor_logout.jsp" method="post">
	<input type="submit" name="logout" value="LOGOUT">
</form>
</tr></table>


</body>
<%@ include file="../Designs/footer.jsp" %>
</html>