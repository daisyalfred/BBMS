<!DOCTYPE html>
<html>
<head>
 <title>Receiver Registration</title>
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

<h1>Receiver Details</h1>

<%@ include file="../includes/menu.jsp" %>

<div class="container">
  <form action="receiver_add_process.jsp">

    <label for="name">Patient Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="name" name="txtPatientName" placeholder="Your name.." required><br><br>

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
     
    <label for="gender">Gender : </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type = "radio" name = "txtGender" value = "Male" checked>Male
           <input type = "radio" name = "txtGender" value = "Female">Female<br><br>
    
      <label for="hos_name">Hospital Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="hos_name" name="txtHosName" placeholder="Your hospital name is..." required><br><br>
    
      <label for="hos_id">Hospital Patient ID</label>
    <input type="text" id="hos_id" name="txtHosPatID" placeholder="Your hospital patient id is.." required><br><br>
    
        <label for="phone">Contact No:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type = "text" id = "phone" name = "txtPhone" placeholder = "Your contact no is.." required><br><br>
    
   
    <input type="submit" value="Register">
  </form>
</div>

<%@ include file="../Designs/footer.jsp" %>

</body>
</html>
