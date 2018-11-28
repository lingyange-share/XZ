package com.xz.thread.newtest.demo4;
/**
 *  创建Thread类对象，构造方法中。传递runable接口的实现类
 * 调用方法Thread类方法 start
 * @author xz
 *
 */
public class ThreadDemo {
	public static void main(String[] args) {
		SubRunable sr = new SubRunable();
		Thread t = new Thread(sr);
		t.start();
		for(int i = 0 ; i <50 ;i++){
			System.out.println("Main___"+i);
		}
	}
}
