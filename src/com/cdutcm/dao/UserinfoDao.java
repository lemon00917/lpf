package com.cdutcm.dao;

import java.sql.SQLException;
import java.util.List;

import javax.mail.Session;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.cdutcm.domain.JResult;
import com.cdutcm.domain.Jrsesult;
import com.cdutcm.utils.DataSourceUtils;

public class UserinfoDao {
	public List<JResult> findAllUserinfo() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from jc";
		List<JResult> infoList=runner.query(sql, new BeanListHandler<JResult>(JResult.class));
		return infoList;
	}

	public void delInfoByJid(int jid) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from jc where jid=?";
		runner.update(sql,jid);
		
	}

	public void addinfo(Jrsesult jresult) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into jc(name,age,sex,xuewei,xinlv,tiwen,jcresult,time) values(?,?,?,?,?,?,?,?)";
		runner.update(sql,jresult.getName(),jresult.getAge(),
				jresult.getSex(),jresult.getXuewei(),jresult.getXinlv(),
				jresult.getTiwen(),jresult.getJcresult(),jresult.getTime());
		
	}

}
