package blood.bl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import blood.dl.AdminDL;
import blood.dl.DBHelper;
import blood.dl.DonorDL;
import blood.dl.ReceiverDL;
import blood.dto.DonorDTO;
import blood.dto.ReceiverDTO;

public class AdminBL {

	public AdminBL() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public static int deleteReceiver(String patient_id)
	{			
		int result = 0;
		
		try
		{
			result = AdminDL.deleteReceiver(patient_id);			
		}
		catch(Exception e) 
		{	result=-1;
			System.out.println("**Error** : ReceiverDL.deleteReceiver "+e.getMessage());
			
		}		
		return result;	
	}
	
	public static int addToBloodReceivers(ReceiverDTO receiver)
	{
		int result = 0;
		
		try
		{
			result = AdminDL.addToBloodReceivers(receiver);		
		}
		catch(Exception e) 
		{	result=-1;
			System.out.println("**Error** : AdminDL.addToBloodReceivers "+e.getMessage());
			
		}		
		return result;	
	}
	
	public static int addToBloodDonors(DonorDTO donor)
	{
		int result = 0;
		
		try
		{
			result = AdminDL.addToBloodDonors(donor);	
		}
		catch(Exception e) 
		{	result=-1;
			System.out.println("**Error** : AdminBL.addToBloodDonors "+e.getMessage());
			
		}		
		return result;	
	}
	
	
	public static ArrayList<ReceiverDTO> getReleases()
	{
		
		ArrayList<ReceiverDTO> receivers = null;		
		try
		{
			receivers = AdminDL.getReleases();
		}			
			
		catch(Exception e) 
		{
			System.out.println("**Error** : AdminBL.getReleases "+e.getMessage());
			
		}		
		return receivers;
	}
	
	public static DonorDTO getBloodDonor(String donor_id)
	{
		DonorDTO donor=null;
		try
		{
			donor=AdminDL.getBloodDonor(donor_id);
		}
		catch(Exception e)
		{
			System.out.println("**error** donorbl:addDonor"+e.getMessage());
		}
		return donor;
	}
	
	
	public static ArrayList<DonorDTO> getRequestedDonors()
	{
		
		ArrayList<DonorDTO> donors = null;		
		try
		{
			donors = AdminDL.getRequestedDonors();
		}			
			
		catch(Exception e) 
		{
			System.out.println("**Error** : AdminBL.getRequestedDonors "+e.getMessage());
			
		}		
		return donors;
	}
	
	
	public static ArrayList<DonorDTO> getAccepts()
	{
		ArrayList<DonorDTO> accepts = null;
		try
		{
			accepts = AdminDL.getAccepts();
		}	
			
		catch(Exception e) 
		{
			System.out.println("**Error** : AdminAcceptBL.getAccepts "+e.getMessage());
		}
		
		return accepts;
	}
	
	public static int deleteDonor(String donor_id)
	{			
		int result = 0;
		try
		{			
			result = AdminDL.deleteDonor(donor_id);			
		}
		catch(Exception e) 
		{
			result=-1;
			System.out.println("**Error** : AdminBL.deleteDonor "+e.getMessage());
		}		
		return result;	
	}
	
	
	
	public static ArrayList<ReceiverDTO> getReceivers()
	{
		
		ArrayList<ReceiverDTO> receivers = null;
		
		
		try
		{
			receivers = AdminDL.getReceivers();
		}
				
			
		catch(Exception e) 
		{
			System.out.println("**Error** : StudentBL.getStudents "+e.getMessage());
			
		}
		
		return receivers;
	}
	
	
	public static ReceiverDTO getReceiver(String patient_id)
	{
		
		int result;
		ReceiverDTO receiver=new ReceiverDTO();
		
		try
		{
			
			receiver = AdminDL.getReceiver(patient_id);
			
			
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** : ReceiverBL.getReceiver() "+e.getMessage());
			
		}
		
		return receiver;
	}
	
   
	public static DonorDTO getDonor (String donor_id)
	{
		DonorDTO donor=null;
		try
		{
			donor=AdminDL.getDonor(donor_id);
		}
		catch(Exception e)
		{
			System.out.println("**error** donorbl:addDonor"+e.getMessage());
		}
		return donor;
	}
	
	
	


}
