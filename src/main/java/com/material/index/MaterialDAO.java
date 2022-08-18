package com.material.index;

import org.springframework.stereotype.Repository;

import com.common.mapper.AbstractSqlSession;

@Repository
public class MaterialDAO extends AbstractSqlSession {

	private final String NAMESPACE = "MaterialDAO.";
	
	public String selectTime() throws Exception {
		return selectOne(NAMESPACE + "selectTime");
	}
	
}
