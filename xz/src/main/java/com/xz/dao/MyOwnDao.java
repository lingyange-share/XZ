package com.xz.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xz.model.Back_Login;

@Component(value="MyOwnDao")
public class MyOwnDao <T>{
	@Autowired
	SqlSessionTemplate st;
	public List getLoginRegister(String str ,Object obj){
		List  list = st.selectList(str,obj);
		return list;
	}
	public List getUseOfList(String str ,Object obj){
		List  list = st.selectList(str,obj);
		return list;
	}
	public int getDataSize(String str ,Object obj){
		int count = st.selectOne(str, obj);
		return count;
	}
	public int insert(String str , Object obj){
		return st.insert(str, obj);
	}
	public T getDetail(String str,Object obj){
		return st.selectOne(str, obj);
	}
	public void delById(String str,Object pid){
		st.delete(str, pid);
	}
	public void zsAdd(String str , Object obj){
		st.update(str);
	}
	public void lsRel(String str , Object obj){
		st.update(str);
	}
	public Boolean verifyLog(String str ,Object obj){
		Boolean b =false;
		int flag = st.selectOne(str, obj);
		
		if(flag == 1){
			b =true;
		}
		return b;
	}
	public String getUrl(String str ,int qid){
		
		return st.selectOne(str, qid);
	}
}
