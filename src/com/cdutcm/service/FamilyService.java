package com.cdutcm.service;

import java.sql.SQLException;
import java.util.List;

import com.cdutcm.dao.FamilyDao;
import com.cdutcm.domain.Family;
import com.cdutcm.domain.Relationship;

public class FamilyService {
	
    //��Ӽ�����Ϣ
	public void addfamily(Family famliy) throws SQLException {
		// TODO Auto-generated method stub
		
		FamilyDao dao=new FamilyDao();
		dao.addfamily(famliy);
		
		
	}
	
    //��ѯ������Ϣ
	public List<Family> selectfamiy() throws SQLException {
		// TODO Auto-generated method stub
		FamilyDao dao=new FamilyDao();
		return dao.selectfamily();
	}

	//ɾ������
	public void delfamilyid(int fid) throws SQLException {
		// TODO Auto-generated method stub
		FamilyDao dao=new FamilyDao();
		dao.delfamilyid(fid);
		
	}

	
	public Family selectfamilyid(int fid) throws SQLException {
		// TODO Auto-generated method stub
		FamilyDao dao=new FamilyDao();
		return dao.selectfamilyid(fid);
		
		
	}

	//查询关系
	public List<Relationship> findRelationship() {
		// TODO Auto-generated method stub
		FamilyDao dao=new FamilyDao();
		List<Relationship> relationshiplist = null;
		try {
			relationshiplist = dao.findRelationship();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return relationshiplist;
	}
    //更新信息 
	public void updatefamily(Family famliy) throws SQLException {
		// TODO Auto-generated method stub
		FamilyDao dao=new FamilyDao();
	 dao.updatefamily(famliy);
		
	  }

	


}
