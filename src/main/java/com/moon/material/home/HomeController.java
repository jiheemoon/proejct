package com.moon.material.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    protected HomeService homeService;
    
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );
        model.addAttribute("selectTime", homeService.selectTime() );
		
		return "home";
	}

    @RequestMapping(value = "/material", method = RequestMethod.GET)
    public String material(Locale locale, Model model) throws Exception {
        
        return "material/index";
    }

    @RequestMapping(value = "/material/menu", method = RequestMethod.GET)
    public String material(String menuUrl, Locale locale, Model model) throws Exception {
        
        String url = menuUrl.replace(".do", "");
        
        return "material/pages"+url;
    }
    
}
