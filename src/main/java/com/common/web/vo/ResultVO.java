package com.common.web.vo;

public class ResultVO extends ValueObject {

    private static final long serialVersionUID = -1037696899025020275L;
    
    private int errInt;
    private String errStr;
    private String errMsg;
    private String errHex;
    private int identity;
    private String stringId;

    public ResultVO() {
        
        this(0, "", "");
    }

    public ResultVO(String errStr) {
        
        this(0, errStr, "");
    }

    public ResultVO(int errInt, String errStr) {

        this(errInt, errStr, "");
    }

    public ResultVO(int errInt, String errStr, String errMsg) {
        
        this.errInt = errInt;
        this.errStr = errStr;
        this.errMsg = errMsg;
    }

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
     * @return the stringId
     */
    public String getStringId() {
    
        return stringId;
    }

    /**
     * @param stringId the stringId to set
     */
    public void setStringId(String stringId) {
    
        this.stringId = stringId;
    }

    /**
     * @return the errHex
     */
    public String getErrHex() {

        return errHex;
    }

    /**
     * @param errHex the errHex to set
     */
    public void setErrHex(String errHex) {

        this.errHex = errHex;
    }
}
