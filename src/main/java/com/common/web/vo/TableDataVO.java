package com.common.web.vo;


public class TableDataVO extends ObjectBase {

    private static final long serialVersionUID = -6779306260646455188L;

    public TableDataVO() {
        
    }

    private Integer dataId;
    private String dataNm;
    private Integer compId;
    private String compNm;
    private Integer histId;
    private String histNm;
    private String remarks;

    
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
    public Integer getCompId() {
    
        return compId;
    }
    
    /**
     * @param compId the compId to set
     */
    public void setCompId(Integer compId) {
    
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
}
