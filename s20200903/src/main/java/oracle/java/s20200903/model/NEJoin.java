package oracle.java.s20200903.model;

import org.springframework.web.multipart.MultipartFile;

public class NEJoin {
	
	private int bid;
	private int pnum;
	private String mid;
	private int ctcode; 	
	private int pstatus; 	// 1.거래가능 2.거래중 3.거래완료
	private String ptitle;
	private int pprice;
	private String pdate;
	private String pcontent;
	private int phit;
	private int ppicks;
	private String pimg1;
	private String pimg2;
	private String pimg3;
	private String pimg4;
	private String pimg5;
	
	private MultipartFile[] img;
	
	public MultipartFile[] getImg() {
		return img;
	}
	public void setImg(MultipartFile[] img) {
		this.img = img;
	}
	
	private String mnick;
	private String maddr;
	private String msweet;
	private String ctkinds;
	
	// 조회용
	private String search;   
	private String keyword;
	private String pageNum;  
	private int start; 		 
	private int end;
	
	private String sword;
	private int scnt;
	private String lsearch;
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getCtcode() {
		return ctcode;
	}
	public void setCtcode(int ctcode) {
		this.ctcode = ctcode;
	}
	public int getPstatus() {
		return pstatus;
	}
	public void setPstatus(int pstatus) {
		this.pstatus = pstatus;
	}
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public int getPhit() {
		return phit;
	}
	public void setPhit(int phit) {
		this.phit = phit;
	}
	public int getPpicks() {
		return ppicks;
	}
	public void setPpicks(int ppicks) {
		this.ppicks = ppicks;
	}
	public String getPimg1() {
		return pimg1;
	}
	public void setPimg1(String pimg1) {
		this.pimg1 = pimg1;
	}
	public String getPimg2() {
		return pimg2;
	}
	public void setPimg2(String pimg2) {
		this.pimg2 = pimg2;
	}
	public String getPimg3() {
		return pimg3;
	}
	public void setPimg3(String pimg3) {
		this.pimg3 = pimg3;
	}
	public String getPimg4() {
		return pimg4;
	}
	public void setPimg4(String pimg4) {
		this.pimg4 = pimg4;
	}
	public String getPimg5() {
		return pimg5;
	}
	public void setPimg5(String pimg5) {
		this.pimg5 = pimg5;
	}
	public String getMnick() {
		return mnick;
	}
	public void setMnick(String mnick) {
		this.mnick = mnick;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	public String getMsweet() {
		return msweet;
	}
	public void setMsweet(String msweet) {
		this.msweet = msweet;
	}
	public String getCtkinds() {
		return ctkinds;
	}
	public void setCtkinds(String ctkinds) {
		this.ctkinds = ctkinds;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getPageNum() {
		return pageNum;
	}
	public void setPageNum(String pageNum) {
		this.pageNum = pageNum;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getSword() {
		return sword;
	}
	public void setSword(String sword) {
		this.sword = sword;
	}
	public int getScnt() {
		return scnt;
	}
	public void setScnt(int scnt) {
		this.scnt = scnt;
	}
	public String getLsearch() {
		return lsearch;
	}
	public void setLsearch(String lsearch) {
		this.lsearch = lsearch;
	}
	
	
	
	
	
	
}
