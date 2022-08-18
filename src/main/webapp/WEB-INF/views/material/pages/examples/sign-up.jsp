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

<body class="signup-page">
    <div class="signup-box">
        <div class="logo">
            <a href="javascript:void(0);">${SYS_NAME}</a>
            <small>${SYS_DESC}</small>
        </div>
        <div class="card">
            <div class="body">
                <form id="sign_up" method="POST">
                    <div class="msg">Register a new membership</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input type="text" class="form-control" name="namesurname" placeholder="Name Surname" required autofocus>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">email</i>
                        </span>
                        <div class="form-line">
                            <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input type="password" class="form-control" name="password" minlength="6" placeholder="Password" required>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input type="password" class="form-control" name="confirm" minlength="6" placeholder="Confirm Password" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="terms" id="terms" class="filled-in chk-col-pink">
                        <label for="terms">I read and agree to the <a href="javascript:void(0);">terms of usage</a>.</label>
                    </div>

                    <button class="btn btn-block btn-lg bg-pink waves-effect" type="submit">SIGN UP</button>

                    <div class="m-t-25 m-b--5 align-center">
                        <a href="${CTX_PATH}/material/menu?menuUrl=sign-in.do">You already have a membership?</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <c:import url="/GlobalPageLink.do?link=common/include/GlobalFooter" />

    <!-- Bootstrap Core Js -->
    <script src="${CTX_PATH}/plugins/bootstrap/js/bootstrap.js?v=${SYS_VERSION}"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="${CTX_PATH}/plugins/node-waves/waves.js?v=${SYS_VERSION}"></script>

    <!-- Validation Plugin Js -->
    <script src="${CTX_PATH}/plugins/jquery-validation/jquery.validate.js?v=${SYS_VERSION}"></script>

    <!-- Custom Js -->
    <script src="${CTX_PATH}/js/moon.js?v=${SYS_VERSION}"></script>
    <script src="${CTX_PATH}/js/pages/examples/sign-up.js?v=${SYS_VERSION}"></script>
</body>

</html>