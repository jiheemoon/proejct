package com.material.index;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("materialService")
public class MaterialService {

	protected Logger logger = LoggerFactory.getLogger(this.getClass());
	
    @Autowired
    protected MaterialDAO materialDAO;

	public String selectTime() throws Exception {
		return materialDAO.selectTime();
	}
}
