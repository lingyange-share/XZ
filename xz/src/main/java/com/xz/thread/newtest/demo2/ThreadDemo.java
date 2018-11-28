package com.xz.thread.newtest.demo2;
/**
 * 每个线程都有自己的 名字 默认为 Thread-x main名字就是main
 * @author xz
 * JVM 开启主线程 运行方法main 主线程也是线程 是线程就必然是Thread对象
 * Thread 中的静态方法 static Thread currentThread()返回正在执行的线程对象
 */
public class ThreadDemo {
	public static void main(String[] args) {
		NameThread nt = new NameThread();
		nt.setName("myThread");
		nt.start();
		
		//System.out.println(nt.getName());
		System.out.println(Thread.currentThread().getName());
	}
}
