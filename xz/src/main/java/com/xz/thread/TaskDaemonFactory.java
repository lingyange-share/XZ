package com.xz.thread;

import java.util.concurrent.ThreadFactory;

/**
 * 线程工厂
 * @author xz
 *
 */
public class TaskDaemonFactory implements ThreadFactory{

	@Override
	public Thread newThread(Runnable r) {
		 Thread t = new Thread(r);
		 return t;
	}
	
}
