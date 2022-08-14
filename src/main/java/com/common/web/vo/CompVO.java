package com.common.web.vo;


public class CompVO extends ObjectBase {

    private static final long serialVersionUID = -5676225005119185156L;

    public CompVO() {
        
        super();
    }
    
    public CompVO(int compId) {

        super();
        this.compId = compId;
    }

    private Integer histId;
    private String histNm;
    private Integer dataId;
    private String dataNm;
    private int compId;
    private String compNm;
    private String telephone;
    private String faxnumber;

    
    /**
     * @return the histId
     */
    public Integer getHistId() {
    
        return histId;
    }

    
    /**
     * @param histId the histId to set
     */
    public void setHistId(Integer histId) {
    
        this.histId = histId;
    }

    
    /**
     * @return the histNm
     */
    public String getHistNm() {
    
        return histNm;
    }

    
    /**
     * @param histNm the histNm to set
     */
    public void setHistNm(String histNm) {
    
        this.histNm = histNm;
    }

    
    /**
     * @return the dataId
     */
    public Integer getDataId() {
    
        return dataId;
    }

    
    /**
     * @param dataId the dataId to set
     */
    public void setDataId(Integer dataId) {
    
        this.dataId = dataId;
    }

    
    /**
     * @return the dataNm
     */
    public String getDataNm() {
    
        return dataNm;
    }

    
    /**
     * @param dataNm the dataNm to set
     */
    public void setDataNm(String dataNm) {
    
        this.dataNm = dataNm;
    }

    
    /**
     * @return the compId
     */
    public int getCompId() {
    
        return compId;
    }

    
    /**
     * @param compId the compId to set
     */
    public void setCompId(int compId) {
    
        this.compId = compId;
    }

    
    /**
     * @return the compNm
     */
    public String getCompNm() {
    
        return compNm;
    }

    
    /**
     * @param compNm the compNm to set
     */
    public void setCompNm(String compNm) {
    
        this.compNm = compNm;
    }

    
    /**
     * @return the telephone
     */
    public String getTelephone() {
    
        return telephone;
    }

    
    /**
     * @param telephone the telephone to set
     */
    public void setTelephone(String telephone) {
    
        this.telephone = telephone;
    }

    
    /**
     * @return the faxnumber
     */
    public String getFaxnumber() {
    
        return faxnumber;
    }

    
    /**
     * @param faxnumber the faxnumber to set
     */
    public void setFaxnumber(String faxnumber) {
    
        this.faxnumber = faxnumber;
    }
}
