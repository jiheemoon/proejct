package com.profile.index;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProfileController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProfileController.class);

    @Autowired
    protected ProfileService profileService;
    
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String profile(Locale locale, Model model) throws Exception {
        
        logger.debug(profileService.selectTime());
        return "profile/index";
    }

    @RequestMapping(value = "/profile/menu", method = RequestMethod.GET)
    public String profile(String url, Locale locale, Model model) throws Exception {
        
        return url;
    }
    
}
