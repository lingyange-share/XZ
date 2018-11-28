package com.xz.thread.someThreadOnetime.demo1;
/**
*	采用同步方法形式 解决线程安全问题
*	好处：代码量简洁
*	将线程共享数据 ，和同步，抽取到一个方法中
 *	在方法声明上加同步关键字
 */
public class Tickets implements Runnable{
//定义票源
	private int ticket = 100;
	private Object obj = new Object();
	@Override
	public void run() {
		// TODO Auto-generated method stub
		while(true){
			payTickets();
		}
	}
	public synchronized void payTickets(){//同步方法 中的对象锁 是基本对象引用this  静态方法里同样有锁 是 类自己.class （Tickets.class）
		
		//对票数判断，大于0，可以出售
		if(ticket>0){
			try {
				Thread.sleep(10);//模拟卡机 cpu占用   当多个线程同时操作时 可能导致 在进入判断后 都进入阻塞状态 当再次获得资源后会出现负数现象
			} catch (InterruptedException e) {//出现异常无法控制锁的释放
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(Thread.currentThread().getName() +"出售第："+ticket--);
		}
		
	}

}
 