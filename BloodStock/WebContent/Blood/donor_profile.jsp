<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="blood.dto.*,blood.bl.*,blood.dl.*,blood.utlity.*,java.sql.Date,java.util.*,java.text.SimpleDateFormat "%>
<html>
<head>
 <title>Donor Profile</title>
 <script type="text/javascript">
 
 </script>
 
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

input[type=text], select, textarea {
  width: 50%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}


input[type=date]{
  width: 25%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>



 <%if(session.getAttribute("donorId")!=null)
                  {
                	  out.println(" Hello "+(String)session.getAttribute("donorId"));
                	  //session.removeAttribute("message");
                  }
                  else
                  {
                	  response.sendRedirect("donor_logout.jsp");
                  }
                  %>

<%@ include file="../includes/menu.jsp" %>

 <%! 
 
         long phone;
	     float height,weight;  
	     
         String sdonor_id,sdonor_name,sblood_grp,sgender,sdob,sphone,sheight,sweight;
         boolean ErrorFlag=false;
         boolean sErrorFlag=false;
         
         String message="";          
         DonorDTO donor=null;
         DonorDTO donor2=null;
 
         int result=0;
                   
      %>
      <%
        if(request.getParameter("submit")!=null)
        {
                	   
         message="";
         ErrorFlag=false;
         sErrorFlag=false;         
         sdonor_id="";sdonor_name="";sblood_grp="";sgender="";sdob="";sphone="";sheight="";sweight="";
                  	    
        }
   
        else
        {
           message="";
           ErrorFlag=false;
           sErrorFlag=false;
           String donor_id=(String)session.getAttribute("donorId");
           donor=DonorBL.getDonor(donor_id);   
           
            
          if(donor!=null)
           {
        	   
           	   sdonor_name=donor.getDonor_name(); 
           	   session.setAttribute("donor_name", sdonor_name);
           	   
           	   sblood_grp =donor.getBlood_grp();
           	   session.setAttribute("blood_grp", sblood_grp);

           	   sgender= donor.getGender();
           	   session.setAttribute("gender", sgender);

           	   sdob=donor.getDob();
           	   session.setAttribute("dob", sdob);

           	   phone=donor.getPhone();
           	   session.setAttribute("Phone", phone);

           	   height=donor.getHeight();
           	   session.setAttribute("Height", height);

           	   weight=donor.getWeight();
           	   session.setAttribute("Weight", weight);
           	   
           	   
           	System.out.println(donor_id);
        	System.out.println(sdonor_name);
        	System.out.println(sblood_grp);
        	System.out.println(sgender);
        	System.out.println(sdob);
        	System.out.println(phone);
        	System.out.println(height);
        	System.out.println(weight);


           }
           else
           {
           	   sdonor_id="";sdonor_name="";sblood_grp="";sgender="";sdob="";sphone="";sheight="";sweight="";
           }
              		   
       }
                   
  %><%--=message --%>
  
  
  <%!  
     String result2;
     ArrayList<StockDTO> counts = null;
     StockDTO count =null;
     
	%>

<%
	String donor_id=(String)session.getAttribute("donorId");

    int count=StockBL.getCount(donor_id);
    System.out.println(count);
    
%>

<div class="imgcontainer">
<center>
	<h3>Hello, <%=sdonor_name %></h3>
    <img src="../images/Blood.jpg" alt="HELLO!!" width="200px" height="200px"  style="border-radius:50%" >
    <h4>You Have Donated <%=count%> Times</h4>
</center>    
</div>

   
<div class="container">

 <center>
 <table>
 <tr>
 <form action="welcome_donor.jsp">
    
    
	<label for="name">Your ID</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" id="name" name="txtDonorId" placeholder="Your name.." 
    value="<%=session.getAttribute("donorId")%>" readonly ><br><br>
	
	
    <label for="name">Your Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="name" name="txtDonorName" placeholder="Your name.." value="<%=sdonor_name %>" readonly><br><br>

     <label for="bld_grp" >Blood Group</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="text" id="name" name="gender" placeholder="blood group.." value="<%=sblood_grp%>" readonly><br><br>
    
    
    <label for="gender">Gender : </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type = "text" name = "gender" value = "<%=sgender%>" readonly><br><br>

    <label for="dob">Date of Birth</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type = "text" id ="date" name="dob" value="<%=sdob%>" readonly><br><br>
  
    
    <label for="phone">Contact No:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type = "text" name = "txtPhone" placeholder = "Your contact no is.." value="<%=phone%>" readonly><br><br>
    
      <label for="height">Height</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="height" name="txtHeight" value="<%=height%>" placeholder="Your height is..." readonly><br><br>
    
      <label for="weight">Weight</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="weight" name="txtWeight" value="<%=weight%>" placeholder="Your weight.." readonly><br><br>
    
   
    <input type="submit" value="Back">
 </form>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
 <form action="donor_edit.jsp" method="post">
 <input type="submit" value="Update">
 </form>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
 <form action="donationform.jsp" method="post">
 <input type="submit" value="Donate">
 </form>
 
 </tr>
 </table>
 </center> 
</div>
 
<%@ include file="../Designs/footer.jsp" %>
</body>
</html>
