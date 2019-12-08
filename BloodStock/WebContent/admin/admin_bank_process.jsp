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
     String date;
     String donor_id;
     DonorDTO donor;
     int result;
    %>

<%  
       date = request.getParameter("dor");

     donor_id = request.getParameter("donor_id");
     donor=DonorBL.getBank(donor_id);

      result=BankBL.addBlood(donor);
      
  	if(result>0)
  	{
  		session.setAttribute("success", "Blood details entered....");
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