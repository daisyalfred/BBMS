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
    String patient_id;
	ReceiverDTO receiver1;
	int result,status;
	%>
	
<% 
    
    patient_id = request.getParameter("patient_id");
	receiver1=ReceiverBL.getReceiver(patient_id);
	result=AdminBL.addToBloodReceivers(receiver1);//.addToAdminRelease(receiver1);
	status =AdminBL.deleteReceiver(patient_id);
	
	if(result>0)
	{
		session.setAttribute("success", "Receiver has received the blood....");
		response.sendRedirect("admin_release_view_all.jsp");
	}
	else
	{
		session.setAttribute("success", "Failed!!!");
	
		
		
	}
	
	
	


%>

</body>
</html>