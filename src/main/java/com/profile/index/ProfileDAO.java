package com.profile.index;

import org.springframework.stereotype.Repository;

import com.common.mapper.AbstractSqlSession;

@Repository
public class ProfileDAO extends AbstractSqlSession {

	private final String NAMESPACE = "ProfileDAO.";
	
	public String selectTime() throws Exception {
		return selectOne(NAMESPACE + "selectTime");
	}
	
}
