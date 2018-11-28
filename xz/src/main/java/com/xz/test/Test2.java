package com.xz.test;


public class Test2 extends Thread{
	@Override
	public void run() {
		// TODO Auto-generated method stub
		Xstatic x = new Xstatic();
		System.out.println("线程："+Thread.currentThread().getName());

		System.out.println("static修饰的变量："+Xstatic.a);
		System.out.println("无static修饰的变量："+x.getB());
		ccc(x);
//		System.out.println("-------");
//		vvv(x);
	}
	public static void ccc(Xstatic x1){
		
		
		Xstatic.a = 10;
		
		x1.setB(20);
//		System.out.println("static a :"+Xstatic.a);
//		System.out.println(" b :"+x1.getB());
	}
	public static void vvv(Xstatic x1){		
		System.out.println("static a :"+Xstatic.a);
		System.out.println("b :"+x1.getB());
	}
}
