<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="blood.dto.*,blood.bl.*,blood.dl.*,blood.utlity.ReceiverIdGenerate"%>
<%!
     String patient_id,patient_name,blood_grp,gender,hos_name,hos_pat_id;
     long phone;
	 ReceiverDTO receiver = null;
	 int result;

%>
<%
	try
	{
	
    patient_id = ReceiverIdGenerate.generateRECId();
    patient_name= request.getParameter("txtPatientName");;  
	blood_grp = request.getParameter("txtBloodGrp");;
	gender= request.getParameter("txtGender");;
	hos_name = request.getParameter("txtHosName");
	hos_pat_id = request.getParameter("txtHosPatID");
	phone = Long.parseLong(request.getParameter("txtPhone"));

	receiver = new ReceiverDTO();
	receiver.setPatient_id(patient_id);
	receiver.setPatient_name(patient_name);
	receiver.setBlood_grp(blood_grp);
	receiver.setGender(gender);
	receiver.setHos_name(hos_name);
	receiver.setHos_pat_id(hos_pat_id);
	receiver.setPhone(phone);
	result = ReceiverBL.addReceiver(receiver);
	
	if(result>0)
	{
		session.setAttribute("message","Receiver details added successfully");
	}
	else
	{
		session.setAttribute("message","Please try again later");
	}
	response.sendRedirect("receiver_view_all.jsp");
	}

catch(Exception e)
{
	System.out.println("**Error**: Receiver: receiver_add_process"+e.getMessage());
	response.sendRedirect("receiver_add.jsp");
}
%>
