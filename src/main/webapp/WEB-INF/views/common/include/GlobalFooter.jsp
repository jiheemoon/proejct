<!--// GlobaFooter -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- <div class="pageUp"> -->
<!--     <a href="#" title="맨위로"><i class="material-icons">arrow_upward</i></a> -->
<!-- </div> -->

<!-- Jquery Core Js -->
<script type="text/javascript" src="${CTX_PATH}/material/plugins/jquery/jquery.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/jquery/jquery.min.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/momentjs/moment.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/momentjs/moment-with-locales.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/js-logger/logger.min.js?v=${SYS_VERSION}"></script>

<script type="text/javascript" src="${CTX_PATH}/material/js/jquery-logger.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/js/jquery-common.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/material/js/jquery-post.js?v=${SYS_VERSION}"></script> --%>

<script type="text/javascript" src="${CTX_PATH}/material/plugins/jquery-ui/jquery-ui.min.js?v=${SYS_VERSION}" ></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/jquery-cookie/jquery.cookie.js?v=${SYS_VERSION}"></script>
<!-- Bootstrap Core Js -->
<script type="text/javascript" src="${CTX_PATH}/material/plugins/bootstrap/js/bootstrap.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/bootstrap-notify/bootstrap-notify.js?v=${SYS_VERSION}"></script>
<!-- Select Plugin Js -->
<script type="text/javascript" src="${CTX_PATH}/material/plugins/bootstrap-select/js/bootstrap-select.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/material/plugins/bootstrap-treeview/bootstrap-treeview-patternfly.js?v=${SYS_VERSION}"></script> --%>
<%-- <script type="text/javascript" src="${CTX_PATH}/material/plugins/bootstrap-datepicker-air/js/datepicker.js?v=${SYS_VERSION}"></script> --%>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js?v=${SYS_VERSION}"></script>
<!-- Slimscroll Plugin Js -->
<script type="text/javascript" src="${CTX_PATH}/material/plugins/jquery-slimscroll/jquery.slimscroll.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/jquery-spinner/js/jquery.spinner.js?v=${SYS_VERSION}"></script>
<!-- Waves Effect Plugin Js -->
<script type="text/javascript" src="${CTX_PATH}/material/plugins/node-waves/waves.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/waitme/waitMe.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/material/plugins/sweetalert/sweetalert.js?v=${SYS_VERSION}"></script> --%>
<%-- <script type="text/javascript" src="${CTX_PATH}/material/plugins/clipboard/clipboard.js?v=${SYS_VERSION}"></script> --%>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/autosize/autosize.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/material/plugins/multi-select/js/jquery.multi-select.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/material/plugins/jquery-autoNumeric/autoNumeric.js?v=${SYS_VERSION}"></script> --%>
<script type="text/javascript" src="${CTX_PATH}/material/js/forms/basic-form-elements.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/material/js/tables/jquery-table-select.js?v=${SYS_VERSION}"></script> --%>
<!-- Custom Js -->
<%-- <script type="text/javascript" src="${CTX_PATH}/material/js/jquery-ie.js?v=${SYS_VERSION}"></script> --%>
<%-- <script type="text/javascript" src="${CTX_PATH}/material/js/jquery-skin.js?v=${SYS_VERSION}"></script> --%>
<%-- <script type="text/javascript" src="${CTX_PATH}/material/js/jquery-main.js?v=${SYS_VERSION}"></script> --%>

<!-- Custom Js -->
<script type="text/javascript" src="${CTX_PATH}/material/js/moon.js?v=${SYS_VERSION}"></script>
<!-- Demo Js -->
<script type="text/javascript" src="${CTX_PATH}/material/js/demo.js?v=${SYS_VERSION}"></script>

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