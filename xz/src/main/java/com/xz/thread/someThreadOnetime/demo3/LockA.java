package com.xz.thread.someThreadOnetime.demo3;

public class LockA {
	private LockA() {
		// TODO Auto-generated constructor stub
	}
	public final static LockA locka = new LockA();//保证对象的唯一性
	
}
