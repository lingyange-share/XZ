package com.xz.thread.someThreadOnetime.demo4;
/**
 * 赋值用 resource 两次赋值不同
 * @author xz
 *
 */
public class Input implements Runnable{
	private Resource r;
	public Input(Resource r) {
		// TODO Auto-generated constructor stub
		this.r = r;
	}
	@Override
	public void run() {
		int i = 0;
		// TODO Auto-generated method stub
		while(true){
			
			synchronized(r){//两处同步 所用的锁不一样导致会出问题 所以此处 不要用this 而应用唯一的对象 r
				//如果flag wei true 进入等待状态   等待唤醒需要用锁对象调用
				if(r.flag){
					try {
						r.wait();
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(i%2==0){
					r.name = "张三";
					r.sex = "男";
				}else{
					r.name = "李四";
					r.sex = "女";
				}
				//降对方线程唤醒 并改变标记状态  赋值阶段
				r.flag = true;
				r.notify();
			}
			
			i++;
		}
	}

}
