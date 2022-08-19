<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>${SYS_NAME}</title>

    <!-- Morris Css -->
    <link rel="stylesheet" type="text/css" href="${CTX_PATH}/plugins/morrisjs/morris.css?v=${SYS_VERSION}" />

    <c:import url="/GlobalPageLink.do?link=common/include/GlobalHeader" />
    
</head>

<body class="theme-black">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    <!-- Search Bar -->
    <div class="search-bar">
        <div class="search-icon">
            <i class="material-icons">search</i>
        </div>
        <input type="text" placeholder="START TYPING...">
        <div class="close-search">
            <i class="material-icons">close</i>
        </div>
    </div>
    <!-- #END# Search Bar -->
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="${CTX_PATH}/material">${SYS_NAME}</a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <!-- Call Search -->
                    <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li>
                    <!-- #END# Call Search -->
                    <!-- Notifications -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons">notifications</i>
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
                            <i class="material-icons">flag</i>
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
                    <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="material-icons">more_vert</i></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="${CTX_PATH}/images/user.png" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Jihee Moon</div>
                    <div class="email">mj824m@example.com</div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
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
            <!-- Menu -->
            <div class="menu">
                <ul id="leftSideMenuBar" class="list"></ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright">
                    &copy; 2022 <a href="javascript:void(0);">${SYS_NAME}</a>.
                </div>
                <div class="version">
                    <b>Version: </b> ${SYS_VERSION}
                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
        <!-- Right Sidebar -->
        <aside id="rightsidebar" class="right-sidebar">
            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                <li role="presentation" class="active"><a href="#skins" data-toggle="tab">SKINS</a></li>
                <li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active in active" id="skins">
                    <ul class="demo-choose-skin">
                        <li data-theme="red">
                            <div class="red"></div>
                            <span>Red</span>
                        </li>
                        <li data-theme="pink">
                            <div class="pink"></div>
                            <span>Pink</span>
                        </li>
                        <li data-theme="purple">
                            <div class="purple"></div>
                            <span>Purple</span>
                        </li>
                        <li data-theme="deep-purple">
                            <div class="deep-purple"></div>
                            <span>Deep Purple</span>
                        </li>
                        <li data-theme="indigo">
                            <div class="indigo"></div>
                            <span>Indigo</span>
                        </li>
                        <li data-theme="blue">
                            <div class="blue"></div>
                            <span>Blue</span>
                        </li>
                        <li data-theme="light-blue">
                            <div class="light-blue"></div>
                            <span>Light Blue</span>
                        </li>
                        <li data-theme="cyan">
                            <div class="cyan"></div>
                            <span>Cyan</span>
                        </li>
                        <li data-theme="teal">
                            <div class="teal"></div>
                            <span>Teal</span>
                        </li>
                        <li data-theme="green">
                            <div class="green"></div>
                            <span>Green</span>
                        </li>
                        <li data-theme="light-green">
                            <div class="light-green"></div>
                            <span>Light Green</span>
                        </li>
                        <li data-theme="lime">
                            <div class="lime"></div>
                            <span>Lime</span>
                        </li>
                        <li data-theme="yellow">
                            <div class="yellow"></div>
                            <span>Yellow</span>
                        </li>
                        <li data-theme="amber">
                            <div class="amber"></div>
                            <span>Amber</span>
                        </li>
                        <li data-theme="orange">
                            <div class="orange"></div>
                            <span>Orange</span>
                        </li>
                        <li data-theme="deep-orange">
                            <div class="deep-orange"></div>
                            <span>Deep Orange</span>
                        </li>
                        <li data-theme="brown">
                            <div class="brown"></div>
                            <span>Brown</span>
                        </li>
                        <li data-theme="grey">
                            <div class="grey"></div>
                            <span>Grey</span>
                        </li>
                        <li data-theme="blue-grey">
                            <div class="blue-grey"></div>
                            <span>Blue Grey</span>
                        </li>
                        <li data-theme="black">
                            <div class="black"></div>
                            <span>Black</span>
                        </li>
                    </ul>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="settings">
                    <div class="demo-settings">
                        <p>GENERAL SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Report Panel Usage</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Email Redirect</span>
                                <div class="switch">
                                    <label><input type="checkbox"><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                        <p>SYSTEM SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Notifications</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Auto Updates</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                        <p>ACCOUNT SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Offline</span>
                                <div class="switch">
                                    <label><input type="checkbox"><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Location Permission</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </aside>
        <!-- #END# Right Sidebar -->
    </section>

    <section class="content">
        <div class="container-fluid">
            <ol id="breadcrumb"></ol>
            
            <div class="card">
                <div class="header">
                    <h2>
                        PLUGINS
                        <small>${SYS_NAME} uses the following plugins. For documentation, updates or license information, please visit the links below.</small>
                    </h2>
                </div>
                <div class="body">
                    <div class="row clearfix">
                        <div class="col-md-3">
                            <p>
                                <b>Widgets</b>
                            </p>
                            <ul class="list-unstyled">
                                <li><a href="https://github.com/mhuggins/jquery-countTo" target="_blank">Jquery CountTo</a></li>
                                <li><a href="https://github.com/vadimsva/waitMe" target="_blank">WaitMe</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <p>
                                <b>User Interface (UI)</b>
                            </p>
                            <ul class="list-unstyled">
                                <li><a href="https://daneden.github.io/animate.css/" target="_blank">Animate.css</a></li>
                                <li><a href="https://github.com/t4t5/sweetalert" target="_blank">SweetAlert</a></li>
                                <li><a href="https://design.google.com/icons/" target="_blank">Material Icons</a></li>
                                <li><a href="https://github.com/mouse0270/bootstrap-notify" target="_blank">Bootstrap Notify</a></li>
                                <li><a href="http://ionden.com/a/plugins/ion.rangeSlider/en.html" target="_blank">ionRangeSlider</a></li>
                                <li><a href="https://github.com/dbushell/Nestable" target="_blank">Nestable</a></li>
                                <li><a href="http://fian.my.id/Waves/" target="_blank">Waves</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <p>
                                <b>Forms</b>
                            </p>
                            <ul class="list-unstyled">
                                <li><a href="https://github.com/mjolnic/bootstrap-colorpicker/" target="_blank">Bootstrap Colorpicker 2</a></li>
                                <li><a href="http://www.dropzonejs.com/" target="_blank">DropzoneJS</a></li>
                                <li><a href="https://github.com/RobinHerbots/jquery.inputmask" target="_blank">Jquery Input Mask</a></li>
                                <li><a href="https://github.com/lou/multi-select/" target="_blank">Jquery Multi-Select</a></li>
                                <li><a href="https://github.com/vsn4ik/jquery.spinner" target="_blank">Jquery Spinner</a></li>
                                <li><a href="https://github.com/bootstrap-tagsinput/bootstrap-tagsinput" target="_blank">Bootstrap TagsInput</a></li>
                                <li><a href="https://silviomoreto.github.io/bootstrap-select/" target="_blank">Bootstrap Select</a></li>
                                <li><a href="http://refreshless.com/nouislider/" target="_blank">noUISlider</a></li>
                                <li><a href="http://materializecss.com/" target="_blank">Materialize.css</a></li>
                                <li><a href="https://jqueryvalidation.org/" target="_blank">Jquery Validation</a></li>
                                <li><a href="https://github.com/rstaib/jquery-steps" target="_blank">Jquery Steps</a></li>
                                <li><a href="http://ckeditor.com/" target="_blank">CKEditor</a></li>
                                <li><a href="https://www.tinymce.com/" target="_blank">TinyMCE</a></li>
                                <li><a href="https://github.com/uxsolutions/bootstrap-datepicker" target="_blank">Bootstrap Datepicker</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <p>
                                <b>Tables</b>
                            </p>
                            <ul class="list-unstyled">
                                <li><a href="https://datatables.net/" target="_blank">DataTables</a></li>
                                <li><a href="https://github.com/mindmup/editable-table" target="_blank">Editable Table</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <p>
                                <b>Medias</b>
                            </p>
                            <ul class="list-unstyled">
                                <li><a href="http://sachinchoolur.github.io/lightGallery/" target="_blank">Light Gallery</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <p>
                                <b>Charts</b>
                            </p>
                            <ul class="list-unstyled">
                                <li><a href="https://github.com/morrisjs/morris.js" target="_blank">Morris</a></li>
                                <li><a href="http://www.flotcharts.org/" target="_blank">Flot Chart</a></li>
                                <li><a href="https://github.com/chartjs/Chart.js" target="_blank">ChartJs</a></li>
                                <li><a href="http://omnipotent.net/jquery.sparkline/" target="_blank">Sparkline</a></li>
                                <li><a href="https://github.com/aterrien/jQuery-Knob" target="_blank">Jquery Knob</a></li>
                            </ul>
                        </div>
            
                        <div class="col-md-3">
                            <p>
                                <b>Maps</b>
                            </p>
                            <ul class="list-unstyled">
                                <li><a href="https://developers.google.com/maps/" target="_blank">Google Maps</a></li>
                                <li><a href="https://hpneo.github.io/gmaps/" target="_blank">GMaps</a></li>
                                <li><a href="https://tech.yandex.com/maps/" target="_blank">Yandex Map</a></li>
                                <li><a href="http://jvectormap.com/" target="_blank">jVector Map</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <c:import url="/GlobalPageLink.do?link=common/include/GlobalFooter" />
    <!-- Jquery CountTo Plugin Js -->
    <script type="text/javascript" src="${CTX_PATH}/plugins/jquery-countto/jquery.countTo.js?v=${SYS_VERSION}"></script>
    <!-- Morris Plugin Js -->
    <script type="text/javascript" src="${CTX_PATH}/plugins/raphael/raphael.min.js?v=${SYS_VERSION}"></script>
    <script type="text/javascript" src="${CTX_PATH}/plugins/morrisjs/morris.js?v=${SYS_VERSION}"></script>
    <!-- ChartJs -->
    <script type="text/javascript" src="${CTX_PATH}/plugins/chartjs/Chart.bundle.js?v=${SYS_VERSION}"></script>
    <!-- Flot Charts Plugin Js -->
    <script type="text/javascript" src="${CTX_PATH}/plugins/flot-charts/jquery.flot.js?v=${SYS_VERSION}"></script>
    <script type="text/javascript" src="${CTX_PATH}/plugins/flot-charts/jquery.flot.resize.js?v=${SYS_VERSION}"></script>
    <script type="text/javascript" src="${CTX_PATH}/plugins/flot-charts/jquery.flot.pie.js?v=${SYS_VERSION}"></script>
    <script type="text/javascript" src="${CTX_PATH}/plugins/flot-charts/jquery.flot.categories.js?v=${SYS_VERSION}"></script>
    <script type="text/javascript" src="${CTX_PATH}/plugins/flot-charts/jquery.flot.time.js?v=${SYS_VERSION}"></script>
    <!-- Sparkline Chart Plugin Js -->
    <script type="text/javascript" src="${CTX_PATH}/plugins/jquery-sparkline/jquery.sparkline.js?v=${SYS_VERSION}"></script>
    
</body>

</html>
            