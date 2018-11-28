package com.xz.thread.someThreadOnetime.demo2;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * JDK 1.5后 locak 替代同步代码块
 * lock 接口 获取锁和释放锁
 * 实现类
 * @author xz
 *
 */
public class Tickets implements Runnable{
//定义票源
	private int ticket = 100;
	//类的成员位置 创建lock接口实现类对象
	private Lock lock = new ReentrantLock();
	@Override
	public void run() {
		// TODO Auto-generated method stub
		while(true){
			payTickets();
		}
	}
	public  void payTickets(){//同步方法 中的对象锁 是基本对象引用this  静态方法里同样有锁 是 类自己.class （Tickets.class）
		//调用 方法获取锁
		lock.lock();
		//对票数判断，大于0，可以出售
		if(ticket>0){
			try {
				Thread.sleep(10);//模拟卡机 cpu占用   当多个线程同时操作时 可能导致 在进入判断后 都进入阻塞状态 当再次获得资源后会出现负数现象
			} catch (InterruptedException e) {//出现异常无法控制锁的释放
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				lock.unlock();//释放锁
			}
			System.out.println(Thread.currentThread().getName() +"出售第："+ticket--);
		}
		
	}

}
 