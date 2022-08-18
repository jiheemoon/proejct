package com.material.index;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MaterialController {
	
	private static final Logger logger = LoggerFactory.getLogger(MaterialController.class);

    @Autowired
    protected MaterialService materialService;
    
    @RequestMapping(value = "/material", method = RequestMethod.GET)
    public String material(Locale locale, Model model) throws Exception {
        
        logger.debug(materialService.selectTime());
        return "material/index";
    }

    @RequestMapping(value = "/material/menu", method = RequestMethod.GET)
    public String material(String url, Locale locale, Model model) throws Exception {
        
        return url;
    }
    
}
