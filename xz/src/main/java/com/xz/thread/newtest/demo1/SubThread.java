package com.xz.thread.newtest.demo1;
/**
 * 定义子类继承thread
 * 重写父类run方法
 * @author xz
 *
 */
public class SubThread extends Thread{
	@Override
	public void run() {
		for(int i = 0 ; i<50 ; i++){
			System.out.println("Run...."+i);
		}
	}
}
