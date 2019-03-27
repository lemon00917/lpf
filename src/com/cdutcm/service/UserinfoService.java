package com.cdutcm.service;

import java.sql.SQLException;
import java.util.List;

import com.cdutcm.dao.UserinfoDao;
import com.cdutcm.domain.JResult;
import com.cdutcm.domain.Jrsesult;

public class UserinfoService {
	//查询�?有信�?
	public List<JResult> findAllUserinfo() throws SQLException{
		////因为没有复杂业务 直接传�?�请求到dao�?
		UserinfoDao dao=new UserinfoDao();
		return dao.findAllUserinfo();
	}
  //根据jid删除信息
	public void delInfoByJid(int jid) throws SQLException {
		// TODO Auto-generated method stub
		UserinfoDao dao=new UserinfoDao();
		dao.delInfoByJid(jid);
		
	}
	//添加数据
	public void addinfo(Jrsesult jresult) throws SQLException {
		// TODO Auto-generated method stub
		UserinfoDao dao=new UserinfoDao();
		 dao.addinfo(jresult);
		
	}

}
