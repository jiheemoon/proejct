package com.common.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.common.web.vo.MenuTreeVO;
import com.common.web.service.MenuService;

@Service("MenuService")
public class MenuServiceImpl implements MenuService {
    
    //private static final Logger logger = LoggerFactory.getLogger(MenuServiceImpl.class);

    @Autowired
    private MenuDAO menuDAO;
    
    @Override
    public List<MenuTreeVO> selectMenuTree(String menuUrl) {
        
        return selectMenuTree(menuUrl, 0);
    }
    
    @Override
    public List<MenuTreeVO> selectMenuTree(String menuUrl, int userNo) {
        
        List<MenuTreeVO> list = null;
        try {
            list = menuDAO.selectMenuTree(menuUrl, userNo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
