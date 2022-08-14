package com.common.web.vo;

public class ObjectBase extends PagerVO {
    
    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 1L;
    
    private int errInt;
    private String errHex;
    private String errStr;
    private String errMsg;
    private Integer isAuth;
    private int isActive;
    private String createUser;
    private String createName;
    private String createDate;
    private String updateUser;
    private String updateName;
    private String updateDate;

    private String mode;
    private String pageId;
    
    private String searchVal;
    private String searchKey;

    private String loginId;

    private Integer isClosed; // 평가주기 종료 또는 마감여부

    public ObjectBase() {
        
        clearError();
    }

    public ObjectBase(ObjectBase obs) {
        
        setError(obs);
    }

    public ObjectBase(int errInt, String errHex, String errStr, String errMsg) {
        
        setError(errInt, errHex, errStr, errMsg);
    }

    public ObjectBase(int errInt, String errHex, String errStr) {
        
        setError(errInt, errHex, errStr);
    }
    
    public String getErrStr() {

        return errStr;
    }

    public void setErrStr(String errStr) {

        this.errStr = errStr;
    }

    public int getErrInt() {

        return errInt;
    }

    public void setErrInt(int errInt) {

        this.errInt = errInt;
    }

    public String getErrHex() {

        return errHex;
    }

    public void setErrHex(String string) {

        this.errHex = string;
    }
    
    /**
     * @return the errMsg
     */
    public String getErrMsg() {
    
        return errMsg;
    }
    
    /**
     * @param errMsg the errMsg to set
     */
    public void setErrMsg(String errMsg) {
    
        this.errMsg = errMsg;
    }
    
    
    /**
     * @return the isActive
     */
    public int getIsActive() {
    
        return isActive;
    }
    
    /**
     * @param isActive the isActive to set
     */
    public void setIsActive(int isActive) {
    
        this.isActive = isActive;
    }
    
    /**
     * @return the isAuth
     */
    public Integer getIsAuth() {
    
        return isAuth;
    }
    
    /**
     * @param isAuth the isAuth to set
     */
    public void setIsAuth(Integer isAuth) {
    
        this.isAuth = isAuth;
    }
    
    /**
     * @return the createUser
     */
    public String getCreateUser() {
    
        return createUser;
    }

    
    /**
     * @param createUser the createUser to set
     */
    public void setCreateUser(String createUser) {
    
        this.createUser = createUser;
    }

    
    /**
     * @return the createDate
     */
    public String getCreateDate() {
    
        return createDate;
    }

    
    /**
     * @param createDate the createDate to set
     */
    public void setCreateDate(String createDate) {
    
        this.createDate = createDate;
    }

    
    /**
     * @return the updateUser
     */
    public String getUpdateUser() {
    
        return updateUser;
    }

    
    /**
     * @param updateUser the updateUser to set
     */
    public void setUpdateUser(String updateUser) {
    
        this.updateUser = updateUser;
    }

    
    /**
     * @return the updateDate
     */
    public String getUpdateDate() {
    
        return updateDate;
    }

    /**
     * @param updateDate the updateDate to set
     */
    public void setUpdateDate(String updateDate) {
    
        this.updateDate = updateDate;
    }

    /**
     * @return the createName
     */
    public String getCreateName() {
    
        return createName;
    }
    
    /**
     * @param createName the createName to set
     */
    public void setCreateName(String createName) {
    
        this.createName = createName;
    }
    
    /**
     * @return the updateName
     */
    public String getUpdateName() {
    
        return updateName;
    }

    /**
     * @param updateName the updateName to set
     */
    public void setUpdateName(String updateName) {
    
        this.updateName = updateName;
    }

    public void clearError() {

        this.errInt = 0;
        this.errHex = "0";
        this.errStr = "";
        this.errMsg = "";
    }
    
    public void setError(ObjectBase rhs) {
        if (null == rhs) {
            clearError();
        } else {
            this.errInt = rhs.errInt;
            this.errHex = rhs.errHex;
            this.errStr = rhs.errStr;
            this.errMsg = rhs.errMsg;
        }
    }
    
    public void setError(Integer errInt, String errHex, String errStr) {

        this.errInt = errInt;
        this.errHex = errHex;
        this.errStr = errStr;
        this.errMsg = "";
    }
    
    public void setError(Integer errInt, String errHex, String errStr, String errMsg) {

        this.errInt = errInt;
        this.errHex = errHex;
        this.errStr = errStr;
        this.errMsg = errMsg;
    }

    public String getSearchVal() {

        return searchVal;
    }

    public void setSearchVal(String searchVal) {

        this.searchVal = searchVal;
    }

    public String getSearchKey() {

        return searchKey;
    }

    public void setSearchKey(String searchKey) {

        this.searchKey = searchKey;
    }

    /**
     * @return the mode
     */
    public String getMode() {

        return mode;
    }

    /**
     * @param mode the mode to set
     */
    public void setMode(String mode) {

        this.mode = mode;
    }

    /**
     * @return the pageId
     */
    public String getPageId() {

        return pageId;
    }

    /**
     * @param pageId the pageId to set
     */
    public void setPageId(String pageId) {

        this.pageId = pageId;
    }

    /**
     * @return the loginId
     */
    public String getLoginId() {
    
        return loginId;
    }
    
    /**
     * @param loginId the loginId to set
     */
    public void setLoginId(String loginId) {
    
        this.loginId = loginId;
    }

    
    /**
     * @return the isClosed
     */
    public Integer getIsClosed() {
    
        return isClosed;
    }

    
    /**
     * @param isClosed the isClosed to set
     */
    public void setIsClosed(Integer isClosed) {
    
        this.isClosed = isClosed;
    }
}
