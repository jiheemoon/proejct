package com.common.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.common.util.StringUtil;

@Controller
public class GlobalController {

    /**
     * JSP 호출작업만 처리하는 공통 함수
     */
    @RequestMapping(value="/GlobalPageLink.do")
    public String moveToPage(@RequestParam("link") String link) {

        // service 사용하여 리턴할 결과값 처리하는 부분은 생략하고 단순 페이지 링크만 처리함
        if (StringUtil.isEmpty(link)) {
            link = "/accessDenied";
        }
        return link.replace(";", "");
    }
}
