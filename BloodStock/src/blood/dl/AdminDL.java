package blood.dl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import blood.dto.DonorDTO;
import blood.dto.ReceiverDTO;

public class AdminDL {

	public AdminDL() {
		// TODO Auto-generated constructor stub
	}
	
	public static int addToBloodReceivers(ReceiverDTO receiver)
	{
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con =null;
		try
		{
		
			con = DBHelper.getConnection();
			query = "INSERT INTO BLOOD_RECEIVERS(patient_id,patient_name,blood_grp,gender,hospital_name,hospital_patient_id,phone)VALUES(?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, receiver.getPatient_id());
			ps.setString(2, receiver.getPatient_name());
			ps.setString(3, receiver.getBlood_grp());
			ps.setString(4, receiver.getGender());
			ps.setString(5, receiver.getHos_name());
			ps.setString(6, receiver.getHos_pat_id());
			ps.setLong(7, receiver.getPhone());
			
			result = ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** : AdminDL.addToBloodReceivers "+e.getMessage());
          
		}
		
		return result;
	}
	
	public static ArrayList<ReceiverDTO> getReleases()
	{
	ArrayList<ReceiverDTO> releases = null;
	String query;
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	ReceiverDTO release = null;

	
	try
	{
		releases = new ArrayList<ReceiverDTO>();
		query="SELECT * FROM BLOOD_RECEIVERS";
		con = DBHelper.getConnection();
		statement = con.createStatement();
		resultSet = statement.executeQuery(query);
		while(resultSet.next())
		{
			release = new ReceiverDTO();
			
			release.setPatient_id(resultSet.getString("PATIENT_ID"));
			release.setPatient_name(resultSet.getString("PATIENT_NAME"));
			release.setBlood_grp(resultSet.getString("BLOOD_GRP"));
			release.setGender(resultSet.getString("GENDER"));
			release.setHos_name(resultSet.getString("HOSPITAL_NAME"));
			release.setHos_pat_id(resultSet.getString("HOSPITAL_PATIENT_ID"));
			release.setPhone(resultSet.getLong("PHONE"));
			
			releases.add(release);
			
		}
		resultSet.close();
		statement.close();
		con.close();
	}
	catch(Exception e) 
	{
		System.out.println("**Error** : AdminDL.getReleases "+e.getMessage());
		
	}
	
	return releases;

  }
	
	
	public static ArrayList<DonorDTO> getRequestedDonors()
    {
	ArrayList<DonorDTO> donors = null;
	String query;
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	DonorDTO donor = null;
	
	try
	{
		donors = new ArrayList<DonorDTO>();
		query="SELECT * FROM ADMIN_ACCEPT ";
		con = DBHelper.getConnection();
		statement = con.createStatement();
		resultSet = statement.executeQuery(query);
		while(resultSet.next())
		{
			donor = new DonorDTO();
			
			donor.setDonor_id(resultSet.getString("DONOR_ID"));
			donor.setDonor_name(resultSet.getString("DONOR_NAME"));
			donor.setBlood_grp(resultSet.getString("BLOOD_GRP"));
			donor.setGender(resultSet.getString("GENDER"));
			donor.setDob(resultSet.getString("DOB"));
			donor.setPhone(resultSet.getLong("PHONE"));
			donor.setHeight(resultSet.getFloat("HEIGHT"));
			donor.setWeight(resultSet.getFloat("WEIGHT"));
			donor.setDod(resultSet.getString("DOD"));
			donors.add(donor);
			
		}
		resultSet.close();
		statement.close();
		con.close();
	}
	catch(Exception e) 
	{
		System.out.println("**Error** : DonorDL.getRequestedDonors "+e.getMessage());
		
	}
	
	return donors;
	
}


	public static int deleteReceiver(String patient_id)
	{

		
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		try
		{
			
			con = DBHelper.getConnection();
			query = "DELETE FROM RECEIVER_FORM WHERE patient_id=?";
			ps=con.prepareStatement(query);
			ps.setString(1,patient_id);
		    System.out.println(patient_id);
			result = ps.executeUpdate();
			ps.close();
			con.close();
			
		}
		catch(Exception e) 
		{
			result=-1;
			System.out.println("**Error** : AdminDL.deleteReceiver "+e.getMessage());
			
		}
		
		return result;
	}
	
	
	public static int addToBloodDonors(DonorDTO donor)
	{
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con =null;
		try
		{
			con = DBHelper.getConnection();
			query = "INSERT INTO BLOOD_DONORS(donor_id,donor_name,blood_grp,gender,dob,phone,height,weight,dod)VALUES(?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, donor.getDonor_id());
			ps.setString(2, donor.getDonor_name());
			ps.setString(3, donor.getBlood_grp());
			ps.setString(4, donor.getGender());
			ps.setString(5, donor.getDob());
			ps.setLong(6, donor.getPhone());
			ps.setFloat(7, donor.getHeight());
			ps.setFloat(8, donor.getWeight());
			ps.setString(9, donor.getDod());
			result = ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** : DonorDL.addToBLOOD_DONORS "+e.getMessage());

		}
		
		return result;
	}
	
	public static ArrayList<DonorDTO> getAccepts()
	{
	ArrayList<DonorDTO> accepts = null;
	String query;
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	DonorDTO accept = null;

	
	try
	{
		accepts = new ArrayList<DonorDTO>();
		query="SELECT * FROM BLOOD_DONORS ";
		con = DBHelper.getConnection();
		statement = con.createStatement();
		resultSet = statement.executeQuery(query);
		while(resultSet.next())
		{
			accept = new DonorDTO();
			
			accept.setDonor_id(resultSet.getString("DONOR_ID"));
			accept.setDonor_name(resultSet.getString("DONOR_NAME"));
			accept.setBlood_grp(resultSet.getString("BLOOD_GRP"));
			accept.setGender(resultSet.getString("GENDER"));
			accept.setDob(resultSet.getString("DOB"));
			accept.setPhone(resultSet.getLong("PHONE"));
			accept.setHeight(resultSet.getFloat("HEIGHT"));
			accept.setWeight(resultSet.getFloat("WEIGHT"));
			accept.setDod(resultSet.getString("DOD"));
			accepts.add(accept);
			
		}
		resultSet.close();
		statement.close();
		con.close();
	}
	catch(Exception e) 
	{
		System.out.println("**Error** : AdminDL.getAccepts "+e.getMessage());
		
	}
	
	return accepts;

 }
	public static DonorDTO getBloodDonor(String donor_id)
	{
		ArrayList<DonorDTO> donors=null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		DonorDTO donor=null;
		try
		{
			String sql="select * FROM ADMIN_ACCEPT WHERE DONOR_ID='"+donor_id+"'";
			con=DBHelper.getConnection();
			statement=con.createStatement();
			resultSet=statement.executeQuery(sql);
			if(resultSet.next())
			{
				donor = new DonorDTO();
				
				donor.setDonor_id(resultSet.getString("DONOR_ID"));
				donor.setDonor_name(resultSet.getString("DONOR_NAME"));
				donor.setBlood_grp(resultSet.getString("BLOOD_GRP"));
				donor.setGender(resultSet.getString("GENDER"));
				donor.setDob(resultSet.getString("DOB"));
				donor.setPhone(resultSet.getLong("PHONE"));
				donor.setHeight(resultSet.getFloat("HEIGHT"));
				donor.setWeight(resultSet.getFloat("WEIGHT"));
				donor.setDod(resultSet.getString("DOD"));
				donors.add(donor);
								
			}
			
		}
		catch(Exception e)
		{
			System.out.println("**error** donordl:updatedonor"+e.getMessage());
		}
		return donor;
		
	}
	
	
	public static int deleteDonor(String donor_id)
	{		
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		try
		{
			
			con = DBHelper.getConnection();
			query = "DELETE FROM ADMIN_ACCEPT WHERE donor_id=?";
			ps=con.prepareStatement(query);
			ps.setString(1,donor_id);
			result = ps.executeUpdate();
			ps.close();
			con.close();
			
		}
		catch(Exception e) 
		{
			result=-1;
			System.out.println("**Error** : AdminDL.deleteDonor "+e.getMessage());
			
		}
		
		return result;
	}
	
	public static ArrayList<ReceiverDTO> getReceivers()
    {
	ArrayList<ReceiverDTO> receivers = null;
	String query;
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	ReceiverDTO receiver = null;
	
	try
	{
		receivers = new ArrayList<ReceiverDTO>();
		query="SELECT * FROM BLOOD_RECEIVERS order by PATIENT_ID";
		con = DBHelper.getConnection();
		statement = con.createStatement();
		resultSet = statement.executeQuery(query);
		while(resultSet.next())
		{
			receiver = new ReceiverDTO();
			
			receiver.setPatient_id(resultSet.getString("PATIENT_ID"));
			receiver.setPatient_name(resultSet.getString("PATIENT_NAME"));
			receiver.setBlood_grp(resultSet.getString("BLOOD_GRP"));
			receiver.setGender(resultSet.getString("GENDER"));
			receiver.setHos_name(resultSet.getString("HOSPITAL_NAME"));
			receiver.setHos_pat_id(resultSet.getString("HOSPITAL_PATIENT_ID"));
			receiver.setPhone(resultSet.getLong("PHONE"));

			receivers.add(receiver);
			
		}
		resultSet.close();
		statement.close();
		con.close();
	}
	catch(Exception e) 
	{
		System.out.println("**Error** : AdminDL.getReceivers "+e.getMessage());
		
	}
	
	return receivers;
	
	}

	public static ReceiverDTO getReceiver(String patient_id)
	{
		
		int result;
		ReceiverDTO receiver =null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		try
		{
		
			String sql = "SELECT * FROM BLOOD_RECEIVERS WHERE PATIENT_ID ='"+patient_id+"'";
			con = DBHelper.getConnection();
			
			statement = con.createStatement();
			resultSet = statement.executeQuery(sql);
			if(resultSet.next())
			{
				
				receiver = new ReceiverDTO();
				receiver.setPatient_id(resultSet.getString("PATIENT_ID"));
				receiver.setPatient_name(resultSet.getString("PATIENT_NAME"));
				receiver.setBlood_grp(resultSet.getString("BLOOD_GRP"));
				receiver.setGender(resultSet.getString("GENDER"));
				receiver.setHos_name(resultSet.getString("HOSPITAL_NAME"));
				receiver.setHos_pat_id(resultSet.getString("HOSPITAL_PATIENT_ID"));
				receiver.setPhone(resultSet.getLong("PHONE"));
			
       
			}
		
	}
	catch(Exception e) 
	{
		result = -1;
		System.out.println("**Error** : AdminDL.getReceiver() "+e.getMessage());
		e.printStackTrace();
		
	}
	
	return receiver;
  }
	
	public static DonorDTO getDonor(String donor_id)
	{
		ArrayList<DonorDTO> donors=null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		DonorDTO donor=null;
		try
		{
			String sql="select COUNT(DISTINCT DOD) FROM BLOOD_DONORS WHERE DONOR_ID='"+donor_id+"'";
			con=DBHelper.getConnection();
			statement=con.createStatement();
			resultSet=statement.executeQuery(sql);
			if(resultSet.next())
			{
				donor = new DonorDTO();
				
				donor.setDonor_id(resultSet.getString("DONOR_ID"));
				donor.setDonor_name(resultSet.getString("DONOR_NAME"));
				donor.setBlood_grp(resultSet.getString("BLOOD_GRP"));
				donor.setGender(resultSet.getString("GENDER"));
				donor.setDob(resultSet.getString("DOB"));
				donor.setPhone(resultSet.getLong("PHONE"));
				donor.setHeight(resultSet.getFloat("HEIGHT"));
				donor.setWeight(resultSet.getFloat("WEIGHT"));
				donor.setDod(resultSet.getString("DOD"));
				donors.add(donor);
								
			}
			
		}
		catch(Exception e)
		{
			System.out.println("**error** AdminDL:updatedonor"+e.getMessage());
		}
		return donor;
		
	}



	
}
