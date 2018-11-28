package com.xz.service;

import java.util.HashMap;

import com.xz.model.Accupload;
import com.xz.model.Debug;

public interface BugService {
	public HashMap<String, Object> getDeBugService(Debug d);
	public void insertIntoBug(Debug d,Accupload ac);
	public Debug showDetail(int qid);
	public String getUrl(int atid);
	public String delBug(int qid);
}
