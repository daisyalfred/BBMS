package blood.bl;

import java.util.ArrayList;

import blood.dl.DonorDL;
import blood.dl.StockDL;
import blood.dto.DonorDTO;
import blood.dto.StockDTO;


public class StockBL 
{

	public static int getCount (String donor_id)
	{
		StockDTO donor=null;
		int count=0;
		try
		{
			count=StockDL.getCount(donor_id);
		}
		catch(Exception e)
		{
			System.out.println("**error** Stockbl:getCount"+e.getMessage());
		}
		
		return count;
	}
	
	
	
}
