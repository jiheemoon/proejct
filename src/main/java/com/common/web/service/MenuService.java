package com.common.web.service;

import java.util.List;

import com.common.web.vo.MenuTreeVO;

public interface MenuService {

    List<MenuTreeVO> selectMenuTree(String menuUrl);

    List<MenuTreeVO> selectMenuTree(String menuUrl, int userNo);

}
