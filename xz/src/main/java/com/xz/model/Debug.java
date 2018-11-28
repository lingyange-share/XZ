package com.xz.model;

public class Debug {
	private int qid;
	private String dscr;
	private String detail;
	private String acc;
	private int whoid;
	
	private Accupload ac;
	
	private String page;
	private String rows;
	private String sort;//排序字段
	private String order;//排序方式
	
	
	
	public Accupload getAc() {
		return ac;
	}
	public void setAc(Accupload ac) {
		this.ac = ac;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getRows() {
		return rows;
	}
	public void setRows(String rows) {
		this.rows = rows;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	
	
	public String getDscr() {
		return dscr;
	}
	public void setDscr(String dscr) {
		this.dscr = dscr;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getAcc() {
		return acc;
	}
	public void setAcc(String acc) {
		this.acc = acc;
	}
	public int getWhoid() {
		return whoid;
	}
	public void setWhoid(int whoid) {
		this.whoid = whoid;
	}
	
	
}
