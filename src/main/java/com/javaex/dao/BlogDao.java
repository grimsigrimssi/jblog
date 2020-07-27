package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BlogVo;

@Repository
public class BlogDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insert(BlogVo blogVo) {
		System.out.println("blogDao:insert");
		
		return sqlSession.insert("blog.insert", blogVo);
	}	

}
