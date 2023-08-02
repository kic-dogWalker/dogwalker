package com.admin.item;

import java.sql.Date;
import java.sql.SQLException;

import com.admin.item.impl.ItemDAO;
import com.admin.model.ItemVO;

public class ItemServiceClient {
	public static void main(String[] args) throws SQLException {
		ItemDAO itemDAO = new ItemDAO();
		ItemVO vo = new ItemVO();
		Date date = new Date(System.currentTimeMillis());
		vo.setIt_name("상품이름3입니다.");
		vo.setIt_img("이미지경로3가 들어갑니다.");
		vo.setIt_content("상품내용3이들어갑니다.");
		vo.setIt_price(30000);
		vo.setIt_cnt(300);
		vo.setIt_rdate(date);
		vo.setIt_deleted(1);
		vo.setCatecode("1");
		itemDAO.insertItem(vo);
		
		}
}
