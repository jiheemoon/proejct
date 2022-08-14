package com.common.web.vo;

import java.util.List;

public class UserVO extends DeptVO {

    private static final long serialVersionUID = -2333821795338695442L;

    private String userId;
    private String userIdOld;
    private String userNm;
    private String userPw;
    private String userPwOld;
    private String authType; // 인증방식 (dbms or ldap) <- tb_system_code (Globals.Auth)
    
    private String titleId;
    private String titleNm;
    private String positionId;
    private String positionNm;
    private String email;
    private String mobile;
    private Integer isEnabled;
    private List<String> roles;
    private String roleNm;
    
    private Integer scopId;
    
    public UserVO() {
        //
    }
    
    public UserVO(String userId) {
        super();
        this.userId = userId;
    }
    
    public UserVO(String userId, String userPw) {
        super();
        this.userId = userId;
        this.userPw = userPw;
    }
    
    public UserVO(int compId) {
        super.setCompId(compId);
    }
    
    public UserVO(int compId, String userId) {
        super.setCompId(compId);
        this.userId = userId;
    }   
    
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
     * @return the userIdOld
     */
    public String getUserIdOld() {
    
        return userIdOld;
    }

    
    /**
     * @param userIdOld the userIdOld to set
     */
    public void setUserIdOld(String userIdOld) {
    
        this.userIdOld = userIdOld;
    }

    /**
     * @return the userNm
     */
    public String getUserNm() {
    
        return userNm;
    }
    
    /**
     * @param userNm the userNm to set
     */
    public void setUserNm(String userNm) {
    
        this.userNm = userNm;
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
     * @return the mobile
     */
    public String getMobile() {
    
        return mobile;
    }
    
    /**
     * @param mobile the mobile to set
     */
    public void setMobile(String mobile) {
    
        this.mobile = mobile;
    }
    
    /**
     * @return the email
     */
    public String getEmail() {
    
        return email;
    }
    
    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
    
        this.email = email;
    }
    
    /**
     * @return the isEnabled
     */
    public Integer getIsEnabled() {
    
        return isEnabled;
    }

    
    /**
     * @param isEnabled the isEnabled to set
     */
    public void setIsEnabled(Integer isEnabled) {
    
        this.isEnabled = isEnabled;
    }

    /**
     * @return the roles
     */
    public List<String> getRoles() {
    
        return roles;
    }
    
    /**
     * @param roles the roles to set
     */
    public void setRoles(List<String> roles) {
    
        this.roles = roles;
    }

    public Integer getScopId() {

        return scopId;
    }

    public void setScopId(Integer scopId) {

        this.scopId = scopId;
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
     * @return the userPw
     */
    public String getUserPw() {

        return userPw;
    }

    /**
     * @param userPw the userPw to set
     */
    public void setUserPw(String userPw) {

        this.userPw = userPw;
    }

    /**
     * @return the authType
     */
    public String getAuthType() {

        return authType;
    }

    /**
     * @param authType the authType to set
     */
    public void setAuthType(String authType) {

        this.authType = authType;
    }

    /**
     * @return the userPwOld
     */
    public String getUserPwOld() {

        return userPwOld;
    }

    /**
     * @param userPwOld the userPwOld to set
     */
    public void setUserPwOld(String userPwOld) {

        this.userPwOld = userPwOld;
    }

}
