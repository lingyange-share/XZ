package com.xz.thread.someThreadOnetime.demo3;

public class DeadLock implements Runnable{
	private int i = 0;
	@Override
	public void run() {
		// TODO Auto-generated method stub
		while(true){//死循环作用是创造多次去抢的效果
			if(i%2==0){
				//先进入A同步，再进入B同步
				synchronized(LockA.locka){
					System.out.println("进入 if locka");
					synchronized(LockB.lockb){
						System.out.println("进入 if lockb");
					}
				}
			}else{
				//先进入B 再进入B
				synchronized(LockB.lockb){
					System.out.println("进入 else lockb");
					synchronized(LockA.locka){
						System.out.println("进入else locka");
					}
				}
			}
			i++;
		}
	}

}
