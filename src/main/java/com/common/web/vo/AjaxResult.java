package com.common.web.vo;

public class AjaxResult extends ValueObject {

    private static final long serialVersionUID = -7620168533263398925L;

    public AjaxResult() {
        
        super();
    }
    
    public AjaxResult(int errInt, String errStr) {

        this.errInt = errInt;
        this.errStr = errStr;
    }
    
    public AjaxResult(int errInt, String errStr, String errMsg) {

        this.errInt = errInt;
        this.errStr = errStr;
        this.errMsg = errMsg;
    }
    
    public void setError(int errInt, String errStr) {

        this.errInt = errInt;
        this.errStr = errStr;
    }
    
    public void setError(int errInt, String errStr, String errMsg) {

        this.errInt = errInt;
        this.errStr = errStr;
        this.errMsg = errMsg;
    }

    private int errInt;
    private String errStr;
    private String errMsg;
    private int identity;
    private String mode;
    private String returnUrl;
    private String requestUrl;
    private Object object;
    
    /**
     * @return the errInt
     */
    public int getErrInt() {
    
        return errInt;
    }

    
    /**
     * @param errInt the errInt to set
     */
    public void setErrInt(int errInt) {
    
        this.errInt = errInt;
    }

    
    /**
     * @return the errStr
     */
    public String getErrStr() {
    
        return errStr;
    }

    
    /**
     * @param errStr the errStr to set
     */
    public void setErrStr(String errStr) {
    
        this.errStr = errStr;
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
     * @return the identity
     */
    public int getIdentity() {
    
        return identity;
    }
    
    /**
     * @param identity the identity to set
     */
    public void setIdentity(int identity) {
    
        this.identity = identity;
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
     * @return the returnUrl
     */
    public String getReturnUrl() {
    
        return returnUrl;
    }
    
    /**
     * @param returnUrl the returnUrl to set
     */
    public void setReturnUrl(String returnUrl) {
    
        this.returnUrl = returnUrl;
    }
    
    /**
     * @return the requestUrl
     */
    public String getRequestUrl() {
    
        return requestUrl;
    }

    /**
     * @param requestUrl the requestUrl to set
     */
    public void setRequestUrl(String requestUrl) {
    
        this.requestUrl = requestUrl;
    }

    
    /**
     * @return the object
     */
    public Object getObject() {
    
        return object;
    }

    
    /**
     * @param object the object to set
     */
    public void setObject(Object object) {
    
        this.object = object;
    }
    
    
}
