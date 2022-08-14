package com.moon.material.home;

import org.springframework.stereotype.Repository;

import com.common.mapper.AbstractSqlSession;

@Repository
public class HomeDAO extends AbstractSqlSession {

	private final String NAMESPACE = "HomeDAO.";
	
	public String selectTime() throws Exception {
		return selectOne(NAMESPACE + "selectTime");
	}
	
}
