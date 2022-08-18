<!--// GlobaFooter -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- <div class="pageUp"> -->
<!--     <a href="#" title="맨위로"><i class="material-icons">arrow_upward</i></a> -->
<!-- </div> -->

<!-- Javascript plugins/jquery/jquery.js -->
<!-- Jquery Core Js -->
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery/jquery.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery/jquery.min.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/momentjs/moment.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/momentjs/moment-with-locales.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/js-logger/logger.min.js?v=${SYS_VERSION}"></script>

<script type="text/javascript" src="${CTX_PATH}/js/jquery-logger.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/js/jquery-common.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/js/jquery-post.js?v=${SYS_VERSION}"></script> --%>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-ui/jquery-ui.min.js?v=${SYS_VERSION}" ></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-cookie/jquery.cookie.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-slimscroll/jquery.slimscroll.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-spinner/js/jquery.spinner.js?v=${SYS_VERSION}"></script>
<!-- Bootstrap Core Js -->
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap/js/bootstrap.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-notify/bootstrap-notify.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-select/js/bootstrap-select.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-treeview/bootstrap-treeview-patternfly.js?v=${SYS_VERSION}"></script> --%>
<%-- <script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-datepicker-air/js/datepicker.js?v=${SYS_VERSION}"></script> --%>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/node-waves/waves.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/waitme/waitMe.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/plugins/sweetalert/sweetalert.js?v=${SYS_VERSION}"></script> --%>
<%-- <script type="text/javascript" src="${CTX_PATH}/plugins/clipboard/clipboard.js?v=${SYS_VERSION}"></script> --%>
<script type="text/javascript" src="${CTX_PATH}/plugins/autosize/autosize.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/multi-select/js/jquery.multi-select.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/plugins/jquery-autoNumeric/autoNumeric.js?v=${SYS_VERSION}"></script> --%>
<script type="text/javascript" src="${CTX_PATH}/js/pages/forms/basic-form-elements.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/js/pages/tables/jquery-table-select.js?v=${SYS_VERSION}"></script> --%>
<!-- Custom Js -->
<%-- <script type="text/javascript" src="${CTX_PATH}/js/jquery-ie.js?v=${SYS_VERSION}"></script> --%>
<%-- <script type="text/javascript" src="${CTX_PATH}/js/jquery-skin.js?v=${SYS_VERSION}"></script> --%>
<%-- <script type="text/javascript" src="${CTX_PATH}/js/jquery-main.js?v=${SYS_VERSION}"></script> --%>

<!-- Custom Js -->
<script type="text/javascript" src="${CTX_PATH}/js/moon.js?v=${SYS_VERSION}"></script>
<!-- Demo Js -->
<script type="text/javascript" src="${CTX_PATH}/js/demo.js?v=${SYS_VERSION}"></script>

<script type="text/javascript">
$(document).ready(function() {
    window.CTX_PATH = '${CTX_PATH}';
    moment.locale('ko');
    //$.eHaesol.menu.leftMenu('${CTX_PATH}', '${CTL_PATH}');
    //window.onload = function() {
    //    $.eHaesol.page.loaded();
    //}
    <!-- MenuTree -->
	$.MOON.leftSideBar.init('${CTX_PATH}','${CTL_PATH}');

	var existTheme = $('body').attr('class');
	$('.right-sidebar .demo-choose-skin li').each(function () {
        if('theme-' + $(this).data('theme') === existTheme) $(this).addClass('active'); 
    });
});
</script>
<!-- GlobaFooter //-->