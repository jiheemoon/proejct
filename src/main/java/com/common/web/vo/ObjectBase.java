package com.common.web.vo;

public class ObjectBase extends PagerVO {

    /**
     * 
     */
    private static final long serialVersionUID = 7055269890561997041L;

    private String mode;
    
    private int errInt;
    private String errHex;
    private String errStr;
    private String errMsg;
    
    private String createUser;
    private String createName;
    private String createDate;
    private String updateUser;
    private String updateName;
    private String updateDate;
    private String useYn;

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
     * @return the useYn
     */
    public String getUseYn() {
    
        return useYn;
    }

    
    /**
     * @param useYn the useYn to set
     */
    public void setUseYn(String useYn) {
    
        this.useYn = useYn;
    }

}
