package blood.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import blood.dto.DonorDTO;



public class DonorDL {

	public static int addDonor(DonorDTO donor)
	{
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		try
		{
			con = DBHelper.getConnection();
			query = "INSERT INTO DONOR_REG(donor_id,donor_name,blood_grp,gender,dob,phone,height,weight)VALUES(?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, donor.getDonor_id());
			ps.setString(2, donor.getDonor_name());
			ps.setString(3, donor.getBlood_grp());
			ps.setString(4, donor.getGender());
			ps.setString(5, donor.getDob());
			ps.setLong(6, donor.getPhone());
			ps.setFloat(7, donor.getHeight());
			ps.setFloat(8, donor.getWeight());
			result = ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** : DonorDL.addDonor "+e.getMessage());
			
		}
		
		return result;
	}
	
	public static int addOneTimeDonor(DonorDTO donor)
	{
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		try
		{
			con = DBHelper.getConnection();
			query = "INSERT INTO BLOOD_DONORS(donor_name,blood_grp,gender,dob,phone,height,weight,dod)VALUES(?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			//ps.setString(1, donor.getDonor_id());
			ps.setString(1, donor.getDonor_name());
			ps.setString(2, donor.getBlood_grp());
			ps.setString(3, donor.getGender());
			ps.setString(4, donor.getDob());
			ps.setLong(5, donor.getPhone());
			ps.setFloat(6, donor.getHeight());
			ps.setFloat(7, donor.getWeight());
			ps.setString(8, donor.getDod());
			result = ps.executeUpdate();

			
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** : DonorDL.addDonor "+e.getMessage());
			
		}
		
		return result;
	}

	
	public static ArrayList<DonorDTO> getDonors()
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
		query="SELECT * FROM DONOR_REG order by donor_id";
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
			donors.add(donor);
			
		}
		resultSet.close();
		statement.close();
		con.close();
	}
	catch(Exception e) 
	{
		System.out.println("**Error** : DonorDL.getDonors "+e.getMessage());
		
	}
	
	return donors;
	
}
	
	
	
	
	/*public static DonorDTO getDonor2(String donor_id)
	{
		
		int result=0;
		DonorDTO donor =null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		try
		{
			
			String sql = "SELECT * FROM DONOR_REG WHERE DONOR_ID ='"+donor_id+"'";
			con = DBHelper.getConnection();
			
			statement = con.createStatement();
			resultSet = statement.executeQuery(sql);
			System.out.println("inside Dl "+sql);
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
       
			}
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** : DonorDL.getDonor() "+e.getMessage());
			e.printStackTrace();
			
		}
		
		return donor;
	}*/
	
	
	public static String IdDonor()
	{
		Connection con;
		Statement st=null;
		ResultSet rs=null;
		int result=0;
		
		String DONOR_ID=new String();
		try
		{
			con = DBHelper.getConnection();
			String sql = "SELECT DONOR_ID FROM DONOR_REG ORDER BY DONOR_ID DESC";
			st=con.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next())
			{
				DONOR_ID=rs.getString(1);
			}
			else
				DONOR_ID=null;
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at DonorDL.IdRetriver()"+e.getMessage());
		}
		return DONOR_ID;
	}
	
	public static int updateDonor(DonorDTO donor)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="update DONOR_REG set DONOR_NAME=?,blood_grp=?,"
					+ "gender=?,dob=?,phone=?,height=?,weight=? where DONOR_ID=?";
			ps=con.prepareStatement(query);
			System.out.println(donor.getDonor_name());
			ps.setString(1, donor.getDonor_name());
			
			System.out.println(donor.getBlood_grp());
			ps.setString(2, donor.getBlood_grp());
			
			System.out.println(donor.getGender());
			ps.setString(3, donor.getGender());
			
			System.out.println(donor.getDob());
			ps.setString(4, donor.getDob());
			
			System.out.println(donor.getPhone());
			ps.setLong(5,donor.getPhone());
			
			System.out.println(donor.getHeight());
			ps.setFloat(6,donor.getHeight());
			
			System.out.println(donor.getWeight());
			ps.setFloat(7,donor.getWeight());
			
			System.out.println(donor.getWeight());
			ps.setString(8,donor.getDonor_id());
						
			result =ps.executeUpdate();
			
		}catch(Exception e)
		{
			System.out.println("**error** donordl:updatedonor"+e.getMessage());
		}
		return result;
	}
	
	
	public static int updateLoginDonor(String donor_id)
	{
		DonorDTO donor=null;
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="update DONOR_REG set DONOR_NAME=?,blood_grp=?,"
					+ "gender=?,dob=?,phone=?,height=?,weight=? where DONOR_ID='"+donor_id+"'";
			
			
			ps=con.prepareStatement(query);
			//ps.setString(1, donor.getDonor_id());
			ps.setString(1, donor.getDonor_name());
			ps.setString(2, donor.getBlood_grp());
			ps.setString(3, donor.getGender());
			ps.setString(4, donor.getDob());
			ps.setLong(5, donor.getPhone());
			ps.setFloat(6, donor.getHeight());
			ps.setFloat(7, donor.getWeight());
			
			result =ps.executeUpdate();
			
		}catch(Exception e)
		{
			System.out.println("**error** donordl:updateLogindonor"+e.getMessage());
		}
		return result;
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
			String sql="select * FROM DONOR_REG WHERE DONOR_ID='"+donor_id+"'";
			con=DBHelper.getConnection();
			statement=con.createStatement();
			resultSet=statement.executeQuery(sql);
			if(resultSet.next())
			{
				donor = new DonorDTO();
				
				//donor.setDonor_id(resultSet.getString("DONOR_ID"));
				donor.setDonor_name(resultSet.getString("DONOR_NAME"));
				donor.setBlood_grp(resultSet.getString("BLOOD_GRP"));
				donor.setGender(resultSet.getString("GENDER"));
				donor.setDob(resultSet.getString("DOB"));
				donor.setPhone(resultSet.getLong("PHONE"));
				donor.setHeight(resultSet.getFloat("HEIGHT"));
				donor.setWeight(resultSet.getFloat("WEIGHT"));
				donors.add(donor);
								
			}
			
		}catch(Exception e)
		{
			System.out.println("**error** donordl:updatedonor"+e.getMessage());
		}
		return donor;
		
	}
	
	/*public static DonorDTO getLoginDonor(String donor_id)
	{
		ArrayList<DonorDTO> donors=null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		DonorDTO donor=null;
		try
		{
			String sql="select * FROM DONOR_REG WHERE DONOR_ID like='donor_id'";
			con=DBHelper.getConnection();
			statement=con.createStatement();
			resultSet=statement.executeQuery(sql);
			if(resultSet.next())
			{
				donor = new DonorDTO();
				
				donor.getDonor_name();
				donor.getBlood_grp();
				donor.getGender();
				donor.getDob();
				donor.getPhone();
				donor.getHeight();
				donor.getWeight();
				
			}
			
		}catch(Exception e)
		{
			System.out.println("**error** donordl:updatedonor"+e.getMessage());
		}
		return donor;
		
	}*/
	
	public static int addToAdminAccept(DonorDTO donor)
	{
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con =null;
		try
		{
			con = DBHelper.getConnection();
			query = "INSERT INTO ADMIN_ACCEPT(donor_id,donor_name,blood_grp,gender,dob,phone,height,weight,dod)VALUES(?,?,?,?,?,?,?,?,?)";
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
			System.out.println("**Error** : DonorDL.addToAdminAccept "+e.getMessage());
          
		}
		
		return result;
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
			System.out.println("**Error** : DonorDL.deleteDonor "+e.getMessage());
			
		}
		
		return result;
	}



}
