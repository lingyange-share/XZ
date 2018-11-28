package com.xz.utils;


public class Xpage {
	private int row_beging;
	private int row_end;
	public Xpage(int rows,int page) {
		this.setRow_end(rows);
		this.setRow_beging(page);
	}
	public int getend(){
		//System.out.println("this.row_beging *this.row_end:"+(this.row_beging +this.row_end-1));
		return this.row_beging +this.row_end-1;
	}
	public int getRow_beging() {
		return row_beging;
	}
	public void setRow_beging(int row_beging) {
		this.row_beging = (row_beging-1)*this.row_end;//orcal +1 mysql 不用+1
	}
	
	public int getRow_end() {
		return row_end;
	}
	public void setRow_end(int row_end) {
		this.row_end = row_end;
	}
	
	
}
