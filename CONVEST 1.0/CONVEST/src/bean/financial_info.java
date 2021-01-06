package bean;

public class financial_info {
	private int financialinfoid;
	private int jinkai;
	private int zuoshou;
	private int zhangting;
	private int dieting;
	private int huanshou;
	private int zhenfu;
	private String chengjiaoliang;
	private String chengjiaoe;
	private String neipan;
	private String waipan;
	private String liangbi;
	private String zhangdiefu;
	private int shiyinglv;
	private int shijinglv;
	private String liutong;
	private String zongshizhi;

	
	public financial_info(int jinkai, int zuoshou, int zhangting, int dieting, int huanshou, int zhenfu, String chengjiaoliang, String chengjiaoe,String neipan,String waipan,String liangbi, String zhangdiefu, int shiyinglv, int shijinglv, String liutong, String zongshizhi) {
		this.jinkai = jinkai;
		this.zuoshou = zuoshou;
		this.zhangting = zhangting;
		this.dieting = dieting;
		this.huanshou = huanshou;
		this.zhenfu = zhenfu;
		this.chengjiaoliang = chengjiaoliang;
		this.chengjiaoe = chengjiaoe;
		this.neipan = neipan;
		this.waipan = waipan;
		this.liangbi = liangbi;
		this.zhangdiefu = zhangdiefu;
		this.shiyinglv = shiyinglv;
		this.shijinglv = shijinglv;
		this.liutong = liutong;
		this.zongshizhi = zongshizhi;
		
		
	}
	
	public int get_financialinfoid() {
		return financialinfoid;
	}
	public int get_jinkai() {
		return jinkai;
	}
	public int get_zuoshou() {
		return zuoshou;
	}
	public int get_zhangting() {
		return zhangting;
	}
	public int get_dieting() {
		return dieting;
	}
	public int get_huanshou() {
		return huanshou;
	}
	public int get_zhenfu() {
		return zhenfu;
	}
	public String get_chengjiaoliang() {
		return chengjiaoliang;
	}
	public String get_chengjiaoe() {
		return chengjiaoe;
	}
	public String get_neipan() {
		return neipan;
	}
	public String get_waipan() {
		return waipan;
	}
	public String get_liangbi() {
		return liangbi;
	}
	public String get_zhangdiefu() {
		return zhangdiefu;
	}
	public int get_shiyinglv() {
		return shiyinglv;
	}
	public int get_shijinglv() {
		return shijinglv;
	}
	public String get_liutong() {
		return liutong;
	}
	public String get_zongshizhi() {
		return zongshizhi;
	}
}




