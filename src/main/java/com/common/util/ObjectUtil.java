package com.common.util;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ObjectUtil {

    public static Map<String, Object> convertObjectToMap(Class<?> beanClass, Object bean) {

        Map<String, Object> objectAsMap = new HashMap<String, Object>();
        try {
            BeanInfo info = Introspector.getBeanInfo(beanClass);
            for (PropertyDescriptor pd : info.getPropertyDescriptors()) {
                Method reader = pd.getReadMethod();
                if (null != reader) {
                    objectAsMap.put(pd.getName(), reader.invoke(bean));
                }
            }
        } catch (IntrospectionException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (objectAsMap);
    }

    /**
     * Object type 변수가 비어있는지 체크
     * 
     * @param obj 
     * @return Boolean : true / false
     */
    public static Boolean isEmpty(Object obj) {
        
        if (obj instanceof String) {
            return obj == null || "".equals(obj.toString().trim());
        } else if (obj instanceof List) {
            return obj == null || ((List<?>) obj).isEmpty();
        } else if (obj instanceof Map) {
            return obj == null || ((Map<?, ?>) obj).isEmpty();
        } else if (obj instanceof Object[]) {
            return obj == null || Array.getLength(obj) == 0;
        } else {
            return obj == null;
        }
    }
}