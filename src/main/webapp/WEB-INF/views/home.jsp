<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>${SYS_NAME}</title>
    <c:import url="/GlobalPageLink.do?link=common/include/GlobalHeader" />
</head>
<body>
    <h1>Home PAGE</h1>

    <P>    The time on the server is ${serverTime}.</P>
    <P>Selectt time on the server is ${selectTime}.</P>

    <a href="${CTX_PATH}/sign">sign</a>
    <a href="${CTX_PATH}/material">material</a>

<%--     <c:import url="/GlobalPageLink.do?link=common/include/GlobalFooter" /> --%>
</body>
</html>
