package com.profile.index;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("profileService")
public class ProfileService {

	protected Logger logger = LoggerFactory.getLogger(this.getClass());
	
    @Autowired
    protected ProfileDAO profileDAO;

	public String selectTime() throws Exception {
		return profileDAO.selectTime();
	}
}
