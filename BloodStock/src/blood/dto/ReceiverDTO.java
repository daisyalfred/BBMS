package blood.dto;

public class ReceiverDTO {
	
	String patient_id,patient_name,blood_grp,gender,hos_name,hos_pat_id;
	long phone;
	
	public String getPatient_id()
	{
		return patient_id;
	}
	public void setPatient_id(String patient_id) 
	{
		this.patient_id = patient_id;
	}
	public String getPatient_name()
	{
		return patient_name;
	}
	public void setPatient_name(String patient_name) 
	{
		this.patient_name = patient_name;
	}
	public String getBlood_grp()
	{
		return blood_grp;
	}
	public void setBlood_grp(String blood_grp) 
	{
		this.blood_grp = blood_grp;
	}
	public String getGender()
	{
		return gender;
	}
	public void setGender(String gender) 
	{
		this.gender = gender;
	}
	public String getHos_name()
	{
		return hos_name;
	}
	public void setHos_name(String hos_name) 
	{
		this.hos_name = hos_name;
	}
	public String getHos_pat_id() 
	{
		return hos_pat_id;
	}
	public void setHos_pat_id(String hos_pat_id) 
	{
		this.hos_pat_id = hos_pat_id;
	}
	public long getPhone() 
	{
		return phone;
	}
	public void setPhone(long phone)
	{
		this.phone = phone;
	}
	
}
