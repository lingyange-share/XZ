package com.xz.thread.someThreadOnetime.demo4;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class Output implements Runnable {
	private Resource r;
	Lock l = new ReentrantLock();
	public Output(Resource r) {
		// TODO Auto-generated constructor stub
		this.r = r;
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		while(true){
			synchronized(r){
				if(!r.flag){
					try {
						r.wait();
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				System.out.println(r.name +"---"+r.sex);
				//
				r.flag = false;
				r.notify();
			}
		}
	}

}
