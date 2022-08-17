package com.common.web.vo;


public class DeptVO extends CompVO {

    private static final long serialVersionUID = -1272856397808393218L;

    private int termId;
    
    private String deptId;
    private String deptIdOld;
    private String deptNm;
    private String deptPid;
    private String deptPnm;
    private String deptUid;
    private int deptSeq;
    
    private String deptStep;
    private String deptSort;
    private String deptPath; // 부서경로
    private String fullPath; // 조직도 포함경로
    
    public DeptVO() {
        // 
    }
    
    public DeptVO(int compId) {
        this.setCompId(compId);
    }
    
    public DeptVO(String deptId) {
        this.deptId = deptId;
    }

    public DeptVO(int compId, Integer dataId) {
        this.setCompId(compId);
        this.setDataId(dataId);
    }

    public DeptVO(int compId, String deptPnm, String deptNm, String deptPath) {
        this.setCompId(compId);
        this.deptPnm = deptPnm;
        this.deptNm = deptNm;
        this.deptPath = deptPath;
    }
    
    public DeptVO(int compId, String deptId, String deptNm) {
        this.setCompId(compId);
        this.deptId = deptId;
        this.deptNm = deptNm;
    }

    public DeptVO(int compId, String deptId, String deptNm, String deptPid, String deptUid, int deptSeq, String createUser) {
        this.setCompId(compId);
        this.deptId = deptId;
        this.deptNm = deptNm;
        this.deptPid = deptPid;
        this.deptUid = deptUid;
        this.deptSeq = deptSeq;
        this.setCreateUser(createUser);
    }

    /**
     * @return the termId
     */
    public int getTermId() {
    
        return termId;
    }
    
    /**
     * @param termId the termId to set
     */
    public void setTermId(int termId) {
    
        this.termId = termId;
    }
    
    /**
     * @return the deptId
     */
    public String getDeptId() {
    
        return deptId;
    }
    
    /**
     * @param deptId the deptId to set
     */
    public void setDeptId(String deptId) {
    
        this.deptId = deptId;
    }
    
    
    /**
     * @return the deptIdOld
     */
    public String getDeptIdOld() {
    
        return deptIdOld;
    }
    
    /**
     * @param deptIdOld the deptIdOld to set
     */
    public void setDeptIdOld(String deptIdOld) {
    
        this.deptIdOld = deptIdOld;
    }

    /**
     * @return the deptNm
     */
    public String getDeptNm() {
    
        return deptNm;
    }
    
    /**
     * @param deptNm the deptNm to set
     */
    public void setDeptNm(String deptNm) {
    
        this.deptNm = deptNm;
    }
    
    /**
     * @return the deptPid
     */
    public String getDeptPid() {
    
        return deptPid;
    }
    
    /**
     * @param deptPid the deptPid to set
     */
    public void setDeptPid(String deptPid) {
    
        this.deptPid = deptPid;
    }
    
    /**
     * @return the deptPnm
     */
    public String getDeptPnm() {
    
        return deptPnm;
    }

    
    /**
     * @param deptPnm the deptPnm to set
     */
    public void setDeptPnm(String deptPnm) {
    
        this.deptPnm = deptPnm;
    }

    /**
     * @return the deptUid
     */
    public String getDeptUid() {
    
        return deptUid;
    }
    
    /**
     * @param deptUid the deptUid to set
     */
    public void setDeptUid(String deptUid) {
    
        this.deptUid = deptUid;
    }
    
    /**
     * @return the deptSeq
     */
    public int getDeptSeq() {
    
        return deptSeq;
    }
    
    /**
     * @param deptSeq the deptSeq to set
     */
    public void setDeptSeq(int deptSeq) {
    
        this.deptSeq = deptSeq;
    }
    
    /**
     * @return the deptStep
     */
    public String getDeptStep() {
    
        return deptStep;
    }
    
    /**
     * @param deptStep the deptStep to set
     */
    public void setDeptStep(String deptStep) {
    
        this.deptStep = deptStep;
    }
    
    /**
     * @return the deptSort
     */
    public String getDeptSort() {
    
        return deptSort;
    }

    /**
     * @param deptSort the deptSort to set
     */
    public void setDeptSort(String deptSort) {
    
        this.deptSort = deptSort;
    }

    /**
     * @return the deptPath
     */
    public String getDeptPath() {
    
        return deptPath;
    }
    
    /**
     * @param deptPath the deptPath to set
     */
    public void setDeptPath(String deptPath) {
    
        this.deptPath = deptPath;
    }

    
    /**
     * @return the fullPath
     */
    public String getFullPath() {
    
        return fullPath;
    }

    
    /**
     * @param fullPath the fullPath to set
     */
    public void setFullPath(String fullPath) {
    
        this.fullPath = fullPath;
    }
    
}
