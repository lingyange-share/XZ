package com.xz.thread.newtest.demo5;
/**
 * 使用匿名内部类，实现多线程程序
 * 前提：实现或继承接口
 * new 父类或者接口（）{
 * 	 重写抽象方法
 * }
 * @author xz
 *
 */
public class ThreadDemo {
	public static void main(String[] args) {
		//继承方式 xxx extends Thread{public void run(){}};
		new Thread(){
			public void run(){
				System.out.println("!!!");
			}
		}.start();
		//实现接口方式 xxx implements  Runable {public void run(){}}
		Runnable r =  new Runnable(){
			public void run(){
				System.out.println("###");
			}
		};
		new Thread(r).start();
		
		 //第三种 合并
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				System.out.println("@@@");
			}
		}).start();
	}
}
