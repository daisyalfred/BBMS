package blood.utlity;

import blood.dl.ReceiverDL;

public class ReceiverIdGenerate 
{
	public static String generateRECId()
	{
		String str=new String();
		String newstr=new String();
		String prefix,suffix;
		int isuffix;
		str=ReceiverDL.IdReceiver();
		if(str==null)
		{
			newstr="REC101";
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
