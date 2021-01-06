package bean;

public class Shareholding_change {
	private int ShareholdingChangeId;
	private String ChangeDate;
	private String ShareholderName;
	private String ChangeType;
	private String ChangedShareNum;
	private String Proportion;

	
	public Shareholding_change(String ChangeDate,String ShareholderName,String ChangeType,String ChangedShareNum,String Proportion) {
		this.ChangeDate = ChangeDate;
		this.ShareholderName = ShareholderName;
		this.ChangeType = ChangeType;
		this.ChangedShareNum = ChangedShareNum;
		this.Proportion = Proportion;
		
	}
	
	public int get_ShareholdingChangeId() {
		return ShareholdingChangeId;
	}
	public String get_ChangeDate() {
		return ChangeDate;
	}
	public String get_ShareholderName() {
		return ShareholderName;
	}
	public String get_ChangeType() {
		return ChangeType;
	}
	public String get_ChangedShareNum() {
		return ChangedShareNum;
	}
	public String get_Proportion() {
		return Proportion;
	}
	
	
}




