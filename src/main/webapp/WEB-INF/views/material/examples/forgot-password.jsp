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

<body class="fp-page">
    <div class="fp-box">
        <div class="logo">
            <a href="javascript:void(0);">${SYS_NAME}</a>
            <small>${SYS_DESC}</small>
        </div>
        <div class="card">
            <div class="body">
                <form id="forgot_password" method="POST">
                    <div class="msg">
                        Enter your email address that you used to register. We'll send you an email with your username and a
                        link to reset your password.
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">email</i>
                        </span>
                        <div class="form-line">
                            <input type="email" class="form-control" name="email" placeholder="Email" required autofocus>
                        </div>
                    </div>

                    <button class="btn btn-block btn-lg bg-pink waves-effect" type="submit">RESET MY PASSWORD</button>

                    <div class="row m-t-20 m-b--5 align-center">
                        <a href="sign-in.html">Sign In</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <c:import url="/GlobalPageLink.do?link=common/include/GlobalFooter" />

    <!-- Validation Plugin Js -->
    <script src="${CTX_PATH}/plugins/jquery-validation/jquery.validate.js?v=${SYS_VERSION}"></script>

    <script src="${CTX_PATH}/js/material/examples/forgot-password.js?v=${SYS_VERSION}"></script>
    
</body>

</html>