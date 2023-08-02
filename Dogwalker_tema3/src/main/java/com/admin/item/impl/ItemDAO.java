package com.admin.item.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.admin.model.ItemVO;
import com.admin.util.SqlSessionFactoryBean;

public class ItemDAO {
	private SqlSession mybatis;

	public ItemDAO() {
		mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	public void insertItem(ItemVO vo) {
		mybatis.insert("ItemDAO.insertItem", vo);
		mybatis.commit();
	}

	public void updateItem(ItemVO vo) {
		mybatis.update("ItemDAO.updateItem", vo);
		mybatis.commit();
	}

	public void deleteItem(ItemVO vo) {
		mybatis.delete("ItemDAO.deleteItem", vo);
		mybatis.commit();
	}

}
