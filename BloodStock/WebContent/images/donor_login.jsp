<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="blood.dto.*,blood.bl.*,blood.dl.*,blood.utlity.*,java.sql.Date,  java.text.SimpleDateFormat "%>
<%--
  int donor_id=session.getAttribute("donor_id");
--%>
<title>Login</title>


<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>

 <script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>

 <style>
    #form label{float:left; width:140px;}
    #error_msg{color:red; font-weight:bold;}
 </style>

 <script>
    $(document).ready(function(){
        var $submitBtn = $("#form input[type='submit']");
        var $passwordBox = $("#password");
        var $confirmBox = $("#confirm_password");
        var $errorMsg =  $('<span id="error_msg">Passwords do not match.</span>');

        // This is incase the user hits refresh - some browsers will maintain the disabled state of the button.
        $submitBtn.removeAttr("disabled");

        function checkMatchingPasswords(){
            if($confirmBox.val() != "" && $passwordBox.val != ""){
                if( $confirmBox.val() != $passwordBox.val() ){
                    $submitBtn.attr("disabled", "disabled");
                    $errorMsg.insertAfter($confirmBox);
                }
            }
        }

        function resetPasswordError(){
            $submitBtn.removeAttr("disabled");
            var $errorCont = $("#error_msg");
            if($errorCont.length > 0){
                $errorCont.remove();
            }  
        }


        $("#confirm_password, #password")
             .on("keydown", function(e){
                /* only check when the tab or enter keys are pressed
                 * to prevent the method from being called needlessly  */
                if(e.keyCode == 13 || e.keyCode == 9) {
                    checkMatchingPasswords();
                }
             })
             .on("blur", function(){                    
                // also check when the element looses focus (clicks somewhere else)
                checkMatchingPasswords();
            })
            .on("focus", function(){
                // reset the error message when they go to make a change
                resetPasswordError();
            })

    });
  </script>




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
<%--!
 function checkPass()
  {
    var pass  = document.getElementById("password").value;
    var rpass  = document.getElementById("confirm_password").value;
   if(pass != rpass)
   {
       document.getElementById("submit").disabled = true;
       $('.missmatch').html("Entered Password is not matching!! Try Again");
   }
   else
   {
       $('.missmatch').html("");
       document.getElementById("submit").disabled = false;
   }
}

--%>
<%--
$('#password, #confirm_password').on('keyup', function () {
	  if ($('#password').val() == $('#confirm_password').val()) {
	    $('#message').html('Matching').css('color', 'green');
	  } else 
	    $('#message').html('Not Matching').css('color', 'red');
	});
--%>
<h2>DONOR LOGIN</h2>

<form id="form" name="form" action="welcome_donor.jsp" method="post">
<div>
<table>
<tr>
             
   <td height="33" align="center" valign="middle" style="color: #F70509">
   
        
   </td>
 </tr>
</table>
</div>
  <div class="imgcontainer">
    <img src="../images/Blood.jpg" alt="Blood" class="Blood">
  </div>
  
   
  <div class="container">
    <label for="username"><b>User ID</b></label>
    <input name="username" id="username" type="text" value="<%=session.getAttribute("donorId")%>">
    <label for="password">Password :</label> 
    <input name="password" id="password" type="password" /><br/>

    <label for="confirm_password">Confirm Password:</label>
    <input type="password" name="confirm_password" id="confirm_password" /><br/>

    
   
    <input type="submit" value="Login" name="submit">
    </div>
    </form>

</body>
</html>