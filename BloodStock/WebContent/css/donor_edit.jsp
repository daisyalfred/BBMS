<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="blood.dto.*,blood.bl.*,blood.dl.*,blood.utlity.*,java.sql.Date,  java.text.SimpleDateFormat "%>

<html>
<head>
 <title>Update Donor</title>
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

<h1>Donor Details</h1>

<%@ include file="../includes/menu.jsp" %>


 <%!     long phone;
	     float height,weight;  
	     
         String sdonor_id,sdonor_name,sblood_grp,sgender,sdob,sphone,sheight,sweight;
         String edonor_id,edonor_name,eblood_grp,egender,edob,ephone,eheight,eweight;
                   
         boolean ErrorFlag=false;
         boolean sErrorFlag=false;
         String message="";
                 

         DonorDTO donor=null;
         int result=0;
                   
      %>
      <%
        if(request.getParameter("submit")!=null)
        {
                	   
         message="";
         ErrorFlag=false;
         sErrorFlag=false;
         
         sdonor_id="";sdonor_name="";sblood_grp="";sgender="";sdob="";sphone="";sheight="";sweight="";
         edonor_id="";edonor_name="";eblood_grp="";egender="";edob="";ephone="";eheight="";eweight="";

                 	   
         try
         {
                		   
        	sdonor_name=request.getParameter("txtDonorName");
        	sblood_grp=request.getParameter("txtBloodGrp");
            sgender=request.getParameter("gender");
        	sdob=request.getParameter("dob");
        	sphone=request.getParameter("txtPhone");
        	sheight=request.getParameter("txtHeight");
        	sweight=request.getParameter("txtWeight");
               		    	
               		    	
         	if(sdonor_name.equals(""))
            {
         		edonor_name="Name should not be empty";
                sErrorFlag=true;
            }
               		   
         	if(!sErrorFlag)
            {
        	  phone=Long.parseLong(sphone); //Integer.parseInt(sphone);
              		    
              height= Float.parseFloat(sheight);
              weight= Float.parseFloat(sweight);

              donor = new DonorDTO(); 
              
              donor.setDonor_name(sdonor_name);
              donor.setBlood_grp(sblood_grp);
              donor.setGender(sgender);
              donor.setDob(sdob);
              donor.setPhone(phone);
              donor.setHeight(height);
              donor.setWeight(weight);
      		    
            if(!ErrorFlag)
            {
               	 result= DonorBL.updateDonor(donor);
                 if(result>0)
                 {
                    	session.setAttribute("message", "book details updated successfully!");
                 }
                 else
                 {
                       	session.setAttribute("message", "Invalid Operation!");
                 }
                 		  
                 response.sendRedirect("welcome_donor.jsp");
           }
        }
                                               		    
      }
   
      catch(Exception e)
      {
      		System.out.println("**Error** Book: book_update"+e.getMessage());
      		message = "error " +  e.getMessage();
      }
                	    
   }
   
        else
        {
                	   message="";
                	   ErrorFlag=false;
                	   sErrorFlag=false;
                	   
                	  /* phone=Long.parseLong(sphone);
                	   height=Float.parseFloat(sheight);
                	   weight=Float.parseFloat(sweight);*/

                	   
                	   String donor_id=request.getParameter("donorId");
                	   donor=DonorBL.getDonor(donor_id);   //.getBook(book_id);
                	   
                	   
                	   if(donor!=null)
                	   {
                		   sdonor_name=donor.getDonor_name(); 
                		   sblood_grp =donor.getBlood_grp();
                		   sgender= donor.getGender();
                		   sdob=donor.getDob();
                		   sphone=""+donor.getPhone();
                		   sheight=""+donor.getHeight();
                		   sweight=""+donor.getWeight();
                		   
                		   //book.getBook_Name();
                	   /*author=book.getAuthor();
                	   sPublishers=""+book.getPublishers();
                	   sPrice=""+book.getPrice();
                	   sBook_ID=""+book.getBook_ID();*/
                	   
                		   
                	   }
                	   else
                	   {
                		   sdonor_id="";sdonor_name="";sblood_grp="";sgender="";sdob="";sphone="";sheight="";sweight="";
                	   }
          	          edonor_id="";edonor_name="";eblood_grp="";egender="";edob="";ephone="";eheight="";eweight="";                    	  
                		   
                   }
                   
                   %>
                   
                  <%=message %>
                  



  
<div class="container">
  <form action="welcome_donor.jsp">
    
    <!--s
	<label for="name">Donor ID</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" id="name" name="txtDonorName" placeholder="Your name.." 
    value="<%=session.getAttribute("donor_login_id")%>" readonly ><br><br>
	-->
	
    <label for="name">Donor Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="name" name="txtDonorName" placeholder="Your name.." value="<%=sdonor_name %>" required><br><br>

     <label for="bld_grp">Blood Group</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <select id ="bld_grp" name = "txtBloodGrp">
     <option value = "O-ve">O-ve</option>
     <option value = "O+ve">O+ve</option>
     <option value = "A-ve">A-ve</option>
     <option value = "A+ve">A+ve</option>
     <option value = "B-ve">B-ve</option>
     <option value = "B+ve">B+ve</option>
     <option value = "AB-ve">AB-ve</option>
     <option value = "AB+ve">AB+ve</option>
     </select><br><br>
    
    <label for="gender">Gender : </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type = "radio" name = "gender" value = "Male" checked>Male
           <input type = "radio" name = "gender" value ="Female">Female<br><br><br>

    <label for="dob">Date of Birth</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type = "date" id ="date" name="dob" value="<%=sdob%>"><br><br>
  
    
    <label for="phone">Contact No:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type = "text" name = "txtPhone" placeholder = "Your contact no is.." value="<%=phone%>" required><br><br>
    
      <label for="height">Height</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="height" name="txtHeight" placeholder="Your height is..." required><br><br>
    
      <label for="weight">Weight</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="weight" name="txtWeight" placeholder="Your weight.." required><br><br>
    
    
      
   

    <input type="submit" value="UPDATE">
  <%-- </form>&nbsp;&nbsp;  
  <form action="welcome_donor.jsp">
     <input type="submit" value="LOGIN"> --%>
  </form>
</div>
<%@ include file="../Designs/footer.jsp" %>
</body>
</html>
