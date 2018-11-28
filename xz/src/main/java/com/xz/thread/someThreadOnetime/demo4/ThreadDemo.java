package com.xz.thread.someThreadOnetime.demo4;

public class ThreadDemo {
	public static void main(String[] args) {
		Resource r = new Resource();
		Input in = new Input(r);
		Output ou = new Output(r);
		Thread t1 = new Thread(in);
		Thread t2 = new Thread(ou);
		t1.start();
		t2.start();
	}

}
