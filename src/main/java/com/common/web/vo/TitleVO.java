package com.common.web.vo;

import com.common.web.vo.ObjectBase;

public class TitleVO extends ObjectBase {

    /**
     * 
     */
    private static final long serialVersionUID = 2551219846768438589L;

    private String titleId;
    private String titleNm;
    private int titleSeq;
    private Integer countUser;

    
    /**
     * @return the countUser
     */
    public Integer getCountUser() {
    
        return countUser;
    }

    
    /**
     * @param countUser the countUser to set
     */
    public void setCountUser(Integer countUser) {
    
        this.countUser = countUser;
    }

    public TitleVO() {
        super();
    }

    public TitleVO(String titleId, String titleNm, int titleSeq) {
        super();
        this.titleId = titleId;
        this.titleNm = titleNm;
        this.titleSeq = titleSeq;
    }
    /**
     * @return the titleId
     */
    public String getTitleId() {
    
        return titleId;
    }
    
    /**
     * @param titleId the titleId to set
     */
    public void setTitleId(String titleId) {
    
        this.titleId = titleId;
    }
    
    /**
     * @return the titleNm
     */
    public String getTitleNm() {
    
        return titleNm;
    }
    
    /**
     * @param titleNm the titleNm to set
     */
    public void setTitleNm(String titleNm) {
    
        this.titleNm = titleNm;
    }
    
    /**
     * @return the titleSeq
     */
    public int getTitleSeq() {
    
        return titleSeq;
    }
    
    /**
     * @param titleSeq the titleSeq to set
     */
    public void setTitleSeq(int titleSeq) {
    
        this.titleSeq = titleSeq;
    }

}
