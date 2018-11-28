package com.xz.thread;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class TaskMain {
	public static void main(String[] args){
//	    Task task = new Task();
//	    task.run();
		//单线程
//		Thread t = new Thread(new Task());
//	    t.start();
//	    System.out.println("Waiting for Task");
	    //多个线程
//		 for(int i = 0 ; i < 5 ; i++){
//		        new Thread(new Task()).start();
//		    }
//		    System.out.println("Waiting for Task");
		//线程管家服务
//		ExecutorService es = Executors.newFixedThreadPool(1);
//		
//		 for(int i = 0 ; i < 5 ; i++){
//			 es.execute(new Task());
//		 }
//		 es.shutdown();
		ExecutorService exec = Executors.newCachedThreadPool();//工头？
		ArrayList<Future<Object>> results=new ArrayList<Future<Object>>();
		for(int i = 0; i <10 ; i++){
			results.add(exec.submit(new TaskCallable(i)));
		}
		for (Future<Object> future : results) {
			if(future.isDone()){
				try {
					System.out.println("---"+future.get());
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ExecutionException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
	}
}
