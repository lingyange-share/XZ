package com.xz.thread.newtest.demo1;

public class DoIt {

	public static void main(String[] args) {
		add();
		remove();
	}
	public static  void add(){
		for(int i =0 ; i<100000000;i++){
			System.out.println(i);
		}
	}
	public static void remove(){
		System.out.println("等待执行");
	}

}
