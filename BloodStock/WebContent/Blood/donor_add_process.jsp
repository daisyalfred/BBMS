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
	SimpleDateFormat sdf = new SimpleDateFormat("dd-mm-yyyy");
	donor_id = DonorIdGenerate.generateDNRId();
	//DID=session.se
	session.setAttribute("donorId", donor_id);		
	donor_name= request.getParameter("txtDonorName");
	session.setAttribute("donorName", donor_name);
	blood_grp = request.getParameter("txtBloodGrp");
	
	gender= request.getParameter("gender");
	dob = request.getParameter("dob");
	phone = Long.parseLong(request.getParameter("txtPhone"));
	height = Integer.parseInt(request.getParameter("txtHeight"));
	weight = Integer.parseInt(request.getParameter("txtWeight"));
	donor = new DonorDTO();
	donor.setDonor_id(donor_id);
	donor.setDonor_name(donor_name);
	donor.setBlood_grp(blood_grp);
	donor.setGender(gender);
	donor.setDob(dob);
	donor.setPhone(phone);
	donor.setHeight(height);
	donor.setWeight(weight);
	result = DonorBL.addDonor(donor);
	
	if(result>0)
	{
		session.setAttribute("message","Donor details added successfully");
	}
	else
	{
		session.setAttribute("message","Please try again later");
	}
	response.sendRedirect("../authentication/donor_login.jsp");
	}

catch(Exception e)
{
	System.out.println("**Error**: Donor: donor_add_process"+e.getMessage());
	e.printStackTrace();
	response.sendRedirect("donor_add.jsp");
}
%>
