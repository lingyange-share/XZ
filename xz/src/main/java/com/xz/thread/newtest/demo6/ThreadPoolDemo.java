package com.xz.thread.newtest.demo6;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
 /**
  * 实现线程的第三种方式
  * 实现步骤
  * 工厂 
  * @author xz
  *
  */
public class ThreadPoolDemo {
	public static void main(String[] args) throws InterruptedException, ExecutionException {
		ExecutorService es =  Executors.newFixedThreadPool(2);//线程池里的线程数
		//提交线程任务的方法 返回一个Future 接口的实现类
		Future<String> f =  es.submit(new ThreadPollCalleable());
		String s = f.get();
		System.out.println(s);
	}
}
