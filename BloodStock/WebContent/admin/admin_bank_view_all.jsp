<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,blood.dto.*,blood.bl.*"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
</head>
<h1>Blood Bank Details</h1>
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
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Blood bank Details </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <% 
                  		if(session.getAttribute("success")!=null)
                  		{
                  			out.println((String)session.getAttribute("success"));
                  			session.removeAttribute("success");
                  		}
                  %>
                 </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" method="post">
					  <%


					  	ArrayList<BankDTO> bloods = BankBL.getBloods();
					  	if(bloods!=null && bloods.size()>0)
						{
	

					  %>
					    <table width="80%" border="1" align="center"  border>
					      <tbody style="">
					        <tr>
					          <td width="11%" height="33" align="center" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Blood Grp</td>
					          <td width="16%" align="center" valign="middle" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Date of Receiving </span></td>
			
					          
					          </tr>
					          <%
					          	for(BankDTO blood : bloods)
					          	{
					          %>
					        <tr>
					          <td height="30" align="center"><%= blood.getBlood_grp() %>&nbsp;</td>
					          <td height="30" align="center"><%= request.getParameter("date") %>&nbsp;</td>
					    
					          
					          </tr>
					          <%
					          	}
						}
					  	else
					  	{
					          %>
					          <tr>
					          <td valign="middle" colspan="7">No Blood Details Found</td>
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
</table>
</body>
</html>
