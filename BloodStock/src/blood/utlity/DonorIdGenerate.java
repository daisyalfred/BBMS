package blood.utlity;

import blood.dl.DonorDL;

public class DonorIdGenerate
{
	public static String generateDNRId()
	{
		String str=new String();
		String newstr=new String();
		String prefix,suffix;
		int isuffix;
		str=DonorDL.IdDonor();
		if(str==null)
		{
			newstr="DNR101";
		}
		else
		{
			prefix=str.substring(0,3);
			isuffix=Integer.parseInt(str.substring(3));
			isuffix++;
			newstr=prefix+isuffix;
		}
		return newstr;
		
	}
}

