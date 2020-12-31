package bean;

public class Stock_info {
	private int BasicInfoId;
	private String location;
	private String Industry;
	private String Chairman;
	private String LegalRepresentative;
	private String Manager;
	private String ShareholdingEquity;
	private String FlowEquity;
	private String Controller;
	private String ProductType;
	private String CompanyInfo;
	
	public Stock_info(String location,String Industry,String Chairman,String LegalRepresentative,String Manager,String ShareholdingEquity,String FlowEquity,String Controller,String ProductType,String CompanyInfo) {
		this.location = location;
		this.Industry = Industry;
		this.Chairman = Chairman;
		this.LegalRepresentative = LegalRepresentative;
		this.Manager = Manager;
		this.ShareholdingEquity = ShareholdingEquity;
		this.FlowEquity = FlowEquity;
		this.Controller = Controller;
		this.ProductType = ProductType;
		this.CompanyInfo = CompanyInfo;
		
	}
	
	public int get_BasicInfoId() {
		return BasicInfoId;
	}
	public String get_location() {
		return location;
	}
	public String get_Industry() {
		return Industry;
	}
	public String get_Chairman() {
		return Chairman;
	}
	public String get_LegalRepresentative() {
		return LegalRepresentative;
	}
	public String Manager() {
		return Manager;
	}
	public String get_ShareholdingEquity() {
		return ShareholdingEquity;
	}
	public String get_FlowEquity() {
		return FlowEquity;
	}
	public String get_Controller() {
		return Controller;
	}
	public String get_ProductType() {
		return ProductType;
	}
	public String get_CompanyInfo() {
		return CompanyInfo;
	}
	
	
	
}



