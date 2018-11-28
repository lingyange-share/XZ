package com.xz.setlistenner;

public class Test {
	public static void main(String[] args) {
		Person p = new Person();
		p.registerListener(new MyPersonListener());
		p.run();
		p.eat();
	}
}
class MyPersonListener implements PersonListener{

	@Override
	public void dorun(Xevent xevent) {
		// TODO Auto-generated method stub
		System.out.println("rrrrrrrrrrrrrr");
	}

	@Override
	public void doeat(Xevent xevent) {
		// TODO Auto-generated method stub
		System.out.println("eeeeeeeeeeww");
	}
	
}
