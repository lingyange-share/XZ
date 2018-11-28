package com.xz.thread.someThreadOnetime.demo2;

public class ThreadDemo {

	/**
	 * 多线程并发 访问 同一数据资源
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Tickets t = new Tickets();
		Thread t0 = new Thread(t);
		Thread t1 = new Thread(t);
		Thread t2 = new Thread(t);
		t0.start();
		t1.start();
		t2.start();
	}

}
