<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,blood.dto.*,blood.bl.*"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="UTF-8">
<title>Untitled Document</title>
</head>
<h1 align="centre"> Receiver Details</h1>
<%@ include file="../includes/menu.jsp" %>
  
<body>
<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
           
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%-- 
                  		if(session.getAttribute("message")!=null)
                  		{
                  			out.println((String)session.getAttribute("message"));
                  			session.removeAttribute("message");
                  		}
                  --%>
                 </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" method="post">
					  <%
					  	ArrayList<ReceiverDTO> receiverss = ReceiverBL.getReceivers();
					  	if(receiverss!=null && receiverss.size()>0)
						{
	

					  %>
					    <table width="80%" border="1" align="center"  border>
					      <tbody style="">
					        <tr>
					          <td width="11%" height="33" align="center" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Patient ID</td>
					          <td width="16%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Patient Name </span></td>
					          <td width="12%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Blood Group </span></td>
					          <td width="12%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Gender</span></td>
					          <td width="11%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Hospital Name</span></td>
					          <td width="20%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Hospital Patient ID</span></td>
					          <td width="18%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Contact No:</span></td>
					          <td width="18%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Action</span></td>
					          
					          
					          </tr>
					          <%
					          	for(ReceiverDTO receiver1 : receiverss)
					          	{
					          %>
					        <tr>
					          <td height="30" align="center"><%= receiver1.getPatient_id() %>&nbsp;</td>
					          <td align="center"><%= receiver1.getPatient_name() %>&nbsp;</td>
					          <td align="center"><%=receiver1.getBlood_grp()%>&nbsp;</td>
					          <td align="center" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;<%=receiver1.getGender() %></td>
					          <td align="center"><%= receiver1.getHos_name() %>&nbsp;</td>
					          <td align="center" valign="middle"><%= receiver1.getHos_pat_id() %>&nbsp;</td>
					          <td align="center"><%= receiver1.getPhone() %>&nbsp;</td>
					          <td align="left" valign="middle"><a href ="admin_release_process.jsp?patient_id=<%= receiver1.getPatient_id() %>">Release</a>&nbsp;</td>
					         
					          
					          </tr>
					          <%
					          	}
						}
					  	else
					  	{
					     %>
					          <tr>
					          <td valign="middle" colspan="7">No Receiver Details Found</td>
					          </tr>
					  <%
					  	}
					  %>
					                </tbody>
					      </table>
						  
						  
                      </form></td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">&nbsp;</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td align="center" valign="middle" bgcolor="#000000">&nbsp;</td>
                </tr>
              
              </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>

<form action="admin_home.jsp" method="post">
<input type="submit" value="BACK">
</form>&nbsp;&nbsp;&nbsp;&nbsp;

</table>
</body>
</html>
