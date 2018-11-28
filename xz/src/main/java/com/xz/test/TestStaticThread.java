package com.xz.test;

public class TestStaticThread {
	public static void main(String[] args) throws InterruptedException {
		Test2 t1 = new Test2();
		Test2 t2 = new Test2();
		t1.setName("线程1————");
		t2.setName("线程2————");

		t1.start();
		Thread.sleep(3000);
		t2.start();
	}
}
