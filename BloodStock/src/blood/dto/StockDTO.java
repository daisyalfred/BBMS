package blood.dto;

public class StockDTO {

	public StockDTO() {
		// TODO Auto-generated constructor stub
	}
	
	int count;
	String donor_name,dod,donor_id;
	
	
	
	public String getDonor_id() {
		return donor_id;
	}
	public void setDonor_id(String donor_id) {
		this.donor_id = donor_id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getDonor_name() {
		return donor_name;
	}
	public void setDonor_name(String donor_name) {
		this.donor_name = donor_name;
	}
	public String getDod() {
		return dod;
	}
	public void setDod(String dod) {
		this.dod = dod;
	}
	
	

}
