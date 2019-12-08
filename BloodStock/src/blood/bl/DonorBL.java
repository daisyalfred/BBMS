package blood.bl;

import java.util.ArrayList;

import blood.dl.DonorDL;
import blood.dto.DonorDTO;

public class DonorBL {
	
	public static int addDonor(DonorDTO donor)
	{
		int result = 0;
		
		try
		{
			
			result = DonorDL.addDonor(donor);
				
		}
		catch(Exception e)
		
		{
		 result = -1;
		 System.out.println("");
		}
		
		return result;
	}
	
	public static int addOneTimeDonor(DonorDTO donor)
	{
		int result = 0;
		
		try
		{
			
			result = DonorDL.addOneTimeDonor(donor);
				
		}
		catch(Exception e)
		
		{
		 result = -1;
		 System.out.println("");
		}
		
		return result;
	}
	
	
	public static int addToAdminAccept(DonorDTO donor)
	{
        int result = 0;
		
		try
		{
			
			result = DonorDL.addToAdminAccept(donor);
				
		}
		catch(Exception e)
		
		{
		 result = -1;
		 System.out.println("");
		}
		
		return result;
	}

	
	public static ArrayList<DonorDTO> getDonors()
	{
		
		ArrayList<DonorDTO> donors = null;
		
		
		try
		{
			donors = DonorDL.getDonors();
		}
				
			
		catch(Exception e) 
		{
			System.out.println("**Error** : DonorBL.getDonors "+e.getMessage());
			
		}
		
		return donors;
	}
	
		
	public static int updateDonor(DonorDTO donor)
	{
		int result=0;
		
		try
		{
			result =DonorDL.updateDonor(donor);
			
		}catch(Exception e)
		{
			System.out.println("**error** DonorBL:updateDonor"+e.getMessage());
		}
		return result;
	}
	
	
	public static int updateLoginDonor(String donor_id)
	{
		int result=0;
		
		try
		{
			result =DonorDL.updateLoginDonor(donor_id);
			
		}catch(Exception e)
		{
			System.out.println("**error** DonorBL:updateDonor"+e.getMessage());
		}
		return result;
	}
	
	public static DonorDTO getDonor (String donor_id)
	{
		DonorDTO donor=null;
		try
		{
			donor=DonorDL.getDonor(donor_id);
		}
		catch(Exception e)
		{
			System.out.println("**error** donorbl:addDonor"+e.getMessage());
		}
		return donor;
	}
	
	
	/*public static DonorDTO getDonor2(String donor_id)
	{
		DonorDTO donor=null;
		try
		{
			donor=DonorDL.getDonor2(donor_id);//modification done.on nov 28 as noticed the method called was getdonor.
		}
		catch(Exception e)
		{
			System.out.println("**error** donorbl:addDonor"+e.getMessage());
		}
		return donor;
	}
    
	public static DonorDTO getLoginDonor (String donor_id)
	{
		DonorDTO donor=null;
		try
		{
			donor=DonorDL.getLoginDonor(donor_id);//modification done.on nov 28 as noticed the method called was getdonor
		}
		catch(Exception e)
		{
			System.out.println("**error** donorbl:getLoginDonor"+e.getMessage());
		}
		return donor;
	}*/
	
	
	
	public static int deleteDonor(String donor_id)
	{			
		int result = 0;
		try
		{			
			result = DonorDL.deleteDonor(donor_id);			
		}
		catch(Exception e) 
		{
			result=-1;
			System.out.println("**Error** : DonorBL.deleteDonor "+e.getMessage());
		}		
		return result;	
	}

	
}
