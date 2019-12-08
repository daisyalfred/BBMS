<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="blood.dto.*,blood.bl.*,blood.dl.*,blood.utlity.*,java.sql.Date,  java.text.SimpleDateFormat "%>
<%!
    String donor_id,donor_name,blood_grp,gender,dob;
   
    long phone;
    float height,weight;
	DonorDTO donor = null;
	int result;

%>
<%
	try
	{

	donor_id = (String)session.getAttribute("donorId");
	donor_name = request.getParameter("txtDonorName");
	blood_grp = request.getParameter("txtBloodGrp");
	gender = request.getParameter("gender");
	dob = request.getParameter("dob");
	phone=Long.parseLong(request.getParameter("txtPhone"));
	height=Float.parseFloat(request.getParameter("txtHeight"));
	weight=Float.parseFloat(request.getParameter("txtWeight"));
	
	System.out.println("Hello!!!!");
	System.out.println(donor_id);
	System.out.println(donor_name);
	System.out.println(blood_grp);
	System.out.println(gender);
	System.out.println(dob);
	System.out.println(phone);
	System.out.println(height);
	System.out.println(weight);
	

	

	donor = new DonorDTO();
	donor.setDonor_id(donor_id);
	donor.setDonor_name(donor_name);
	donor.setBlood_grp(blood_grp);
	donor.setGender(gender);
	donor.setDob(dob);
	donor.setPhone(phone);
	donor.setHeight(height);
	donor.setWeight(weight);
	//donor.setDod(dod);
	
	//donor.
	
	result = DonorBL.updateDonor(donor);
	
	if(result>0)
	{
		session.setAttribute("message","Donor details updated successfully");
	}
	else
	{
		session.setAttribute("message","Please try again later");
	}
	response.sendRedirect("donor_view_all.jsp");
	}

catch(Exception e)
{
	System.out.println("**Error**: Donor: donor_edit_process"+e.getMessage());
	e.printStackTrace();
	response.sendRedirect("donor_edit.jsp");
}
%>
