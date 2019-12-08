<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,blood.dto.*,blood.bl.*"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
 <title>Donor Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../Designs/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="../Designs/css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="../Designs/style.css">
    <script src="js/custom.js"></script>
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
                  <% 
                  		if(session.getAttribute("message")!=null)
                  		{
                  			out.println((String)session.getAttribute("message"));
                  			session.removeAttribute("message");
                  		}
                  %>
                 </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" method="post">
					  <%
					  	ArrayList<DonorDTO> donors = DonorBL.getDonors();
					  	if(donors!=null && donors.size()>0)
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
					          
					          </tr>
					          <%
					          	for(DonorDTO donor : donors)
					          	{
					          %>
					        <tr>
					          <td height="30" align="center"><%= donor.getDonor_id() %>&nbsp;</td>
					          <td align="center"><%= donor.getDonor_name() %>&nbsp;</td>
					          <td align="center"><%=donor.getBlood_grp()%>&nbsp;</td>
					          <td align="center" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;<%=donor.getGender() %></td>
					          <td align="center"><%=  donor.getDob() %>&nbsp;</td>
					          <td align="center" valign="middle"><%= donor.getPhone() %>&nbsp;</td>
					          <td align="center" valign="middle"><%= donor.getHeight() %>&nbsp;</td>
				           <td align="center" valign="middle"><%= donor.getWeight() %>&nbsp;</td>
					         
					          
					          </tr>
					          <%
					          	}
						}
					  	else
					  	{
					          %>
					          <tr>
					          <td valign="middle" colspan="7">No donor Details Found</td>
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
          
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<%@ include file="../Designs/footer.jsp" %>
</body>
</html>
