package com.xz.thread;
public class TaskExtendsThread extends Thread{
	private int countDown = 5;
	private static int threadCount = 0;
	/*
	 * 可以在它的构造方法里直接调用run方法
	 */
	public TaskExtendsThread(){
	    super(Integer.toString(++threadCount));
	    start();
	}
	public String toString(){
	    return "#"+getName()+"("+countDown+").";
	}
	public void run(){
	    while(true){
	        System.out.println(this);
	        if(--countDown == 0 )
	            return ;
	    }
	}
	public static void main(String[] args){
    for(int i = 0 ;i < 5 ;i++)
        new TaskExtendsThread();
	}
}