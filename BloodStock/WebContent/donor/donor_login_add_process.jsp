<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="blood.dto.*,blood.bl.*,blood.dl.*,blood.utlity.*,java.sql.Date,  java.text.SimpleDateFormat "%>
<%!
    String donor_login_id,donor_password;
   
    long phone;
    float height,weight;
	DonorLoginDTO donor = null;
	int result;

%>
<%
	try
	{
		donor_login_id = request.getParameter("username");
		donor_password = request.getParameter("password");
		System.out.println("donor_login_id");
		System.out.println("password");

	
	donor = new DonorLoginDTO();
	donor.setDonor_login_id(donor_login_id);
	donor.setDonor_password(donor_password);
	
		result = DonorLoginBL.addUser(donor);

	
	if(result>0)
	{
		session.setAttribute("message","Donor details added successfully");
	}
	else
	{
		session.setAttribute("message","Please try again later");
	}
	response.sendRedirect("welcome_donor.jsp");
	}

catch(Exception e)
{
	System.out.println("**Error**: Donor: donor_add_process"+e.getMessage());
	e.printStackTrace();
	response.sendRedirect("donor_add.jsp");
}
%>
