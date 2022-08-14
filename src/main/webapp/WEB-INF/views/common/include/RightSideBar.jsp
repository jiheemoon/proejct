<%--
  Class Name : RightSideMenu.jsp
  Description : 우측메뉴(include)
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- Right Sidebar -->
<aside id="rightsidebar" class="right-sidebar">
    <ul class="nav nav-tabs tab-nav-right" role="tablist">
        <li role="presentation" class="active"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
        <li role="presentation"><a href="#skins" data-toggle="tab">SKINS</a></li>
    </ul>
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane fade in active" id="settings">
            <div class="demo-settings">
                <p>GENERAL SETTINGS</p>
                <ul class="setting-list">
                    <li>
                        <span>업무활동 연속등록</span>
                        <div class="switch">
                            <label><input type="checkbox" name="isActivityRegistContinue"><span class="lever switch-col-haesol"></span></label>
                        </div>
                    </li>
                    <li>
                        <span>업무활동 검색결과 표시건수</span>
                        <div class="form-group" style="margin-top:10px;">
                            <select id="select-search-rows" class="form-control show-tick" name="records">
                                <option value="15" selected>15건</option>
                                <option value="20">20건</option>
                                <option value="30">30건</option>
                                <option value="50">50건</option>
                            </select>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
<!--         <div role="tabpanel" class="tab-pane fade in active" id="settings"> -->
<!--             <div class="demo-settings"> -->
<!--                 <p>GENERAL SETTINGS</p> -->
<!--                 <ul class="setting-list"> -->
<!--                     <li> -->
<!--                         <span>Report Panel Usage</span> -->
<!--                         <div class="switch"> -->
<!--                             <label><input type="checkbox" checked><span class="lever"></span></label> -->
<!--                         </div> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <span>Email Redirect</span> -->
<!--                         <div class="switch"> -->
<!--                             <label><input type="checkbox"><span class="lever"></span></label> -->
<!--                         </div> -->
<!--                     </li> -->
<!--                 </ul> -->
<!--                 <p>SYSTEM SETTINGS</p> -->
<!--                 <ul class="setting-list"> -->
<!--                     <li> -->
<!--                         <span>Notifications</span> -->
<!--                         <div class="switch"> -->
<!--                             <label><input type="checkbox" checked><span class="lever"></span></label> -->
<!--                         </div> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <span>Auto Updates</span> -->
<!--                         <div class="switch"> -->
<!--                             <label><input type="checkbox" checked><span class="lever"></span></label> -->
<!--                         </div> -->
<!--                     </li> -->
<!--                 </ul> -->
<!--                 <p>ACCOUNT SETTINGS</p> -->
<!--                 <ul class="setting-list"> -->
<!--                     <li> -->
<!--                         <span>Offline</span> -->
<!--                         <div class="switch"> -->
<!--                             <label><input type="checkbox"><span class="lever"></span></label> -->
<!--                         </div> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <span>Location Permission</span> -->
<!--                         <div class="switch"> -->
<!--                             <label><input type="checkbox" checked><span class="lever"></span></label> -->
<!--                         </div> -->
<!--                     </li> -->
<!--                 </ul> -->
<!--             </div> -->
<!--         </div> -->
        <div role="tabpanel" class="tab-pane fade" id="skins">
            <ul class="demo-choose-skin">
                <li data-theme="haesol">
                    <div class="white"></div>
                    <span>Haesol</span>
                </li>
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
                <li data-theme="blue-grey" class="active">
                    <div class="blue-grey"></div>
                    <span>Blue Grey</span>
                </li>
                <li data-theme="black">
                    <div class="black"></div>
                    <span>Black</span>
                </li>
            </ul>
        </div>
    </div>
</aside>
<!-- #END# Right Sidebar -->