package com.xz.thread.newtest.demo3;

public class SleepThread extends Thread{
	@Override
	public void run() {//因为重写父类方法 所以无法抛出
		for(int i = 0 ; i < 5 ;i++){
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(i);
		}
	}
}
