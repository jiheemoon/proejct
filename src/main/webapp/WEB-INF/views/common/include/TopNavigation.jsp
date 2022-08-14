<%--
  Class Name : TopNavigation.jsp
  Description : TopNavigation
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="page-loading"><div class="loader"><div class="circle"></div></div></div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>
<!-- #END# Overlay For Sidebars -->

<div class="popup-dark popup-hide"></div>

<!-- Search Bar -->
<!-- <div class="search-bar"> -->
<!--     <div class="search-icon"> -->
<!--         <i class="material-icons md-24">search</i> -->
<!--     </div> -->
<!--     <input type="text" placeholder="Search..."> -->
<!--     <div class="close-search"> -->
<!--         <i class="material-icons md-24">close</i> -->
<!--     </div> -->
<!-- </div> -->
<!-- #END# Search Bar -->

<!-- Top Bar -->
<nav class="navbar">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
            <a href="javascript:void(0);" class="bars"></a>
            <a class="navbar-brand" href="${CTX_PATH}/">${SYS_NAME}</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <%--
                <!-- Call Search -->
                <!-- <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons md-24">search</i></a></li> -->
                <!-- #END# Call Search -->
                <!-- BizMessage -->
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
                        <i class="material-icons md-24">message</i>
                        <span class="label-count">10</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">새로운 쪽지</li>
                        <li class="body">
                            <ul class="menu">
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="icon-circle bg-light-green">
                                            <i class="material-icons">message</i>
                                        </div>
                                        <div class="menu-info">
                                            <h4>아이콘은 32x32 캐리커쳐 넣을 건데 왜 개행되는지, 높이조정도 해야함.</h4>
                                            <p>
                                                <i class="material-icons">access_time</i> 2020-01-01 12:34
                                            </p>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer">
                            <a href="${CTX_PATH}/message/">받은 쪽지함 바로가기</a>
                        </li>
                    </ul>
                </li>
                <!-- #END# BizMessage -->
                <!-- Notifications -->
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
                        <i class="material-icons md-24">notifications</i>
                        <span class="label-count">7</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">NOTIFICATIONS</li>
                        <li class="body">
                            <ul class="menu">
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="icon-circle bg-light-green">
                                            <i class="material-icons">person_add</i>
                                        </div>
                                        <div class="menu-info">
                                            <h4>12 new members joined</h4>
                                            <p>
                                                <i class="material-icons">access_time</i> 14 mins ago
                                            </p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="icon-circle bg-cyan">
                                            <i class="material-icons">add_shopping_cart</i>
                                        </div>
                                        <div class="menu-info">
                                            <h4>4 sales made</h4>
                                            <p>
                                                <i class="material-icons">access_time</i> 22 mins ago
                                            </p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="icon-circle bg-red">
                                            <i class="material-icons">delete_forever</i>
                                        </div>
                                        <div class="menu-info">
                                            <h4><b>Nancy Doe</b> deleted account</h4>
                                            <p>
                                                <i class="material-icons">access_time</i> 3 hours ago
                                            </p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="icon-circle bg-orange">
                                            <i class="material-icons">mode_edit</i>
                                        </div>
                                        <div class="menu-info">
                                            <h4><b>Nancy</b> changed name</h4>
                                            <p>
                                                <i class="material-icons">access_time</i> 2 hours ago
                                            </p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="icon-circle bg-blue-grey">
                                            <i class="material-icons">comment</i>
                                        </div>
                                        <div class="menu-info">
                                            <h4><b>John</b> commented your post</h4>
                                            <p>
                                                <i class="material-icons">access_time</i> 4 hours ago
                                            </p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="icon-circle bg-light-green">
                                            <i class="material-icons">cached</i>
                                        </div>
                                        <div class="menu-info">
                                            <h4><b>John</b> updated status</h4>
                                            <p>
                                                <i class="material-icons">access_time</i> 3 hours ago
                                            </p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <div class="icon-circle bg-purple">
                                            <i class="material-icons">settings</i>
                                        </div>
                                        <div class="menu-info">
                                            <h4>Settings updated</h4>
                                            <p>
                                                <i class="material-icons">access_time</i> Yesterday
                                            </p>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer">
                            <a href="javascript:void(0);">View All Notifications</a>
                        </li>
                    </ul>
                </li>
                <!-- #END# Notifications -->
                <!-- Tasks -->
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
                        <i class="material-icons md-24">flag</i>
                        <span class="label-count">9</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">TASKS</li>
                        <li class="body">
                            <ul class="menu tasks">
                                <li>
                                    <a href="javascript:void(0);">
                                        <h4>
                                            Footer display issue
                                            <small>32%</small>
                                        </h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-pink" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 32%">
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <h4>
                                            Make new buttons
                                            <small>45%</small>
                                        </h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-cyan" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <h4>
                                            Create new dashboard
                                            <small>54%</small>
                                        </h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-teal" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 54%">
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <h4>
                                            Solve transition issue
                                            <small>65%</small>
                                        </h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-orange" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <h4>
                                            Answer GitHub questions
                                            <small>92%</small>
                                        </h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-purple" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 92%">
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer">
                            <a href="javascript:void(0);">View All Tasks</a>
                        </li>
                    </ul>
                </li>
                <!-- #END# Tasks -->
                <!-- user -->
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
                        <i class="material-icons md-24">person</i>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">MY PAGE</li>
                        <sec:authorize access="isAuthenticated()">
                        <li class="body" style="height: 101px !important;">
                            <ul class="menu" style="height: 101px !important;">
                                <li><a href="${CTX_PATH}/logout">
                                    <div class="icon-circle bg-light-green"><i class="material-icons">offline_pin</i></div>
                                    <div class="menu-text"><h6>로그아웃</h6></div>
                                </a></li>
                                <li><a href="javascript:changePwPop();">
                                    <div class="icon-circle bg-orange">
                                        <i class="material-icons">settings</i>
                                    </div>
                                    <div class="menu-text"><h6>비밀번호 변경</h6></div>
                                </a></li>
                            </ul>
                        </li>
                        </sec:authorize>
                        <sec:authorize access="isAnonymous()">    
                        <li class="body" style="height: 51px !important;">
                            <ul class="menu" style="height: 51px !important;">
                                <li><a href="${CTX_PATH}/loginPage">
                                    <div class="icon-circle bg-light-green"><i class="material-icons">offline_pin</i></div>
                                    <div class="menu-text"><h6>로그인</h6></div>
                                </a></li>
                            </ul>
                        </li>
                        </sec:authorize>
                        <li class="footer">
                            <sec:authorize access="hasAnyRole('ROLE_ADMIN')"><a href="javascript:void(0);">관리자 페이지로</a></sec:authorize>
                        </li>
                    </ul>
                </li>
                <!-- #END# user -->
                --%>
                
                <sec:authorize access="isAuthenticated()">
                <li>
                    <img src="${CTX_PATH}/images/image-user-80/${USER.userId}.png" onerror="this.src='${CTX_PATH}/images/no_image_80.png'" title="${USER.userNm}" />
                </li>
                <li id="myRecvCountText">
                    <a href="${CTX_PATH}/message/">
                        <i class="material-icons md-24">message</i>
                        <span class="label-count" id="myRecvCountSpan">0</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);" onclick="logout();">
                        <i class="material-icons md-24" title="로그아웃">power_settings_new</i>
                    </a>
                </li>
                </sec:authorize>
                <!-- <li class="pull-right"> -->
                <!--     <a href="javascript:void(0);" class="js-right-sidebar" data-close="true"> -->
                <!--         <i class="material-icons md-24">more_vert</i> -->
                <!--     </a> -->
                <!-- </li> -->
            </ul>
        </div>
    </div>
    <div class="breadcrumb">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="breadcrumb breadcrumb-theme" id="breadcrumb">
                <ol>
                    <li><a href="javascript:void(0);">Home</a></li>
                </ol>
            </div>
        </div>
        <!-- <div class="col-lg-9 col-md-9 col-sm-9"> -->
        <!--     <div class="breadcrumb breadcrumb-theme" id="breadcrumb"> -->
        <!--         <ol> -->
        <!--             <li><a href="javascript:void(0);">Home</a></li> -->
        <!--         </ol> -->
        <!--     </div> -->
        <!-- </div> -->
        <!-- <div class="col-lg-3 col-md-3 col-sm-3 align-right"> -->
        <%--     <sec:authorize access="isAuthenticated()">${USER.deptNm}&nbsp;${USER.userNm}&nbsp;${USER.positionNm}님&nbsp;</sec:authorize> --%>
        <!-- </div> -->
    </div>
</nav>
<!-- #Top Bar -->

<script type="text/javascript">
$(document).ready(function() {
    //
    $.eHaesol.json.post({
        url: "${CTX_PATH}/TopNavigationData.do",
        done: function(data, stat) {
            //$.LOGGER.debug('data', data);
            var myRecvCount = data * 1;
            if (0 < myRecvCount) {
                var message = myRecvCount + '건의 새로운 쪽지가 도착하였습니다.';
                $('#myRecvCountSpan').text(myRecvCount + '');
                $.eHaesol.notify.tooltip({ id: 'myRecvCountText', message: message });
                $.eHaesol.notify.popup({ message: message, icon: 'markunread', href: '${CTX_PATH}/message/' });
            } else {
                $('#myRecvCountSpan').text('');
            }
        }
    });
});

function logout() {
    
    if (confirm('로그아웃 하시겠습니까?')) {
        var cookieKey = 'iNetCare-CRM';
        $.removeCookie(cookieKey);
        location.href = '${CTX_PATH}/logout';
    }
}
</script>