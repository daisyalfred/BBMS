package blood.dto;


public class DonorDTO {
	
	String donor_id,donor_name,blood_grp,gender;
	String dob,dod;
	long phone;
	float height,weight;
	
	public String getDonor_id() 
	{
		return donor_id;
	}
	public void setDonor_id(String donor_id) 
	{
		this.donor_id = donor_id;
	}
	public String getDonor_name() 
	{
		return donor_name;
	}
	public void setDonor_name(String donor_name)
	{
		this.donor_name = donor_name;
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
	public String getDob()
	{
		return dob;
	}
	public void setDob(String dob)
	{
		this.dob = dob;
	}
	public long getPhone() 
	{
		return phone;
	}
	public void setPhone(long phone)
	{
		this.phone = phone;
	}
	public float getHeight() 
	{
		return height;
	}
	public void setHeight(float height)
	{
		this.height = height;
	}
	public float getWeight()
	{
		return weight;
	}
	public void setWeight(float weight)
	{
		this.weight = weight;
	}
	public String getDod() {
		return dod;
	}
	public void setDod(String dod) {
		this.dod = dod;
	}
	
	
	

}
