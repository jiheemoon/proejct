<%--
  Class Name : LeftSideMenu.jsp
  Description : 좌측메뉴(include)
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
    <%--
    <!-- User Info -->
    <div class="user-info">
        <div class="info-container">
            <div class="name">${USER.userNm}</div>
            <div class="btn-group user-helper-dropdown">
                <i class="material-icons" data-toggle="dropdown" aria-haspopup="true">more_vert</i>
<!--                 <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> -->
<!--                     <i class="material-icons">more_vert</i> -->
<!--                 </a> -->
                <ul class="dropdown-menu pull-right">
                    <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">input</i>Sign Out</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- #User Info -->
    --%>
    <!-- Menu -->
    <div class="menu">
        <ul class="list" id="leftSideMenuBar">
            <li><!-- <li class="header">MAIN NAVIGATION</li> --></li>
        </ul>
    </div>
    <!-- #Menu -->
    <!-- Footer -->
    <div class="legal">
        <!-- <div class="copyright">&copy; 2020 <a href="javascript:void(0);">HaesolData Co., Ltd.</a></div> -->
        <div class="version col-grey"><b>${SYS_NAME}</b>&nbsp;&nbsp;&nbsp;<b>Version:</b>&nbsp;${SYS_VERSION}</div>
    </div>
    <!-- #Footer -->
</aside>
<!-- #END# Left Sidebar -->
