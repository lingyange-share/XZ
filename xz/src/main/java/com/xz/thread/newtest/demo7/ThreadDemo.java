package com.xz.thread.newtest.demo7;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * 使用多线程求和
 * 多线程异步计算
 * @author xz
 *
 */
public class ThreadDemo {
	public static void main(String[] args) throws InterruptedException, ExecutionException {
		ExecutorService es = Executors.newFixedThreadPool(2);
		Future<Integer> s1 = es.submit(new GetSubCall(100));
		Future<Integer> s2 = es.submit(new GetSubCall(200));
		System.out.println("s1="+s1.get()+"---"+"s2="+s2.get());
		es.shutdown();//完成之后销毁线程池
	}
}
