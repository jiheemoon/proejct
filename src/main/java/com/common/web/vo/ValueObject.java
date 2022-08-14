package com.common.web.vo;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

public class ValueObject implements Serializable {

    private static final long serialVersionUID = 9162192379955552948L;

    @Override
    public String toString() {

        return ToStringBuilder.reflectionToString(this);
    }

}