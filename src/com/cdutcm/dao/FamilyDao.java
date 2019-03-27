package com.cdutcm.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.cdutcm.domain.Family;
import com.cdutcm.domain.JResult;
import com.cdutcm.domain.Relationship;
import com.cdutcm.domain.User;
import com.cdutcm.utils.DataSourceUtils;

public class FamilyDao {

	//�������
	public void addfamily(Family famliy) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into family(fname,relationship,fage,ethnic,address,fsex,fphone,IDcard,work,medical) values(?,?,?,?,?,?,?,?,?,?)";
		runner.update(sql,famliy.getFname(),famliy.getRelationship(),famliy.getFage(),famliy.getEthnic(),famliy.getAddress(),famliy.getFsex(),
				famliy.getFphone(),famliy.getIDcard(),famliy.getWork(),famliy.getMedical());
		
	}

	//��ѯ����
	public List<Family> selectfamily() throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from family";
		List<Family> familylist=runner.query(sql, new BeanListHandler<Family>(Family.class));
		return familylist;
	}

	//ɾ������
	public void delfamilyid(int fid) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from family where fid=?";
		runner.update(sql,fid);
		
	}

	public Family selectfamilyid(int fid) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from family where fid=?";
		Family family=runner.query(sql, new BeanHandler<Family>(Family.class),fid);
		return family;
		
	}

	public List<Relationship> findRelationship() throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from relationship";
		return runner.query(sql, new BeanListHandler<Relationship>(Relationship.class));
	}

	public void updatefamily(Family famliy) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update family set fname=?,relationship=?,fage=?,ethnic=?,address=?,fsex=?,fphone=?,IDcard=?,work=?,medical=? where fid=?";
		runner.update(sql,famliy.getFname(),famliy.getRelationship(),famliy.getFage(),famliy.getEthnic(),famliy.getAddress(),famliy.getFsex(),
				famliy.getFphone(),famliy.getIDcard(),famliy.getWork(),famliy.getMedical(),famliy.getFid());
	}

	

}
