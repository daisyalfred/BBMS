package blood.bl;

import blood.dl.DonorLoginDL;
import blood.dto.DonorLoginDTO;



public class DonorLoginBL {
	
	public static DonorLoginDTO validateUser(DonorLoginDTO user1)
	{
		DonorLoginDTO user2 = null;
		try
		{	
			user2 = DonorLoginDL.validateUser(user1);
			
			
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
		try
		{
			
			result=DonorLoginDL.addUser(donor);
					//userDL.addUser(u);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**error** userbl:adduser"+e.getMessage());
		}
		return result;
	}

}
