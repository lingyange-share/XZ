package com.xz.thread.backRealThread;

import java.util.concurrent.TimeUnit;

public class TestMain {
	public static void main(String[] args) throws InterruptedException{
	    /*
	     * Daemon被设置为了后台线程，它的所有子线程也自然就是后台线程了
	     */
	    Thread d = new Thread(new Daemon());
	    
	    d.setDaemon(true);
	    d.start();
	    System.out.println("d.isDaemon()="+d.isDaemon()+",");
	    TimeUnit.SECONDS.sleep(1);
	}
	
}
