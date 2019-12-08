<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,blood.dto.*,blood.bl.*"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
</head>
<h1>Receiver Details</h1>
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
                 </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle"></td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Receiver Details </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%-- 
                  		if(session.getAttribute("success")!=null)
                  		{
                  			out.println((String)session.getAttribute("success"));
                  			session.removeAttribute("success");
                  		}
                  --%>
                 </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" method="post">
					  <%


					  	ArrayList<ReceiverDTO> releases = AdminBL.getReceivers();
					  	if(releases!=null && releases.size()>0)
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
					          <td width="20%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Phone</span></td>
					          
					          
					          </tr>
					          <%
					          	for(ReceiverDTO release : releases)
					          	{
					          %>
					        <tr>
					          <td height="30" align="center"><%= release.getPatient_id() %>&nbsp;</td>
					          <td align="center"><%= release.getPatient_name() %>&nbsp;</td>
					          <td align="center"><%=release.getBlood_grp()%>&nbsp;</td>
					          <td align="center" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;<%=release.getGender() %></td>
					          <td align="center"><%=  release.getHos_name() %>&nbsp;</td>
					          <td align="center" valign="middle"><%= release.getHos_pat_id() %>&nbsp;</td>
					          <td align="center" valign="middle"><%= release.getPhone() %>&nbsp;</td>
					         
					          
					          </tr>
					          <%
					          	}
						}
					  	else
					  	{
					          %>
					          <tr>
					          <td valign="middle" colspan="7">No Blood Released Details Found</td>
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
