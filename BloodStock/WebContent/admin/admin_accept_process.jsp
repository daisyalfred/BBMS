<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "blood.dto.*, blood.bl.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
    String donor_id,donor_id1;
	DonorDTO donor;
	int result,status;
	%>
	
<% 
    
    donor_id = request.getParameter("donor_id");
	donor=AdminBL.getBloodDonor(donor_id);
	
	String dID=donor.getDonor_id();
	String dName=donor.getDonor_name();
	String bGrp=donor.getBlood_grp();
	String gender=donor.getGender();
	String dob=donor.getDob();
	long phone=donor.getPhone();
	float height=donor.getHeight();
	float weight=donor.getWeight();
	String dod=donor.getDod();
	System.out.println(dID+" "+dName+" "+bGrp+" "+gender+" "+dob+" "+phone+" "+height+" "+weight+" "+dod);
	
	
	result=AdminBL.addToBloodDonors(donor);
	status =AdminBL.deleteDonor(donor_id);
	
	if(result>0)
	{
		session.setAttribute("success", "Donor details accepted....");
		response.sendRedirect("admin_accept_view_all.jsp");
	}
	else
	{
		session.setAttribute("success", "Failed!!!");
		System.out.println(donor_id);
		System.out.println(donor);
		
		
	}	
	


%>

</body>
</html>