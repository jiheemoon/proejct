﻿<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
                        <li data-theme="red" class="active">
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
            <div class="block-header">
                <h2>BUTTONS</h2>
            </div>
            <!-- Bootstrap Default Buttons -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                BOOTSTRAP DEFAULT BUTTONS
                                <small>Use any of the available button classes to quickly create a styled button</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="button-demo">
                                <button type="button" class="btn btn-default waves-effect">DEFAULT</button>
                                <button type="button" class="btn btn-primary waves-effect">PRIMARY</button>
                                <button type="button" class="btn btn-success waves-effect">SUCCESS</button>
                                <button type="button" class="btn btn-info waves-effect">INFO</button>
                                <button type="button" class="btn btn-warning waves-effect">WARNING</button>
                                <button type="button" class="btn btn-danger waves-effect">DANGER</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Bootstrap Default Buttons -->
            <!-- Metarial Design Buttons -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                METARIAL DESIGN BUTTONS
                                <small>Use any of the available button classes to quickly create a styled button</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="button-demo">
                                <button type="button" class="btn bg-red waves-effect">RED</button>
                                <button type="button" class="btn bg-pink waves-effect">PINK</button>
                                <button type="button" class="btn bg-purple waves-effect">PURPLE</button>
                                <button type="button" class="btn bg-deep-purple waves-effect">DEEP PURPLE</button>
                                <button type="button" class="btn bg-indigo waves-effect">INDIGO</button>
                                <button type="button" class="btn bg-blue waves-effect">BLUE</button>
                                <button type="button" class="btn bg-light-blue waves-effect">LIGHT BLUE</button>
                                <button type="button" class="btn bg-cyan waves-effect">CYAN</button>
                                <button type="button" class="btn bg-teal waves-effect">TEAL</button>
                                <button type="button" class="btn bg-green waves-effect">GREEN</button>
                                <button type="button" class="btn bg-light-green waves-effect">LIGHT GREEN</button>
                                <button type="button" class="btn bg-lime waves-effect">LIME</button>
                                <button type="button" class="btn bg-yellow waves-effect">YELLOW</button>
                                <button type="button" class="btn bg-amber waves-effect">AMBER</button>
                                <button type="button" class="btn bg-orange waves-effect">ORANGE</button>
                                <button type="button" class="btn bg-deep-orange waves-effect">DEEP ORANGE</button>
                                <button type="button" class="btn bg-brown waves-effect">BROWN</button>
                                <button type="button" class="btn bg-grey waves-effect">GREY</button>
                                <button type="button" class="btn bg-blue-grey waves-effect">BLUE GREY</button>
                                <button type="button" class="btn bg-black waves-effect waves-light">BLACK</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Metarial Design Buttons -->
            <!-- Button Sizes -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                BUTTON SIZES
                                <small>You can resize the buttons</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row clearfix demo-button-sizes">
                                <div class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
                                    <button type="button" class="btn bg-red btn-block btn-lg waves-effect">LARGE</button>
                                    <button type="button" class="btn bg-red btn-block waves-effect">DEFAULT</button>
                                    <button type="button" class="btn bg-red btn-block btn-sm waves-effect">SMALL</button>
                                    <button type="button" class="btn bg-red btn-block btn-xs waves-effect">EXTRA SMALL</button>
                                </div>
                                <div class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
                                    <button type="button" class="btn bg-pink btn-block btn-lg waves-effect">LARGE</button>
                                    <button type="button" class="btn bg-pink btn-block waves-effect">DEFAULT</button>
                                    <button type="button" class="btn bg-pink btn-block btn-sm waves-effect">SMALL</button>
                                    <button type="button" class="btn bg-pink btn-block btn-xs waves-effect">EXTRA SMALL</button>
                                </div>
                                <div class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
                                    <button type="button" class="btn bg-cyan btn-block btn-lg waves-effect">LARGE</button>
                                    <button type="button" class="btn bg-cyan btn-block waves-effect">DEFAULT</button>
                                    <button type="button" class="btn bg-cyan btn-block btn-sm waves-effect">SMALL</button>
                                    <button type="button" class="btn bg-cyan btn-block btn-xs waves-effect">EXTRA SMALL</button>
                                </div>
                                <div class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
                                    <button type="button" class="btn bg-teal btn-block btn-lg waves-effect">LARGE</button>
                                    <button type="button" class="btn bg-teal btn-block waves-effect">DEFAULT</button>
                                    <button type="button" class="btn bg-teal btn-block btn-sm waves-effect">SMALL</button>
                                    <button type="button" class="btn bg-teal btn-block btn-xs waves-effect">EXTRA SMALL</button>
                                </div>
                                <div class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
                                    <button type="button" class="btn bg-orange btn-block btn-lg waves-effect">LARGE</button>
                                    <button type="button" class="btn bg-orange btn-block waves-effect">DEFAULT</button>
                                    <button type="button" class="btn bg-orange btn-block btn-sm waves-effect">SMALL</button>
                                    <button type="button" class="btn bg-orange btn-block btn-xs waves-effect">EXTRA SMALL</button>
                                </div>
                                <div class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
                                    <button type="button" class="btn bg-purple btn-block btn-lg waves-effect">LARGE</button>
                                    <button type="button" class="btn bg-purple btn-block waves-effect">DEFAULT</button>
                                    <button type="button" class="btn bg-purple btn-block btn-sm waves-effect">SMALL</button>
                                    <button type="button" class="btn bg-purple btn-block btn-xs waves-effect">EXTRA SMALL</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Button Sizes -->
            <!-- Block Buttons -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                BLOCK BUTTONS
                                <small>Create block level buttons</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="demo-button">
                                <button type="button" class="btn btn-block btn-lg btn-default waves-effect">DEFAULT</button>
                                <button type="button" class="btn btn-block btn-lg btn-primary waves-effect">PRIMARY</button>
                                <button type="button" class="btn btn-block btn-lg btn-success waves-effect">SUCCESS</button>
                                <button type="button" class="btn btn-block btn-lg btn-info waves-effect">INFO</button>
                                <button type="button" class="btn btn-block btn-lg btn-warning waves-effect">WARNING</button>
                                <button type="button" class="btn btn-block btn-lg btn-danger waves-effect">DANGER</button>
                                <button type="button" class="btn btn-block btn-lg bg-red waves-effect">RED</button>
                                <button type="button" class="btn btn-block btn-lg bg-pink waves-effect">PINK</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Block Buttons -->
            <!-- Disabled Buttons -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                DISABLED BUTTONS
                                <small>Make buttons look unclickable by fading them back with opacity</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="button-demo">
                                <button type="button" class="btn btn-default waves-effect" disabled="disabled">DEFAULT</button>
                                <button type="button" class="btn btn-primary waves-effect" disabled="disabled">PRIMARY</button>
                                <button type="button" class="btn btn-success waves-effect" disabled="disabled">SUCCESS</button>
                                <button type="button" class="btn btn-info waves-effect" disabled="disabled">INFO</button>
                                <button type="button" class="btn btn-warning waves-effect" disabled="disabled">WARNING</button>
                                <button type="button" class="btn btn-danger waves-effect" disabled="disabled">DANGER</button>
                                <button type="button" class="btn bg-red waves-effect" disabled="disabled">RED</button>
                                <button type="button" class="btn bg-pink waves-effect" disabled="disabled">PINK</button>
                                <button type="button" class="btn bg-purple waves-effect" disabled="disabled">PURPLE</button>
                                <button type="button" class="btn bg-deep-purple waves-effect" disabled="disabled">DEEP PURPLE</button>
                                <button type="button" class="btn bg-indigo waves-effect" disabled="disabled">INDIGO</button>
                                <button type="button" class="btn bg-blue waves-effect" disabled="disabled">BLUE</button>
                                <button type="button" class="btn bg-light-blue waves-effect" disabled="disabled">LIGHT BLUE</button>
                                <button type="button" class="btn bg-cyan waves-effect" disabled="disabled">CYAN</button>
                                <button type="button" class="btn bg-teal waves-effect" disabled="disabled">TEAL</button>
                                <button type="button" class="btn bg-green waves-effect" disabled="disabled">GREEN</button>
                                <button type="button" class="btn bg-light-green waves-effect" disabled="disabled">LIGHT GREEN</button>
                                <button type="button" class="btn bg-lime waves-effect" disabled="disabled">LIME</button>
                                <button type="button" class="btn bg-yellow waves-effect" disabled="disabled">YELLOW</button>
                                <button type="button" class="btn bg-amber waves-effect" disabled="disabled">AMBER</button>
                                <button type="button" class="btn bg-orange waves-effect" disabled="disabled">ORANGE</button>
                                <button type="button" class="btn bg-deep-orange waves-effect" disabled="disabled">DEEP ORANGE</button>
                                <button type="button" class="btn bg-brown waves-effect" disabled="disabled">BROWN</button>
                                <button type="button" class="btn bg-grey waves-effect" disabled="disabled">GREY</button>
                                <button type="button" class="btn bg-blue-grey waves-effect" disabled="disabled">BLUE GREY</button>
                                <button type="button" class="btn bg-black waves-effect waves-light" disabled="disabled">BLACK</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Disabled Buttons -->
            <!-- Icon Buttons -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                ICON BUTTONS
                                <small>Make icon buttons</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="icon-button-demo">
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">extension</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">home</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">lock</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">perm_scan_wifi</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">flight_takeoff</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">print</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">report_problem</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">search</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">settings</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">trending_up</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">verified_user</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">mic</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">call_missed_outgoing</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">forum</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">email</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">chat</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">vpn_key</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">content_cut</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">drafts</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">save</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">weekend</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">access_alarm</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">location_searching</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">merge_type</i>
                                </button>
                                <button type="button" class="btn btn-default waves-effect">
                                    <i class="material-icons">publish</i>
                                </button>
                            </div>
                            <div class="icon-button-demo">
                                <button type="button" class="btn btn-primary waves-effect">
                                    <i class="material-icons">extension</i>
                                </button>
                                <button type="button" class="btn btn-success waves-effect">
                                    <i class="material-icons">home</i>
                                </button>
                                <button type="button" class="btn btn-info waves-effect">
                                    <i class="material-icons">lock</i>
                                </button>
                                <button type="button" class="btn btn-warning waves-effect">
                                    <i class="material-icons">perm_scan_wifi</i>
                                </button>
                                <button type="button" class="btn btn-danger waves-effect">
                                    <i class="material-icons">flight_takeoff</i>
                                </button>
                                <button type="button" class="btn bg-red waves-effect">
                                    <i class="material-icons">print</i>
                                </button>
                                <button type="button" class="btn bg-pink waves-effect">
                                    <i class="material-icons">report_problem</i>
                                </button>
                                <button type="button" class="btn bg-purple waves-effect">
                                    <i class="material-icons">search</i>
                                </button>
                                <button type="button" class="btn bg-deep-purple waves-effect">
                                    <i class="material-icons">settings</i>
                                </button>
                                <button type="button" class="btn bg-indigo waves-effect">
                                    <i class="material-icons">trending_up</i>
                                </button>
                                <button type="button" class="btn bg-blue waves-effect">
                                    <i class="material-icons">verified_user</i>
                                </button>
                                <button type="button" class="btn bg-light-blue waves-effect">
                                    <i class="material-icons">mic</i>
                                </button>
                                <button type="button" class="btn bg-cyan waves-effect">
                                    <i class="material-icons">call_missed_outgoing</i>
                                </button>
                                <button type="button" class="btn bg-teal waves-effect">
                                    <i class="material-icons">forum</i>
                                </button>
                                <button type="button" class="btn bg-green waves-effect">
                                    <i class="material-icons">email</i>
                                </button>
                                <button type="button" class="btn bg-light-green waves-effect">
                                    <i class="material-icons">chat</i>
                                </button>
                                <button type="button" class="btn bg-lime waves-effect">
                                    <i class="material-icons">vpn_key</i>
                                </button>
                                <button type="button" class="btn bg-yellow waves-effect">
                                    <i class="material-icons">content_cut</i>
                                </button>
                                <button type="button" class="btn bg-amber waves-effect">
                                    <i class="material-icons">drafts</i>
                                </button>
                                <button type="button" class="btn bg-orange waves-effect">
                                    <i class="material-icons">save</i>
                                </button>
                                <button type="button" class="btn bg-deep-orange waves-effect">
                                    <i class="material-icons">weekend</i>
                                </button>
                                <button type="button" class="btn bg-brown waves-effect">
                                    <i class="material-icons">access_alarm</i>
                                </button>
                                <button type="button" class="btn bg-grey waves-effect">
                                    <i class="material-icons">location_searching</i>
                                </button>
                                <button type="button" class="btn bg-blue-grey waves-effect">
                                    <i class="material-icons">merge_type</i>
                                </button>
                                <button type="button" class="btn bg-black waves-effect waves-light">
                                    <i class="material-icons">publish</i>
                                </button>
                            </div>
                            <div class="icon-button-demo m-t-25">
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">extension</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">home</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">lock</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">perm_scan_wifi</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">flight_takeoff</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">print</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">report_problem</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">search</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">settings</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">trending_up</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">verified_user</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">mic</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">call_missed_outgoing</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">forum</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">email</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">chat</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">vpn_key</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">content_cut</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">drafts</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">save</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">weekend</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">access_alarm</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">location_searching</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">merge_type</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">publish</i>
                                </button>
                            </div>
                            <div class="icon-button-demo">
                                <button type="button" class="btn btn-primary btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">extension</i>
                                </button>
                                <button type="button" class="btn btn-success btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">home</i>
                                </button>
                                <button type="button" class="btn btn-info btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">lock</i>
                                </button>
                                <button type="button" class="btn btn-warning btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">perm_scan_wifi</i>
                                </button>
                                <button type="button" class="btn btn-danger btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">flight_takeoff</i>
                                </button>
                                <button type="button" class="btn bg-red btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">print</i>
                                </button>
                                <button type="button" class="btn bg-pink btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">report_problem</i>
                                </button>
                                <button type="button" class="btn bg-purple btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">search</i>
                                </button>
                                <button type="button" class="btn bg-deep-purple btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">settings</i>
                                </button>
                                <button type="button" class="btn bg-indigo btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">trending_up</i>
                                </button>
                                <button type="button" class="btn bg-blue btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">verified_user</i>
                                </button>
                                <button type="button" class="btn bg-light-blue btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">mic</i>
                                </button>
                                <button type="button" class="btn bg-cyan btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">call_missed_outgoing</i>
                                </button>
                                <button type="button" class="btn bg-teal btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">forum</i>
                                </button>
                                <button type="button" class="btn bg-green btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">email</i>
                                </button>
                                <button type="button" class="btn bg-light-green btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">chat</i>
                                </button>
                                <button type="button" class="btn bg-lime btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">vpn_key</i>
                                </button>
                                <button type="button" class="btn bg-yellow btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">content_cut</i>
                                </button>
                                <button type="button" class="btn bg-amber btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">drafts</i>
                                </button>
                                <button type="button" class="btn bg-orange btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">save</i>
                                </button>
                                <button type="button" class="btn bg-deep-orange btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">weekend</i>
                                </button>
                                <button type="button" class="btn bg-brown btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">access_alarm</i>
                                </button>
                                <button type="button" class="btn bg-grey btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">location_searching</i>
                                </button>
                                <button type="button" class="btn bg-blue-grey btn-circle waves-effect waves-circle waves-float">
                                    <i class="material-icons">merge_type</i>
                                </button>
                                <button type="button" class="btn bg-black btn-circle waves-effect waves-circle waves-float waves-light">
                                    <i class="material-icons">publish</i>
                                </button>
                            </div>
                            <h2 class="card-inside-title">
                                Large Circle
                            </h2>
                            <div class="icon-button-demo m-t-25">
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">extension</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">home</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">lock</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">perm_scan_wifi</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">flight_takeoff</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">print</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">report_problem</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">search</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">settings</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">trending_up</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">verified_user</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">mic</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">call_missed_outgoing</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">forum</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">email</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">chat</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">vpn_key</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">content_cut</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">drafts</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">save</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">weekend</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">access_alarm</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">location_searching</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">merge_type</i>
                                </button>
                                <button type="button" class="btn btn-default btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">publish</i>
                                </button>
                            </div>
                            <div class="icon-button-demo">
                                <button type="button" class="btn btn-primary btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">extension</i>
                                </button>
                                <button type="button" class="btn btn-success btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">home</i>
                                </button>
                                <button type="button" class="btn btn-info btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">lock</i>
                                </button>
                                <button type="button" class="btn btn-warning btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">perm_scan_wifi</i>
                                </button>
                                <button type="button" class="btn btn-danger btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">flight_takeoff</i>
                                </button>
                                <button type="button" class="btn bg-red btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">print</i>
                                </button>
                                <button type="button" class="btn bg-pink btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">report_problem</i>
                                </button>
                                <button type="button" class="btn bg-purple btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">search</i>
                                </button>
                                <button type="button" class="btn bg-deep-purple btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">settings</i>
                                </button>
                                <button type="button" class="btn bg-indigo btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">trending_up</i>
                                </button>
                                <button type="button" class="btn bg-blue btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">verified_user</i>
                                </button>
                                <button type="button" class="btn bg-light-blue btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">mic</i>
                                </button>
                                <button type="button" class="btn bg-cyan btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">call_missed_outgoing</i>
                                </button>
                                <button type="button" class="btn bg-teal btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">forum</i>
                                </button>
                                <button type="button" class="btn bg-green btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">email</i>
                                </button>
                                <button type="button" class="btn bg-light-green btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">chat</i>
                                </button>
                                <button type="button" class="btn bg-lime btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">vpn_key</i>
                                </button>
                                <button type="button" class="btn bg-yellow btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">content_cut</i>
                                </button>
                                <button type="button" class="btn bg-amber btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">drafts</i>
                                </button>
                                <button type="button" class="btn bg-orange btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">save</i>
                                </button>
                                <button type="button" class="btn bg-deep-orange btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">weekend</i>
                                </button>
                                <button type="button" class="btn bg-brown btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">access_alarm</i>
                                </button>
                                <button type="button" class="btn bg-grey btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">location_searching</i>
                                </button>
                                <button type="button" class="btn bg-blue-grey btn-circle-lg waves-effect waves-circle waves-float">
                                    <i class="material-icons">merge_type</i>
                                </button>
                                <button type="button" class="btn bg-black btn-circle-lg waves-effect waves-circle waves-float waves-light">
                                    <i class="material-icons">publish</i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Icon Buttons -->
            <!-- Icon & Text Buttons -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                ICON & TEXT BUTTONS
                                <small>Make icon & text buttons</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="icon-and-text-button-demo">
                                <button type="button" class="btn btn-primary waves-effect">
                                    <i class="material-icons">extension</i>
                                    <span>EXTENSION</span>
                                </button>
                                <button type="button" class="btn btn-success waves-effect">
                                    <i class="material-icons">home</i>
                                    <span>HOME</span>
                                </button>
                                <button type="button" class="btn btn-info waves-effect">
                                    <i class="material-icons">lock</i>
                                    <span>LOCK</span>
                                </button>
                                <button type="button" class="btn btn-warning waves-effect">
                                    <i class="material-icons">perm_scan_wifi</i>
                                    <span>SCAN WIFI</span>
                                </button>
                                <button type="button" class="btn btn-danger waves-effect">
                                    <i class="material-icons">flight_takeoff</i>
                                    <span>TAKE OFF</span>
                                </button>
                                <button type="button" class="btn bg-red waves-effect">
                                    <i class="material-icons">print</i>
                                    <span>PRINT...</span>
                                </button>
                                <button type="button" class="btn bg-pink waves-effect">
                                    <i class="material-icons">report_problem</i>
                                    <span>REPORT ISSUE</span>
                                </button>
                                <button type="button" class="btn bg-purple waves-effect">
                                    <i class="material-icons">search</i>
                                    <span>SEARCH</span>
                                </button>
                                <button type="button" class="btn bg-deep-purple waves-effect">
                                    <i class="material-icons">settings</i>
                                    <span>SETTINGS</span>
                                </button>
                                <button type="button" class="btn bg-indigo waves-effect">
                                    <i class="material-icons">trending_up</i>
                                    <span>TRENDING UP</span>
                                </button>
                                <button type="button" class="btn bg-blue waves-effect">
                                    <i class="material-icons">verified_user</i>
                                    <span>VERIFIED USER</span>
                                </button>
                                <button type="button" class="btn bg-light-blue waves-effect">
                                    <i class="material-icons">mic</i>
                                    <span>MIC</span>
                                </button>
                                <button type="button" class="btn bg-teal waves-effect">
                                    <i class="material-icons">forum</i>
                                    <span>FORUM</span>
                                </button>
                                <button type="button" class="btn bg-green waves-effect">
                                    <i class="material-icons">email</i>
                                    <span>EMAIL</span>
                                </button>
                                <button type="button" class="btn bg-light-green waves-effect">
                                    <i class="material-icons">chat</i>
                                    <span>CHAT</span>
                                </button>
                                <button type="button" class="btn bg-lime waves-effect">
                                    <i class="material-icons">vpn_key</i>
                                    <span>VPN KEY</span>
                                </button>
                                <button type="button" class="btn bg-amber waves-effect">
                                    <i class="material-icons">drafts</i>
                                    <span>DRAFTS</span>
                                </button>
                                <button type="button" class="btn bg-orange waves-effect">
                                    <i class="material-icons">save</i>
                                    <span>SAVE</span>
                                </button>
                                <button type="button" class="btn bg-deep-orange waves-effect">
                                    <i class="material-icons">weekend</i>
                                    <span>WEEKEND</span>
                                </button>
                                <button type="button" class="btn bg-brown waves-effect">
                                    <i class="material-icons">access_alarm</i>
                                    <span>ALARM</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Icon & Text Buttons -->
            <!-- Button Groups -->
            <div class="block-header">
                <h2>
                    BUTTON GROUPS
                    <small>Group a series of buttons together on a single line with the button group</small>
                </h2>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                BASIC EXAMPLE
                                <small>Wrap a series of buttons with <code>.btn</code> in <code>.btn-group</code>.</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="demo-button-groups">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default waves-effect">LEFT</button>
                                    <button type="button" class="btn btn-default waves-effect">MIDDLE</button>
                                    <button type="button" class="btn btn-default waves-effect">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-primary waves-effect">LEFT</button>
                                    <button type="button" class="btn btn-primary waves-effect">MIDDLE</button>
                                    <button type="button" class="btn btn-primary waves-effect">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-success waves-effect">LEFT</button>
                                    <button type="button" class="btn btn-success waves-effect">MIDDLE</button>
                                    <button type="button" class="btn btn-success waves-effect">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-info waves-effect">LEFT</button>
                                    <button type="button" class="btn btn-info waves-effect">MIDDLE</button>
                                    <button type="button" class="btn btn-info waves-effect">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-warning waves-effect">LEFT</button>
                                    <button type="button" class="btn btn-warning waves-effect">MIDDLE</button>
                                    <button type="button" class="btn btn-warning waves-effect">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger waves-effect">LEFT</button>
                                    <button type="button" class="btn btn-danger waves-effect">MIDDLE</button>
                                    <button type="button" class="btn btn-danger waves-effect">RIGHT</button>
                                </div>
                            </div>

                            <h2 class="card-inside-title">
                                With Material Design Colors
                                <small>You can use material design colors which examples are <code>.bg-pink</code> class</small>
                            </h2>
                            <div class="demo-button-groups">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-pink waves-effect waves-light">LEFT</button>
                                    <button type="button" class="btn bg-pink waves-effect waves-light">MIDDLE</button>
                                    <button type="button" class="btn bg-pink waves-effect waves-light">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-cyan waves-effect">LEFT</button>
                                    <button type="button" class="btn bg-cyan waves-effect">MIDDLE</button>
                                    <button type="button" class="btn bg-cyan waves-effect">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-teal waves-effect">LEFT</button>
                                    <button type="button" class="btn bg-teal waves-effect">MIDDLE</button>
                                    <button type="button" class="btn bg-teal waves-effect">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-orange waves-effect">LEFT</button>
                                    <button type="button" class="btn bg-orange waves-effect">MIDDLE</button>
                                    <button type="button" class="btn bg-orange waves-effect">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-purple waves-effect waves-light">LEFT</button>
                                    <button type="button" class="btn bg-purple waves-effect waves-light">MIDDLE</button>
                                    <button type="button" class="btn bg-purple waves-effect waves-light">RIGHT</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-blue-grey waves-effect">LEFT</button>
                                    <button type="button" class="btn bg-blue-grey waves-effect">MIDDLE</button>
                                    <button type="button" class="btn bg-blue-grey waves-effect">RIGHT</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                BUTTON TOOLBAR
                                <small>Combine sets of <code>&lt;div class=&quot;btn-group&quot;&gt;</code> into a <code>&lt;div class=&quot;btn-toolbar&quot;&gt;</code> for more complex components.</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="demo-button-toolbar clearfix">
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn btn-default waves-effect">1</button>
                                        <button type="button" class="btn btn-default waves-effect">2</button>
                                        <button type="button" class="btn btn-default waves-effect">3</button>
                                        <button type="button" class="btn btn-default waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn btn-default waves-effect">5</button>
                                        <button type="button" class="btn btn-default waves-effect">6</button>
                                        <button type="button" class="btn btn-default waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn btn-default waves-effect">8</button>
                                    </div>
                                </div>

                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn btn-primary waves-effect">1</button>
                                        <button type="button" class="btn btn-primary waves-effect">2</button>
                                        <button type="button" class="btn btn-primary waves-effect">3</button>
                                        <button type="button" class="btn btn-primary waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn btn-primary waves-effect">5</button>
                                        <button type="button" class="btn btn-primary waves-effect">6</button>
                                        <button type="button" class="btn btn-primary waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn btn-primary waves-effect">8</button>
                                    </div>
                                </div>

                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn btn-success waves-effect">1</button>
                                        <button type="button" class="btn btn-success waves-effect">2</button>
                                        <button type="button" class="btn btn-success waves-effect">3</button>
                                        <button type="button" class="btn btn-success waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn btn-success waves-effect">5</button>
                                        <button type="button" class="btn btn-success waves-effect">6</button>
                                        <button type="button" class="btn btn-success waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn btn-success waves-effect">8</button>
                                    </div>
                                </div>

                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn btn-info waves-effect">1</button>
                                        <button type="button" class="btn btn-info waves-effect">2</button>
                                        <button type="button" class="btn btn-info waves-effect">3</button>
                                        <button type="button" class="btn btn-info waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn btn-info waves-effect">5</button>
                                        <button type="button" class="btn btn-info waves-effect">6</button>
                                        <button type="button" class="btn btn-info waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn btn-info waves-effect">8</button>
                                    </div>
                                </div>

                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn btn-warning waves-effect">1</button>
                                        <button type="button" class="btn btn-warning waves-effect">2</button>
                                        <button type="button" class="btn btn-warning waves-effect">3</button>
                                        <button type="button" class="btn btn-warning waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn btn-warning waves-effect">5</button>
                                        <button type="button" class="btn btn-warning waves-effect">6</button>
                                        <button type="button" class="btn btn-warning waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn btn-warning waves-effect">8</button>
                                    </div>
                                </div>
                            </div>

                            <h2 class="card-inside-title">
                                With Material Design Colors
                                <small>You can use material design colors which examples are <code>.bg-pink</code> class</small>
                            </h2>
                            <div class="demo-button-toolbar clearfix">
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn bg-pink waves-effect">1</button>
                                        <button type="button" class="btn bg-pink waves-effect">2</button>
                                        <button type="button" class="btn bg-pink waves-effect">3</button>
                                        <button type="button" class="btn bg-pink waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn bg-pink waves-effect">5</button>
                                        <button type="button" class="btn bg-pink waves-effect">6</button>
                                        <button type="button" class="btn bg-pink waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn bg-pink waves-effect">8</button>
                                    </div>
                                </div>
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn bg-cyan waves-effect">1</button>
                                        <button type="button" class="btn bg-cyan waves-effect">2</button>
                                        <button type="button" class="btn bg-cyan waves-effect">3</button>
                                        <button type="button" class="btn bg-cyan waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn bg-cyan waves-effect">5</button>
                                        <button type="button" class="btn bg-cyan waves-effect">6</button>
                                        <button type="button" class="btn bg-cyan waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn bg-cyan waves-effect">8</button>
                                    </div>
                                </div>
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn bg-teal waves-effect">1</button>
                                        <button type="button" class="btn bg-teal waves-effect">2</button>
                                        <button type="button" class="btn bg-teal waves-effect">3</button>
                                        <button type="button" class="btn bg-teal waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn bg-teal waves-effect">5</button>
                                        <button type="button" class="btn bg-teal waves-effect">6</button>
                                        <button type="button" class="btn bg-teal waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn bg-teal waves-effect">8</button>
                                    </div>
                                </div>
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn bg-orange waves-effect">1</button>
                                        <button type="button" class="btn bg-orange waves-effect">2</button>
                                        <button type="button" class="btn bg-orange waves-effect">3</button>
                                        <button type="button" class="btn bg-orange waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn bg-orange waves-effect">5</button>
                                        <button type="button" class="btn bg-orange waves-effect">6</button>
                                        <button type="button" class="btn bg-orange waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn bg-orange waves-effect">8</button>
                                    </div>
                                </div>
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="First group">
                                        <button type="button" class="btn bg-purple waves-effect">1</button>
                                        <button type="button" class="btn bg-purple waves-effect">2</button>
                                        <button type="button" class="btn bg-purple waves-effect">3</button>
                                        <button type="button" class="btn bg-purple waves-effect">4</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <button type="button" class="btn bg-purple waves-effect">5</button>
                                        <button type="button" class="btn bg-purple waves-effect">6</button>
                                        <button type="button" class="btn bg-purple waves-effect">7</button>
                                    </div>
                                    <div class="btn-group" role="group" aria-label="Third group">
                                        <button type="button" class="btn bg-purple waves-effect">8</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                SIZING
                                <small>Instead of applying button sizing classes to every button in a group, just add <code>.btn-group-*</code> to each <code>.btn-group</code>, including when nesting multiple groups.</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3 align-center">
                                    <p><b>Large Button Group</b></p>
                                    <div class="btn-group btn-group-lg" role="group" aria-label="Large button group">
                                        <button type="button" class="btn bg-pink waves-effect">LEFT</button>
                                        <button type="button" class="btn bg-pink waves-effect">MIDDLE</button>
                                        <button type="button" class="btn bg-pink waves-effect">RIGHT</button>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3 align-center">
                                    <p><b>Default Button Group</b></p>
                                    <div class="btn-group" role="group" aria-label="Default button group">
                                        <button type="button" class="btn bg-pink waves-effect">LEFT</button>
                                        <button type="button" class="btn bg-pink waves-effect">MIDDLE</button>
                                        <button type="button" class="btn bg-pink waves-effect">RIGHT</button>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3 align-center">
                                    <p><b>Small Button Group</b></p>
                                    <div class="btn-group btn-group-sm" role="group" aria-label="Small button group">
                                        <button type="button" class="btn bg-pink waves-effect">LEFT</button>
                                        <button type="button" class="btn bg-pink waves-effect">MIDDLE</button>
                                        <button type="button" class="btn bg-pink waves-effect">RIGHT</button>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3 align-center">
                                    <p><b>Extra-Small Button Group</b></p>
                                    <div class="btn-group btn-group-xs" role="group" aria-label="Extra-small button group">
                                        <button type="button" class="btn bg-pink waves-effect">LEFT</button>
                                        <button type="button" class="btn bg-pink waves-effect">MIDDLE</button>
                                        <button type="button" class="btn bg-pink waves-effect">RIGHT</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                NESTING
                                <small>Place a <code>.btn-group</code> within another <code>.btn-group</code> when you want dropdown menus mixed with a series of buttons.</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="demo-button-nesting">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default waves-effect">1</button>
                                    <button type="button" class="btn btn-default waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn btn-default waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-primary waves-effect">1</button>
                                    <button type="button" class="btn btn-primary waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn btn-primary waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-success waves-effect">1</button>
                                    <button type="button" class="btn btn-success waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn btn-success waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-info waves-effect">1</button>
                                    <button type="button" class="btn btn-info waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn btn-info waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-warning waves-effect">1</button>
                                    <button type="button" class="btn btn-warning waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn btn-warning waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger waves-effect">1</button>
                                    <button type="button" class="btn btn-danger waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn btn-danger waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <h2 class="card-inside-title">
                                With Material Design Colors
                                <small>You can use material design colors which examples are <code>.bg-pink</code> class</small>
                            </h2>
                            <div class="demo-button-nesting">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-pink waves-effect">1</button>
                                    <button type="button" class="btn bg-pink waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn bg-pink waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-cyan waves-effect">1</button>
                                    <button type="button" class="btn bg-cyan waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn bg-cyan waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-teal waves-effect">1</button>
                                    <button type="button" class="btn bg-teal waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn bg-teal waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-orange waves-effect">1</button>
                                    <button type="button" class="btn bg-orange waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn bg-orange waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-purple waves-effect">1</button>
                                    <button type="button" class="btn bg-purple waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn bg-purple waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-blue-grey waves-effect">1</button>
                                    <button type="button" class="btn bg-blue-grey waves-effect">2</button>
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn bg-blue-grey waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                            <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                VERTICAL VARIATION
                                <small>Make a set of buttons appear vertically stacked rather than horizontally.</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
                                <button type="button" class="btn bg-pink waves-effect">Button</button>
                                <button type="button" class="btn bg-cyan waves-effect">Button</button>
                                <div class="btn-group" role="group">
                                    <button id="btnGroupVerticalDrop1" type="button" class="btn bg-teal waves-effect dropdown-toggle" data-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                        Dropdown <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                                        <li><a href="javascript:void(0);">Dropdown link</a></li>
                                        <li><a href="javascript:void(0);">Dropdown link</a></li>
                                    </ul>
                                </div>
                                <button type="button" class="btn bg-orange waves-effect">Button</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                JUSTIFIED BUTTON GROUPS
                                <small>Make a group of buttons stretch at equal sizes to span the entire width of its parent. Also works with button dropdowns within the button group.</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
                                <a href="javascript:void(0);" class="btn bg-pink waves-effect" role="button">LEFT</a>
                                <a href="javascript:void(0);" class="btn bg-pink waves-effect" role="button">MIDDLE</a>
                                <a href="javascript:void(0);" class="btn bg-pink waves-effect" role="button">RIGHT</a>
                            </div>

                            <div class="btn-group btn-group-justified m-t-25 m-b-15" role="group" aria-label="Justified button group with nested dropdown">
                                <a href="javascript:void(0);" class="btn bg-pink waves-effect" role="button">LEFT</a>
                                <a href="javascript:void(0);" class="btn bg-pink waves-effect" role="button">MIDDLE</a>
                                <div class="btn-group" role="group">
                                    <a href="javascript:void(0);" class="btn bg-pink dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">Dropdown<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Button Groups -->
            <!-- Button Dropdowns -->
            <div class="block-header">
                <h2>
                    BUTTON DROPDOWNS
                    <small>Use any button to trigger a dropdown menu by placing it within a .btn-group and providing the proper menu markup.</small>
                </h2>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                SINGLE BUTTON DROPDOWNS
                                <small>Turn a button into a dropdown toggle with some basic markup changes.</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="demo-single-button-dropdowns">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        DEFAULT <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        PRIMARY <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        SUCCESS <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        INFO <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        WARNING <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>

                            <h2 class="card-inside-title">
                                With Material Design Colors
                                <small>You can use material design colors which examples are <code>.bg-pink</code> class</small>
                            </h2>
                            <div class="demo-single-button-dropdowns">
                                <div class="btn-group">
                                    <button type="button" class="btn bg-pink dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        PINK <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn bg-cyan dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        CYAN <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn bg-teal dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        TEAL <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn bg-orange dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ORANGE <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn bg-purple dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        PURPLE <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                SPLITE BUTTON DROPDOWNS
                                <small>Similarly, create split button dropdowns with the same markup changes, only with a separate button.</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="demo-splite-button-dropdowns">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default waves-effect">DEFAULT</button>
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary waves-effect">PRIMARY</button>
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-success waves-effect">SUCCESS</button>
                                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-info waves-effect">INFO</button>
                                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-warning waves-effect">WARNING</button>
                                    <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>

                            <h2 class="card-inside-title">
                                With Material Design Colors
                                <small>You can use material design colors which examples are <code>.bg-pink</code> class</small>
                            </h2>
                            <div class="demo-splite-button-dropdowns">
                                <div class="btn-group">
                                    <button type="button" class="btn bg-pink waves-effect">PINK</button>
                                    <button type="button" class="btn bg-pink dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn bg-cyan waves-effect">CYAN</button>
                                    <button type="button" class="btn bg-cyan dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn bg-teal waves-effect">TEAL</button>
                                    <button type="button" class="btn bg-teal dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn bg-orange waves-effect">ORANGE</button>
                                    <button type="button" class="btn bg-orange dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn bg-purple waves-effect">PURPLE</button>
                                    <button type="button" class="btn bg-purple dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="javascript:void(0);">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Button Dropdowns -->
            <!-- Dropups -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                DROPUP VARIATION
                                <small>Trigger dropdown menus above elements by adding <code>.dropup</code> to the parent.</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="demo-dropup">
                                <div class="btn-group dropup">
                                    <button type="button" class="btn btn-default waves-effect">DEFAULT DROPUP</button>
                                    <button type="button" class="btn btn-default waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn btn-primary waves-effect">PRIMARY DROPUP</button>
                                    <button type="button" class="btn btn-primary waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn btn-success waves-effect">SUCCESS DROPUP</button>
                                    <button type="button" class="btn btn-success waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn btn-info waves-effect">INFO DROPUP</button>
                                    <button type="button" class="btn btn-info waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn btn-warning waves-effect">WARNING DROPUP</button>
                                    <button type="button" class="btn btn-warning waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn btn-danger waves-effect">DANGER DROPUP</button>
                                    <button type="button" class="btn btn-danger waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                            </div>
                            <h2 class="card-inside-title">
                                With Material Design Colors
                                <small>You can use material design colors which examples are <code>.bg-pink</code> class</small>
                            </h2>
                            <div class="demo-dropup">
                                <div class="btn-group dropup">
                                    <button type="button" class="btn bg-pink waves-effect">PINK DROPUP</button>
                                    <button type="button" class="btn bg-pink waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn bg-cyan waves-effect">CYAN DROPUP</button>
                                    <button type="button" class="btn bg-cyan waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn bg-teal waves-effect">TEAL DROPUP</button>
                                    <button type="button" class="btn bg-teal waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn bg-orange waves-effect">ORANGE DROPUP</button>
                                    <button type="button" class="btn bg-orange waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn bg-purple waves-effect">PURPLE DROPUP</button>
                                    <button type="button" class="btn bg-purple waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group dropup">
                                    <button type="button" class="btn bg-blue-grey waves-effect waves-light">BLUE GREY DROPUP</button>
                                    <button type="button" class="btn bg-blue-grey waves-effect waves-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Dropups -->
        </div>
    </section>

    <c:import url="/GlobalPageLink.do?link=common/include/GlobalFooter" />

    <!-- Bootstrap Core Js -->
    <script src="${CTX_PATH}/plugins/bootstrap/js/bootstrap.js?v=${SYS_VERSION}"></script>

    <!-- Select Plugin Js -->
    <script src="${CTX_PATH}/plugins/bootstrap-select/js/bootstrap-select.js?v=${SYS_VERSION}"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="${CTX_PATH}/plugins/jquery-slimscroll/jquery.slimscroll.js?v=${SYS_VERSION}"></script>

    <!-- Bootstrap Notify Plugin Js -->
    <script src="${CTX_PATH}/plugins/bootstrap-notify/bootstrap-notify.js?v=${SYS_VERSION}"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="${CTX_PATH}/plugins/node-waves/waves.js?v=${SYS_VERSION}"></script>

    <!-- Custom Js -->
    <script src="${CTX_PATH}/js/moon.js?v=${SYS_VERSION}"></script>

    <!-- Demo Js -->
    <script src="${CTX_PATH}/js/demo.js?v=${SYS_VERSION}"></script>
</body>

</html>
