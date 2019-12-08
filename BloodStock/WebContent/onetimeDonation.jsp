<!DOCTYPE html>
<html>
<head>
 <title>OneTimeDonoation</title>
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
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 50%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}


input[type=date]{
  width: 25%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>

<h1>Donor Details</h1>

<%@ include file="../includes/menu.jsp" %>
  
<div class="container">
<table><tr>
  <form action="OneTimeDonoation_process.jsp">
    

    <label for="name">Donor Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="name" name="txtDonorName" pattern="[A-Za-z]{3,}" placeholder="Your name.." required><br><br>

     <label for="bld_grp">Blood Group</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <select id ="bld_grp" name = "txtBloodGrp">
     <option value = "O-ve">O-ve</option>
     <option value = "O+ve">O+ve</option>
     <option value = "A-ve">A-ve</option>
     <option value = "A+ve">A+ve</option>
     <option value = "B-ve">B-ve</option>
     <option value = "B+ve">B+ve</option>
     <option value = "AB-ve">AB-ve</option>
     <option value = "AB+ve">AB+ve</option>
     </select><br><br>
    
    <label for="gender">Gender : </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type = "radio" name = "gender" value = "Male" checked>Male
           <input type = "radio" name = "gender" value ="Female">Female<br><br><br>

    <label for="dob">Date of Birth</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type = "date" id ="date" name="dob"><br><br>
  
    
    <label for="phone">Contact No:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type = "text" name = "txtPhone" pattern="[6789][0-9]{9}" placeholder = "Your contact no is.." required><br><br>
    
      <label for="height">Height</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="height" name="txtHeight" placeholder="Your height in cm..." required><br><br>
    
      <label for="password">Weight</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="weight" name="txtWeight" placeholder="Your weight in kg.." required><br><br>
  
   <label for="dod">DOD</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type = "date" id ="date" name="dod"><br><br>
  
  
   <input type="submit" value="DONATE">
  </form></tr></table>
  
</div>
<%@ include file="../Designs/footer.jsp" %>
</body>
</html>
