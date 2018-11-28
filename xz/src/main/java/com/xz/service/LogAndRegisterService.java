package com.xz.service;

import java.util.HashMap;
import java.util.List;

import com.xz.model.Back_Login;

public interface LogAndRegisterService {
	public HashMap<String,Object> getLRList(String str,Back_Login bl); 
	
	public void zsAdd();
	public Boolean verifyLog(Back_Login b);
}
