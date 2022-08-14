package com.common.web.vo;

import com.common.web.vo.ObjectBase;

public class PositionVO extends ObjectBase {

    /**
     * 
     */
    private static final long serialVersionUID = -4166627899376354163L;
    
    private String positionId;
    private String positionNm;
    private int positionSeq;
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

    public PositionVO() {

        super();
        // TODO Auto-generated constructor stub
    }

    public PositionVO(String positionId, String positionNm, int positionSeq) {

        super();
        this.positionId = positionId;
        this.positionNm = positionNm;
        this.positionSeq = positionSeq;
    }
    
    /**
     * @return the positionId
     */
    public String getPositionId() {
    
        return positionId;
    }
    
    /**
     * @param positionId the positionId to set
     */
    public void setPositionId(String positionId) {
    
        this.positionId = positionId;
    }
    
    /**
     * @return the positionNm
     */
    public String getPositionNm() {
    
        return positionNm;
    }
    
    /**
     * @param positionNm the positionNm to set
     */
    public void setPositionNm(String positionNm) {
    
        this.positionNm = positionNm;
    }
    
    /**
     * @return the positionSeq
     */
    public int getPositionSeq() {
    
        return positionSeq;
    }
    
    /**
     * @param positionSeq the positionSeq to set
     */
    public void setPositionSeq(int positionSeq) {
    
        this.positionSeq = positionSeq;
    }

}
