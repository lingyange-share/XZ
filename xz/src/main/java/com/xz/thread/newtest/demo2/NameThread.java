package com.xz.thread.newtest.demo2;

public class NameThread extends Thread{
	public NameThread() {
		super("用构造方法调用父类构造方法改名");
	}
	public void run() {
		System.out.println(getName());//此处为父类方法 等同于 super.getName();
	}
}
