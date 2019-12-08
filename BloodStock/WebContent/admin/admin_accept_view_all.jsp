<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,blood.dto.*,blood.bl.*"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
</head>
<h1>Donor Details</h1>
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
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Donor Details </td>
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


					  	ArrayList<DonorDTO> accepts = AdminBL.getAccepts();
					  	if(accepts!=null && accepts.size()>0)
						{
	

					  %>
					    <table width="80%" border="1" align="center"  border>
					      <tbody style="">
					        <tr>
					          <td width="11%" height="33" align="center" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Donor ID</td>
					          <td width="16%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Donor Name </span></td>
					          <td width="12%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Blood Group </span></td>
					          <td width="12%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Gender</span></td>
					          <td width="11%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Date of Birth</span></td>
					          <td width="20%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Contact No:</span></td>
					          <td width="10%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Height</span></td>
					           <td width="10%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Weight</span></td>
					           <td width="10%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">DOD</span></td>
					          
					          </tr>
					          <%
					          	for(DonorDTO accept : accepts)
					          	{
					          %>
					        <tr>
					          <td height="30" align="center"><%= accept.getDonor_id() %>&nbsp;</td>
					          <td align="center"><%= accept.getDonor_name() %>&nbsp;</td>
					          <td align="center"><%=accept.getBlood_grp()%>&nbsp;</td>
					          <td align="center" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;<%=accept.getGender() %></td>
					          <td align="center"><%=  accept.getDob() %>&nbsp;</td>
					          <td align="center" valign="middle"><%= accept.getPhone() %>&nbsp;</td>
					          <td align="center" valign="middle"><%= accept.getHeight() %>&nbsp;</td>
				              <td align="center" valign="middle"><%= accept.getWeight() %>&nbsp;</td>
				              <td align="center" valign="middle"><%= accept.getDod() %>&nbsp;</td>
				              
					         
					          
					          </tr>
					          <%
					          	}
						}
					  	else
					  	{
					          %>
					          <tr>
					          <td valign="middle" colspan="7">No Accepted Details Found</td>
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
