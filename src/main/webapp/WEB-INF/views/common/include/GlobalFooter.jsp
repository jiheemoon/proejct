<%--
  Class Name : GlobalFooter.jsp
  Description : js파일
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- <div class="pageUp"> -->
<!--     <a href="#" title="맨위로"><i class="material-icons">arrow_upward</i></a> -->
<!-- </div> -->
<script type="text/javascript" src="${CTX_PATH}/script/jquery-logger.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/script/jquery-common.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/script/jquery-post.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-ui/jquery-ui.min.js?v=${SYS_VERSION}" ></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-countto/jquery.countTo.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-cookie/jquery.cookie.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-slimscroll/jquery.slimscroll.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-spinner/js/jquery.spinner.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap/js/bootstrap.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-notify/bootstrap-notify.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-select/js/bootstrap-select.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-treeview/bootstrap-treeview-patternfly.js?v=${SYS_VERSION}"></script>
<%-- <script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-datepicker-air/js/datepicker.js?v=${SYS_VERSION}"></script> --%>
<script type="text/javascript" src="${CTX_PATH}/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/node-waves/waves.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/waitme/waitMe.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/sweetalert/sweetalert.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/clipboard/clipboard.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/autosize/autosize.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/multi-select/js/jquery.multi-select.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/plugins/jquery-autoNumeric/autoNumeric.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/script/pages/forms/basic-form-elements.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/script/pages/tables/jquery-table-select.js?v=${SYS_VERSION}"></script>
<!-- Custom Js -->
<script type="text/javascript" src="${CTX_PATH}/script/jquery-ie.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/script/jquery-skin.js?v=${SYS_VERSION}"></script>
<script type="text/javascript" src="${CTX_PATH}/script/jquery-main.js?v=${SYS_VERSION}"></script>
<!-- MenuTree -->
<script type="text/javascript">
$(document).ready(function() {
    $.eHaesol.menu.leftMenu('${CTX_PATH}', '${CTL_PATH}');
    window.onload = function() {
        $.eHaesol.page.loaded();
    }
});
</script>
