package blood.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import blood.dto.DonorDTO;
import blood.dto.StockDTO;


public class StockDL {

	public static int getCount(String donor_id)
	{
		ArrayList<StockDTO> donors=null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		StockDTO donor=null;
		int count=0;
		try
		{
			String query = "SELECT COUNT(*) FROM BLOOD_DONORS where DONOR_ID='"+donor_id+"'";
			con=DBHelper.getConnection();
			statement=con.createStatement();
			resultSet=statement.executeQuery(query);
			resultSet.next();
			count=resultSet.getInt(1);
			//System.out.println(count);
		}catch(Exception e)
		{
			System.out.println("**error** Stockdl:getCount"+e.getMessage());
		}
		return count;
		
	}	

}
