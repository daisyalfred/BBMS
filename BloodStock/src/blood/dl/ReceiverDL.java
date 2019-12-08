package blood.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import blood.dto.ReceiverDTO;

public class ReceiverDL {
	
	public static int addReceiver(ReceiverDTO receiver)
	{
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		try
		{
			con = DBHelper.getConnection();
			query = "INSERT INTO RECEIVER_REG(patient_id,patient_name,blood_grp,gender,hospital_name,hospital_patient_id,phone)VALUES(?,?,?,?,?,?,?)";
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
			System.out.println("**Error** : ReceiverDL.addReceiver "+e.getMessage());
			e.printStackTrace();
			
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
		query="SELECT * FROM RECEIVER_REG order by PATIENT_ID";
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
		System.out.println("**Error** : ReceiverDL.getReceivers "+e.getMessage());
		
	}
	
	return receivers;
	
	}
	public static String IdReceiver()
	{
		Connection con;
		Statement st=null;
		ResultSet rs=null;
		int result=0;
		
		String PATIENT_ID=new String();
		try
		{
			con = DBHelper.getConnection();
			String sql = "SELECT PATIENT_ID FROM RECEIVER_REG ORDER BY PATIENT_ID DESC";
			st=con.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next())
			{
				PATIENT_ID=rs.getString(1);
			}
			else
				PATIENT_ID=null;
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at ReceiverDL.IdRetriver()"+e.getMessage());
		}
		return PATIENT_ID;
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
		
			String sql = "SELECT * FROM RECEIVER_REG WHERE PATIENT_ID ='"+patient_id+"'";
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
		System.out.println("**Error** : ReceiverDL.getReceiver() "+e.getMessage());
		e.printStackTrace();
		
	}
	
	return receiver;
}
	
		
	
}
