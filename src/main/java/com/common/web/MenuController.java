package com.common.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.web.service.MenuService;
import com.common.web.vo.MenuTreeVO;

@Controller
public class MenuController {

    @Autowired
    MenuService menuService;
    
    @RequestMapping(value = "/MenuTree.do")
    public @ResponseBody Object MenuTree(Model model, String menuUrl, HttpServletRequest request, HttpSession session) throws Exception {
        
        List<MenuTreeVO> menuList = null;
        //UserVO user = (UserVO)session.getAttribute("USER");
        try {
            menuList = menuService.selectMenuTree(menuUrl, 0);
//            if (null != user) {
//                menuList = menuService.selectMenuTree(menuUrl, user.getUserNo());
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (menuList == null) ? new ArrayList<MenuTreeVO>() : menuList;
    }
    
    
}
