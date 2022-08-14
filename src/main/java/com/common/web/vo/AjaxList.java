package com.common.web.vo;

import java.util.List;

public class AjaxList<T> extends ObjectBase {

    private static final long serialVersionUID = -7959933793252614770L;

    public AjaxList() {
        //
    }

    private T object;
    private List<T> result;

    
    /**
     * @return the object
     */
    public T getObject() {
    
        return object;
    }
    
    /**
     * @param object the object to set
     */
    public void setObject(T object) {
    
        this.object = object;
    }
    
    /**
     * @return the result
     */
    public List<T> getResult() {
    
        return result;
    }
    
    /**
     * @param result the result to set
     */
    public void setResult(List<T> result) {
    
        this.result = result;
    }
}
