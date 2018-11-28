package com.xz.setlistenner;

public class Person {
	private PersonListener pl;
	public void registerListener(PersonListener personListener){
		this.pl = personListener;
	}
	public void run(){
		if(pl != null){
			Xevent x = new Xevent(this);
			this.pl.dorun(x);
		}
		System.out.println("To Run");
	}
	public void eat(){
		if(pl !=null){
			Xevent x  = new Xevent(this);
			this.pl.doeat(x);
		}
		System.out.println("To Eat");
	}
}
