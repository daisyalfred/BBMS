<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="blood.dto.*,blood.bl.*,blood.dl.*,blood.utlity.*,java.sql.Date,  java.text.SimpleDateFormat "%>


<!DOCTYPE html>
<html>
<head>
<title>Donor Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<center>
<h2>WELCOME T0 DONOR PAGE</h2>
</center>

<form action="" method="post">
<div>

<table>
<tr>
  <%! 
      String message=""; 
  	  String donor_login_id;
	  DonorLoginDTO user1=null;
	  DonorLoginDTO user2=null;
	  String donor_password;
  %>               
   <td height="33" align="center" valign="middle" style="color: #F70509">
   <%
                   if(request.getParameter("submit")!=null)
                   {
                	   donor_login_id=request.getParameter("txt_user_id") ;
                	  donor_password=request.getParameter("txt_password");
                	  user1=new DonorLoginDTO();

                	  user1.setDonor_login_id(donor_login_id);  
                	  user1.setDonor_password(donor_password);
                	  //session.setAttribute("donor_login_id", donor_login_id);
                	  user2=DonorLoginBL.validateUser(user1);
                	  if(user2!=null)
                	  {
                		 // session.setAttribute("user_name", user2.getDonor_password());
                		  session.setAttribute("donorId", user2.getDonor_login_id());
                		  response.sendRedirect("welcome_donor.jsp");
                	  }
                	  else
                	  {
                		  message="wrong userID or password";
                		  
                	  }
                   }
   
   %>
   			      <%=message %>
      
                  </td>
                </tr>
</table>
</div>
  <div class="imgcontainer">
    <img src="../images/P22.jpg" alt="HELLO!!" class="avatar" width="70px" height="250px">
  </div>

  <div class="container">
    <label for="uname"><b>UserId</b></label>
    <input type="text" placeholder="Enter UserID" name="txt_user_id" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="txt_password" required>
        
    <input type="submit" value="Login" name="submit">
    
  </div>
</form>






</body>
</html>