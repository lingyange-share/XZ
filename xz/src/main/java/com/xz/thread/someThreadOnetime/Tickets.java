package com.xz.thread.someThreadOnetime;
/**
 * 使用同步技术解决线程安全问题    多线程 共享数据才会出现
 * 公式
 * 	syschronized(任意的对象){
 * 		线程要操作的共享数据
 * }同步代码块
 * @author xz
 *
 */
public class Tickets implements Runnable{
//定义票源
	private int ticket = 100;
	private Object obj = new Object();
	@Override
	public void run() {
		// TODO Auto-generated method stub
		while(true){
			//线程共享数据 保证线程安全 加入同步代码块
			synchronized(obj){//第一线程进入后 后去线程锁对象  防止其他线程进入 结束后释放线程锁（obj）相当于造的锁
				
				//对票数判断，大于0，可以出售
				if(ticket>0){
					try {
						Thread.sleep(10);//模拟卡机 cpu占用   当多个线程同时操作时 可能导致 在进入判断后 都进入阻塞状态 当再次获得资源后会出现负数现象
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					System.out.println(Thread.currentThread().getName() +"出售第："+ticket--);
				}
			
			}
		}
	}

}
 