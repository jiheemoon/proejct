<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>${SYS_NAME}</title>
    
    <c:import url="/GlobalPageLink.do?link=common/include/GlobalHeader" />
    
</head>

<body class="four-zero-four">
    <div class="four-zero-four-container">
        <div class="error-code">404</div>
        <div class="error-message">This page doesn't exist</div>
        <div class="button-place">
            <a href="${CTX_PATH}/material/" class="btn btn-default btn-lg waves-effect">GO TO HOMEPAGE</a>
        </div>
    </div>

    <c:import url="/GlobalPageLink.do?link=common/include/GlobalFooter" />

    <!-- Bootstrap Core Js -->
    <script src="${CTX_PATH}/plugins/bootstrap/js/bootstrap.js?v=${SYS_VERSION}"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="${CTX_PATH}/plugins/node-waves/waves.js?v=${SYS_VERSION}"></script>
</body>

</html>