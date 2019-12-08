package blood.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import blood.dto.DonorLoginDTO;
//import book.dl.DBHelper;
//import book.dto.User;

public class DonorLoginDL {

	public static DonorLoginDTO validateUser(DonorLoginDTO user1)
	{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet resultSet = null;
		DonorLoginDTO user2 = null;
		String query="";
		try
		{	
			query="SELECT * FROM DONOR_LOGIN WHERE USER_ID =? AND PASSWORD = ?";
			con = DBHelper.getConnection();
			ps= con.prepareStatement(query);
			ps.setString(1, user1.getDonor_login_id());
			ps.setString(2, user1.getDonor_password());
			resultSet = ps.executeQuery();
			if(resultSet.next())
			{
				user2 = new DonorLoginDTO();
				user2.setDonor_login_id(resultSet.getString("USER_ID"));
				user2.setDonor_password(resultSet.getString("PASSWORD"));
				
			}
			
			
		}
		catch(Exception e) 
		{
			System.out.println("**Error** : "+e.getMessage());
			
		}
		
		return user2;
	}
	
	public static int addUser(DonorLoginDTO donor)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="insert into DONOR_LOGIN(USER_ID,PASSWORD)VALUES(?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1,donor.getDonor_login_id());
			ps.setString(2,donor.getDonor_password());
			//ps.setString(3,u.getUserPassword());		
			
			result =ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**error** Userdl:addUser"+e.getMessage());
		}
		return result;
	}

}
