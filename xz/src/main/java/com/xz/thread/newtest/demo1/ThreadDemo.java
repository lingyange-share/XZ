package com.xz.thread.newtest.demo1;

public class ThreadDemo {

	/**
	 * 如何创建 启动一个线程
	 * 创建thread 子类对象
	 * 子类对象调用 start方法 让线程程序执行、JVM调用线程中的run
	 * JVM 执行主线程main 开辟线程后交给cpu开辟线程执行 就具备两条执行路径 cpu 自主分配到底执行谁  并具有随机性 所以执行结果随机
	 * 可理解为 线程抢夺cpu
	 * 线程调用方法都是新建栈
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SubThread st = new SubThread();
		st.start();//调用run并没有真的开辟线程 依旧是单线程 start 为开始线程
		for(int i = 0 ; i<50 ; i++){
			System.out.println("Main...."+i);
		}
	}

}
