package com.common.web.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.common.mapper.AbstractSqlSession;
import com.common.web.vo.MenuTreeVO;

@Repository
public class MenuDAO extends AbstractSqlSession {
    
    public List<MenuTreeVO> selectMenuTree(String menuUrl) {

        return selectMenuTree(menuUrl, 0);
    }

    public List<MenuTreeVO> selectMenuTree(String menuUrl, int userNo) {

        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("menuUrl", menuUrl);
        map.put("userNo", userNo);
        
        return selectList("MenuDAO.selectMenuTree", map);
    }
}
