package com.common.web.vo;

import java.util.List;

public class RoleVO extends ObjectBase{

    private static final long serialVersionUID = -2333821795338695438L;
    
    public RoleVO () {
        //
    }
    
    private String userId;
    private String userNm;
    private String deptNm;
    
    private String roleId;
    private String roleNm;
    private String roleDesc;
    private int roleSeq;
    private String remarks;
    private int isEnabled;
    
    private String histId;
    private int userCnt;
    
    private List<RoleVO> roleList;

    
    /**
     * @return the userId
     */
    public String getUserId() {
    
        return userId;
    }
    
    /**
     * @param userId the userId to set
     */
    public void setUserId(String userId) {
    
        this.userId = userId;
    }
    
    /**
     * @return the roleId
     */
    public String getRoleId() {
    
        return roleId;
    }
    
    /**
     * @param roleId the roleId to set
     */
    public void setRoleId(String roleId) {
    
        this.roleId = roleId;
    }
    
    /**
     * @return the roleNm
     */
    public String getRoleNm() {
    
        return roleNm;
    }
    
    /**
     * @param roleNm the roleNm to set
     */
    public void setRoleNm(String roleNm) {
    
        this.roleNm = roleNm;
    }
    
    /**
     * @return the roleSeq
     */
    public int getRoleSeq() {
    
        return roleSeq;
    }
    
    /**
     * @param roleSeq the roleSeq to set
     */
    public void setRoleSeq(int roleSeq) {
    
        this.roleSeq = roleSeq;
    }
    
    
    /**
     * @return the remarks
     */
    public String getRemarks() {
    
        return remarks;
    }

    
    /**
     * @param remarks the remarks to set
     */
    public void setRemarks(String remarks) {
    
        this.remarks = remarks;
    }

    /**
     * @return the isEnabled
     */
    public int getIsEnabled() {
    
        return isEnabled;
    }
    
    /**
     * @param isEnabled the isEnabled to set
     */
    public void setIsEnabled(int isEnabled) {
    
        this.isEnabled = isEnabled;
    }
    
    /**
     * @return the histId
     */
    public String getHistId() {
    
        return histId;
    }
    
    /**
     * @param histId the histId to set
     */
    public void setHistId(String histId) {
    
        this.histId = histId;
    }
    
    /**
     * @return the userCnt
     */
    public int getUserCnt() {
    
        return userCnt;
    }
    
    /**
     * @param userCnt the userCnt to set
     */
    public void setUserCnt(int userCnt) {
    
        this.userCnt = userCnt;
    }

    public String getUserNm() {

        return userNm;
    }

    public void setUserNm(String userNm) {

        this.userNm = userNm;
    }

    public String getDeptNm() {

        return deptNm;
    }

    public void setDeptNm(String deptNm) {

        this.deptNm = deptNm;
    }

    /**
     * @return the roleDesc
     */
    public String getRoleDesc() {

        return roleDesc;
    }

    /**
     * @param roleDesc the roleDesc to set
     */
    public void setRoleDesc(String roleDesc) {

        this.roleDesc = roleDesc;
    }

    public List<RoleVO> getRoleList() {

        return roleList;
    }

    public void setRoleList(List<RoleVO> roleList) {

        this.roleList = roleList;
    }
    
    

    
}
