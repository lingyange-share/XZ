package com.xz.thread;

public class Task implements Runnable{
	protected int countDown = 10;
	private static int taskCount = 0;
	private final int id = taskCount++;
	public Task(){};
	public Task(int countDown){
		this.countDown = countDown;
	}
	public String status(){
		return "#"+id+"("+(countDown>0?countDown:"Task!")+").    ";
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		while(countDown-->0){
	        System.out.print(status());
	        Thread.yield();
	    }
	}

}
