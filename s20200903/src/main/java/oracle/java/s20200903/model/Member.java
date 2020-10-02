package oracle.java.s20200903.model;

import java.util.Date;

public class Member {
	private String mId;
	private String mNick;
	private String mName;
	private String mPw;
	private String mAddr;
	private String mAddr2;
	private int mLevel;
	private double mSweet;
	private String mTel;
	private Date mDate;
	private String mMail;
	private String mSms;
	
	private String search;   
	private String keyword;
	private String pageNum;  
	private int start; 		 
	private int end;
	
	
	
	
	
	public String getmTel() {
		return mTel;
	}
	public void setmTel(String mTel) {
		this.mTel = mTel;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmNick() {
		return mNick;
	}
	public void setmNick(String mNick) {
		this.mNick = mNick;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmPw() {
		return mPw;
	}
	public void setmPw(String mPw) {
		this.mPw = mPw;
	}
	public String getmAddr() {
		return mAddr;
	}
	public void setmAddr(String mAddr) {
		this.mAddr = mAddr;
	}
	public String getmAddr2() {
		return mAddr2;
	}
	public void setmAddr2(String mAddr2) {
		this.mAddr2 = mAddr2;
	}
	public int getmLevel() {
		return mLevel;
	}
	public void setmLevel(int mLevel) {
		this.mLevel = mLevel;
	}
	public double getmSweet() {
		return mSweet;
	}
	public void setmSweet(double mSweet) {
		this.mSweet = mSweet;
	}
	public Date getmDate() {
		return mDate;
	}
	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}
	public String getmMail() {
		return mMail;
	}
	public void setmMail(String mMail) {
		this.mMail = mMail;
	}
	public String getmSms() {
		return mSms;
	}
	public void setmSms(String mSms) {
		this.mSms = mSms;
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
	
	
}	
