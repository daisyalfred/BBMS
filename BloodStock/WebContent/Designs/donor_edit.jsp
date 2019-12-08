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


<%--
if(request.getParameter("submit")!=null)
{	
String donor_id=null;
int result=0;

donor_id=request.getParameter("donorId");
result=DonorBL.updateLoginDonor(donor_id);
if(result>0)
 {
 	session.setAttribute("message", "book details deleted successfully!");
 }
 else
 {
   	session.setAttribute("message", "Please try again later!");
 }


response.sendRedirect("welcome_user.jsp");
}	

--%>   



<%!     
         long phone;
	     float height,weight;  
	     
         String sdonor_id,sdonor_name,sblood_grp,sgender,sdob,sphone,sheight,sweight;
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
         //edonor_id="";edonor_name="";eblood_grp="";egender="";edob="";ephone="";eheight="";eweight="";

                 	   
         try
         {
                		   
        	sdonor_name=request.getParameter("txtDonorName");
        	sblood_grp=request.getParameter("txtBloodGrp");
            sgender=request.getParameter("gender");
        	sdob=request.getParameter("dob");
        	sphone=request.getParameter("txtPhone");
        	sheight=request.getParameter("txtHeight");
        	sweight=request.getParameter("txtWeight");
               		    	
               		    	
        	/*if(sdonor_name.equals(""))
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
              donor.setWeight(weight);*/
      		    
            if(!ErrorFlag)
            {
               	 result= DonorBL.updateLoginDonor(sdonor_id);
                 if(result>0)
                 {
                    	session.setAttribute("message", "donor details updated successfully!");
                 }
                 else
                 {
                       	session.setAttribute("message", "Invalid Operation!");
                       	response.sendRedirect("home.jsp");
                 }
                 		  
                 response.sendRedirect("welcome_donor.jsp");
           }
        
                                               		    
      }
   
      catch(Exception e)
      {
      		System.out.println("**Error** Donor: donor_edit"+e.getMessage());
      		message = "error " +  e.getMessage();
      }
                	    
   }
   
                     else
                     {
                	   message="";
                	   ErrorFlag=false;
                	   sErrorFlag=false;
               
                	   String donor_id=request.getParameter("donorId");
                	   donor=DonorBL.getDonor2(donor_id);   //.getBook(book_id);
                	   
                	   
                	   if(donor!=null)
                	   {
                		   sdonor_name=donor.getDonor_name(); 
                		   sblood_grp =donor.getBlood_grp();
                		   sgender= donor.getGender();
                		   sdob=donor.getDob();
                		   sphone=""+donor.getPhone();
                		   sheight=""+donor.getHeight();
                		   sweight=""+donor.getWeight();
                		
                	   }
                	   else
                	   {
                		   sdonor_id="";sdonor_name="";sblood_grp="";sgender="";sdob="";sphone="";sheight="";sweight="";
                	   }
          	         // edonor_id="";edonor_name="";eblood_grp="";egender="";edob="";ephone="";eheight="";eweight="";                    	  
                		   
                   }
                   
                   %>
                   
                  <%=message %>
               

         <table>
              <tr>
                  <td height="33" align="center" valign="middle">
					  <form  method="post" onsubmit="return validate();" >
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family:
					           'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Donor Name</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					            <input type="text" name="txtDonorName" id="txtDonorName" value='<%=sdonor_name%>'></td>
					         
					          <td width="2%">&nbsp;</td>
					          <td width="2%">&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 
					          'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Blood Group					          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtBloodGrp" id="txtBloodGrp" value='<%=sblood_grp%>'></td>
					          
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					           <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 
					          'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Gender</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="gender" id="gender" value='<%=sgender%>'></td>
					          
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 
					          'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">DOB</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="dob" value='<%=sdob%>' id="dob"></td>
					         
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 
					          'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Phone</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtPhone" value='<%=sphone%>' id="txtPhone"></td>
					        
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					        </tr>
					        
					         <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 
					          'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Height</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtHeight" value='<%=sheight%>' id="txtHeight"></td>
					        
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					        </tr>
					        
					         <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 
					          'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Weight</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtWeight" value='<%=sweight%>' id="txtWeight"></td>
					        
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					        </tr>
					       
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="submit" name="submit" id="submit" value="Update"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        </tbody>
					      </table>
</form></td></tr></table>

  

<%@ include file="../Designs/footer.jsp" %>
</body>
</html>
