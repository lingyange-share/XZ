package com.xz.thread.backRealThread;
class DaemonSpawn implements Runnable{
	public void run(){
	    while(true)
	    Thread.yield();//线程休息
	}
}
