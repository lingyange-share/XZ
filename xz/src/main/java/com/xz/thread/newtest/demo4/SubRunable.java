package com.xz.thread.newtest.demo4;
/*
 * 接口实现
 * 创建Thread类对象，构造方法中。传递runable接口的实现类
 * 调用方法Thread类方法 start
 */
public class SubRunable implements Runnable{

	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int i = 0 ; i <50 ;i++){
			System.out.println("Run___"+i);
		}
	}

}
