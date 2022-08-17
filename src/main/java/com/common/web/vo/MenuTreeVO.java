package com.common.web.vo;

public class MenuTreeVO extends ObjectBase {
    
    /**
     * 
     */
    private static final long serialVersionUID = 2408833022176456660L;

    public MenuTreeVO() {
        //
    }
    
    private String menuId;
    private String menuNm;
    private String menuPid;
    private String menuUrl;
    private String menuIcon;
    private Integer dispNo;
    private String dispYn;
    private String useYn;
    
    private String menuPath;
    private Integer menuStep;
    private String fullPath;
    private String isActive;
    private String isMenu;
    private String isLeaf;
    private String roleNo;
    private String roleNm;
    
    /**
     * @return the menuId
     */
    public String getMenuId() {
    
        return menuId;
    }
    
    /**
     * @param menuId the menuId to set
     */
    public void setMenuId(String menuId) {
    
        this.menuId = menuId;
    }
    
    /**
     * @return the menuNm
     */
    public String getMenuNm() {
    
        return menuNm;
    }
    
    /**
     * @param menuNm the menuNm to set
     */
    public void setMenuNm(String menuNm) {
    
        this.menuNm = menuNm;
    }
    
    /**
     * @return the menuPid
     */
    public String getMenuPid() {
    
        return menuPid;
    }
    
    /**
     * @param menuPid the menuPid to set
     */
    public void setMenuPid(String menuPid) {
    
        this.menuPid = menuPid;
    }
    
    /**
     * @return the menuUrl
     */
    public String getMenuUrl() {
    
        return menuUrl;
    }
    
    /**
     * @param menuUrl the menuUrl to set
     */
    public void setMenuUrl(String menuUrl) {
    
        this.menuUrl = menuUrl;
    }
    
    /**
     * @return the menuIcon
     */
    public String getMenuIcon() {
    
        return menuIcon;
    }
    
    /**
     * @param menuIcon the menuIcon to set
     */
    public void setMenuIcon(String menuIcon) {
    
        this.menuIcon = menuIcon;
    }
    
    /**
     * @return the menuPath
     */
    public String getMenuPath() {
    
        return menuPath;
    }
    
    /**
     * @param menuPath the menuPath to set
     */
    public void setMenuPath(String menuPath) {
    
        this.menuPath = menuPath;
    }
    
    /**
     * @return the menuStep
     */
    public Integer getMenuStep() {
    
        return menuStep;
    }
    
    /**
     * @param menuStep the menuStep to set
     */
    public void setMenuStep(Integer menuStep) {
    
        this.menuStep = menuStep;
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
    
    /**
     * @return the isActive
     */
    public String getIsActive() {
    
        return isActive;
    }
    
    /**
     * @param isActive the isActive to set
     */
    public void setIsActive(String isActive) {
    
        this.isActive = isActive;
    }
    
    /**
     * @return the isMenu
     */
    public String getIsMenu() {
    
        return isMenu;
    }
    
    /**
     * @param isMenu the isMenu to set
     */
    public void setIsMenu(String isMenu) {
    
        this.isMenu = isMenu;
    }
    
    /**
     * @return the isLeaf
     */
    public String getIsLeaf() {
    
        return isLeaf;
    }
    
    /**
     * @param isLeaf the isLeaf to set
     */
    public void setIsLeaf(String isLeaf) {
    
        this.isLeaf = isLeaf;
    }
    
    /**
     * @return the dispYn
     */
    public String getDispYn() {
    
        return dispYn;
    }
    
    /**
     * @param dispYn the dispYn to set
     */
    public void setDispYn(String dispYn) {
    
        this.dispYn = dispYn;
    }
    
    /**
     * @return the dispNo
     */
    public Integer getDispNo() {
    
        return dispNo;
    }
    
    /**
     * @param dispNo the dispNo to set
     */
    public void setDispNo(Integer dispNo) {
    
        this.dispNo = dispNo;
    }
    
    /**
     * @return the roleNo
     */
    public String getRoleNo() {
    
        return roleNo;
    }
    
    /**
     * @param roleNo the roleNo to set
     */
    public void setRoleNo(String roleNo) {
    
        this.roleNo = roleNo;
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