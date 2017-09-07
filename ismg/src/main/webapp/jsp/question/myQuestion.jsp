<%@ page language="Java" import="java.util.*" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.7
Version: 4.7
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8"/>
    <title>Metronic | The Ultimate Multi-purpose Bootstrap Admin Dashboard Theme | Theme #5 | Ajax
        Datatables</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="#1 selling multi-purpose bootstrap admin theme sold in themeforest marketplace packed with angularjs, material design, rtl support with over thausands of templates and ui elements and plugins to power any type of web applications including saas and admin dashboards. Preview page of Theme #5 for basic datatable samples"
          name="description"/>
    <meta content="" name="author"/>
    <link href="resources/css/commCss.css" rel="stylesheet" type="text/css"/>
    <!-- END HEAD -->

<body class="page-header-fixed page-sidebar-closed-hide-logo">
<!-- BEGIN CONTAINER -->
<div class="wrapper">
    <!-- BEGIN HEADER -->
    <header class="page-header">
        <nav class="navbar mega-menu" role="navigation">
            <div class="container-fluid">
                <div class="clearfix navbar-fixed-top">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="toggle-icon">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </span>
                    </button>
                    <!-- End Toggle Button -->
                    <!-- BEGIN LOGO -->
                    <a id="index" class="page-logo" href="index.html">
                        WSYLP BLOB </a>
                    <!-- END LOGO -->
                    <!-- BEGIN SEARCH -->
                    <form class="search" action="extra_search.html" method="GET">
                        <input type="name" class="form-control" name="query"
                               placeholder="Search...">
                        <a href="javascript:;" class="btn submit md-skip">
                            <i class="fa fa-search"></i>
                        </a>
                    </form>
                    <!-- END SEARCH -->
                    <!-- BEGIN TOPBAR ACTIONS -->
                    <div class="topbar-actions">
                        <!-- BEGIN GROUP NOTIFICATION -->
                        <div class="btn-group-notification btn-group" id="header_notification_bar">
                            <button type="button" class="btn btn-sm md-skip dropdown-toggle"
                                    data-toggle="dropdown" data-hover="dropdown"
                                    data-close-others="true">
                                <i class="icon-bell"></i>
                                <span class="badge">7</span>
                            </button>
                            <ul class="dropdown-menu-v2">
                                <li class="external">
                                    <h3>
                                        <span class="bold">12 pending</span> notifications</h3>
                                    <a href="#">view all</a>
                                </li>
                                <li>
                                    <ul class="dropdown-menu-list scroller"
                                        style="height: 250px; padding: 0;"
                                        data-handle-color="#637283">
                                        <li>
                                            <a href="javascript:;">
                                                        <span class="details">
                                                            <span class="label label-sm label-icon label-success md-skip">
                                                                <i class="fa fa-plus"></i>
                                                            </span> New user registered. </span>
                                                <span class="time">just now</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                        <span class="details">
                                                            <span class="label label-sm label-icon label-danger md-skip">
                                                                <i class="fa fa-bolt"></i>
                                                            </span> Server #12 overloaded. </span>
                                                <span class="time">3 mins</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                        <span class="details">
                                                            <span class="label label-sm label-icon label-warning md-skip">
                                                                <i class="fa fa-bell-o"></i>
                                                            </span> Server #2 not responding. </span>
                                                <span class="time">10 mins</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                        <span class="details">
                                                            <span class="label label-sm label-icon label-info md-skip">
                                                                <i class="fa fa-bullhorn"></i>
                                                            </span> Application error. </span>
                                                <span class="time">14 hrs</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                        <span class="details">
                                                            <span class="label label-sm label-icon label-danger md-skip">
                                                                <i class="fa fa-bolt"></i>
                                                            </span> Database overloaded 68%. </span>
                                                <span class="time">2 days</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                        <span class="details">
                                                            <span class="label label-sm label-icon label-danger md-skip">
                                                                <i class="fa fa-bolt"></i>
                                                            </span> A user IP blocked. </span>
                                                <span class="time">3 days</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                        <span class="details">
                                                            <span class="label label-sm label-icon label-warning md-skip">
                                                                <i class="fa fa-bell-o"></i>
                                                            </span> Storage Server #4 not responding dfdfdfd. </span>
                                                <span class="time">4 days</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                        <span class="details">
                                                            <span class="label label-sm label-icon label-info md-skip">
                                                                <i class="fa fa-bullhorn"></i>
                                                            </span> System Error. </span>
                                                <span class="time">5 days</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                        <span class="details">
                                                            <span class="label label-sm label-icon label-danger md-skip">
                                                                <i class="fa fa-bolt"></i>
                                                            </span> Storage server failed. </span>
                                                <span class="time">9 days</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- END GROUP NOTIFICATION -->
                        <!-- BEGIN GROUP INFORMATION -->
                        <div class="btn-group-red btn-group">
                            <button type="button" class="btn btn-sm md-skip dropdown-toggle"
                                    data-toggle="dropdown" data-hover="dropdown"
                                    data-close-others="true">
                                <i class="fa fa-plus"></i>
                            </button>
                            <ul class="dropdown-menu-v2" role="menu">
                                <li class="active">
                                    <a href="#">New Post</a>
                                </li>
                                <li>
                                    <a href="#">New Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">Comments
                                        <span class="badge badge-success">4</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">Feedbacks
                                        <span class="badge badge-danger">2</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- END GROUP INFORMATION -->
                        <!-- BEGIN USER PROFILE -->
                        <div class="btn-group-img btn-group">
                            <button type="button" class="btn btn-sm md-skip dropdown-toggle"
                                    data-toggle="dropdown" data-hover="dropdown"
                                    data-close-others="true">
                                <span>Hi, ${ sessionScope.user.realName }</span>
                                <img src="resources/assets/layouts/layout5/img/avatar1.jpg" alt="">
                            </button>
                            <ul class="dropdown-menu-v2" role="menu">
                                <li>
                                    <a href="page_user_profile_1.html">
                                        <i class="icon-user"></i> My Profile
                                        <span class="badge badge-danger">1</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="app_calendar.html">
                                        <i class="icon-calendar"></i> My Calendar </a>
                                </li>
                                <li>
                                    <a href="app_inbox.html">
                                        <i class="icon-envelope-open"></i> My Inbox
                                        <span class="badge badge-danger"> 3 </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="app_todo_2.html">
                                        <i class="icon-rocket"></i> My Tasks
                                        <span class="badge badge-success"> 7 </span>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="page_user_lock_1.html">
                                        <i class="icon-lock"></i> Lock Screen </a>
                                </li>
                                <li>
                                    <a href="page_user_login_1.html">
                                        <i class="icon-key"></i> Log Out </a>
                                </li>
                            </ul>
                        </div>
                        <!-- END USER PROFILE -->
                        <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                        <button type="button" class="quick-sidebar-toggler md-skip"
                                data-toggle="collapse">
                            <span class="sr-only">Toggle Quick Sidebar</span>
                            <i class="icon-logout"></i>
                        </button>
                        <!-- END QUICK SIDEBAR TOGGLER -->
                    </div>
                    <!-- END TOPBAR ACTIONS -->
                </div>
                <!-- BEGIN HEADER MENU -->
                <div class="nav-collapse collapse navbar-collapse navbar-responsive-collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown dropdown-fw dropdown-fw-disabled ">
                            <a href="javascript:;" class="text-uppercase">
                                <i class="icon-home"></i> 面板 </a>
                            <ul class="dropdown-menu dropdown-menu-fw">
                                <li>
                                    <a href="index.html">
                                        <i class="icon-bar-chart"></i> 默认 </a>
                                </li>
                                <li>
                                    <a href="dashboard_2.html">
                                        <i class="icon-bulb"></i> 头条 </a>
                                </li>
                                <li>
                                    <a href="dashboard_3.html">
                                        <i class="icon-graph"></i>公告</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown dropdown-fw dropdown-fw-disabled  active open selected  ">
                            <a href="javascript:;" class="text-uppercase">
                                <i class="icon-puzzle"></i> 知识库 </a>
                            <ul class="dropdown-menu dropdown-menu-fw">
                                <li class="dropdown more-dropdown-sub active">
                                    <a href="javascript:;">
                                        <i class="icon-diamond"></i> 问答 </a>
                                    <ul class="dropdown-menu">
                                        <li class="active">
                                            <a href="question_myQuestions.html"> 我的问答 </a>
                                        </li>
                                        <li>
                                            <a href="ui_general.html"> 前台问答 </a>
                                        </li>
                                        <li>
                                            <a href="ui_buttons.html"> js问答 </a>
                                        </li>
                                        <li>
                                            <a href="ui_buttons_spinner.html"> spring 问答 </a>
                                        </li>
                                        <li>
                                            <a href="ui_confirmations.html"> 其他 </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown more-dropdown-sub">
                                    <a href="javascript:;">
                                        <i class="icon-puzzle"></i> 异常网 </a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="components_date_time_pickers.html"> 我的异常 </a>
                                        </li>
                                        <li>
                                            <a href="components_color_pickers.html"> 数据库异常 </a>
                                        </li>
                                        <li>
                                            <a href="components_select2.html"> spring异常 </a>
                                        </li>
                                        <li>
                                            <a href="components_bootstrap_multiselect_dropdown.html">
                                                hibernate异常</a>
                                        </li>
                                        <li>
                                            <a href="components_bootstrap_select.html"> struts异常</a>
                                        </li>
                                        <li>
                                            <a href="components_multi_select.html"></a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- END HEADER MENU -->
            </div>
            <!--/container-->
        </nav>
    </header>
    <!-- END HEADER -->


    <!-- END HEADER -->
    <div class="container-fluid">
        <div class="page-content">
            <!-- BEGIN BREADCRUMBS -->
            <div class="breadcrumbs">
                <h1>Ajax Datatables</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="#">Tables</a>
                    </li>
                    <li class="active">Datatables</li>
                </ol>
                <!-- Sidebar Toggle Button -->
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target=".page-sidebar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="toggle-icon">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </span>
                </button>
                <!-- Sidebar Toggle Button -->
            </div>
            <!-- END BREADCRUMBS -->
            <!-- BEGIN SIDEBAR CONTENT LAYOUT -->
            <div class="page-content-container">
                <div class="page-content-row">
                    <!-- BEGIN PAGE SIDEBAR -->
                    <div class="page-sidebar">
                        <nav class="navbar" role="navigation">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <ul class="nav navbar-nav margin-bottom-35">
                                <li>
                                    <a href="index.html">
                                        <i class="icon-home"></i> 首页 </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-note "></i> 新增问答 </a>
                                </li>
                                <li class="active">
                                    <a href="#">
                                        <i class="icon-user"></i>我的问答 </a>
                                </li>
                                <li>
                                    <a href="#"> <i class="icon-basket "></i> 回收站 </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-bell"></i> 草稿箱 </a>
                                </li>
                            </ul>
                            <h3>Quick Actions</h3>
                            <ul class="nav navbar-nav">
                                <li>
                                    <a href="#">
                                        <i class="icon-envelope "></i> 收件箱
                                        <label class="label label-danger">New</label>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-paper-clip "></i> 任务 </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-star"></i> 收藏 </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-pin"></i> 通知
                                        <span class="badge badge-success">2</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <!-- END PAGE SIDEBAR -->
                    <div class="page-content-col">
                        <!-- BEGIN PAGE BASE CONTENT -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="portlet light portlet-fit portlet-datatable bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-settings font-dark"></i>
                                            <span class="caption-subject font-dark sbold uppercase">用户数据</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group btn-group-devided"
                                                 data-toggle="buttons">
                                                <label class="btn btn-transparent grey-salsa btn-outline btn-circle btn-sm active">
                                                    <input type="radio" name="options"
                                                           class="toggle"
                                                           id="option1">Actions</label>
                                                <label class="btn btn-transparent grey-salsa btn-outline btn-circle btn-sm">
                                                    <input type="radio" name="options"
                                                           class="toggle"
                                                           id="option2">Settings</label>
                                            </div>
                                            <div class="btn-group">
                                                <a class="btn red btn-outline btn-circle"
                                                   href="javascript:;" data-toggle="dropdown">
                                                    <i class="fa fa-share"></i>
                                                    <span class="hidden-xs"> Tools </span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <ul class="dropdown-menu pull-right">
                                                    <li>
                                                        <a href="javascript:;"> Export to Excel </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;"> Export to CSV </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;"> Export to XML </a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="javascript:;"> Print Invoices </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="table-container">
                                            <div class="table-actions-wrapper">
                                                <select class="table-group-action-input form-control input-inline input-small input-sm">
                                                    <option value="">Select...</option>
                                                    <option value="Cancel">Cancel</option>
                                                    <option value="Cancel">Hold</option>
                                                    <option value="Cancel">On Hold</option>
                                                    <option value="Close">Close</option>
                                                </select>
                                                <button class="btn btn-sm green table-group-action-submit">
                                                    <i class="fa fa-check"></i> Submit
                                                </button>
                                            </div>
                                            <table class="table table-striped table-bordered table-hover table-checkable"
                                                   id="datatable_ajax">
                                                <thead>
                                                <tr role="row" class="heading">
                                                    <th width="2%"> 序号</th>
                                                    <th width="8%"> 登录名</th>
                                                    <th width="10%"> 姓名</th>
                                                    <th width="10%"> 等级</th>
                                                    <th width="10%"> 工作地址</th>
                                                    <th width="10%"> 工作性质</th>
                                                    <th width="10%"> 创建时间</th>
                                                    <th width="10%"> 更新时间</th>
                                                    <th width="10%"> 操作</th>
                                                </tr>
                                                <tr role="row" class="filter">
                                                    <td></td>
                                                    <td><input type="text"
                                                               class="form-control form-filter input-sm"
                                                               name="loginName" id="loginName"></td>
                                                    <td><input type="text"
                                                               class="form-control form-filter input-sm"
                                                               name="realName" id="realName"></td>
                                                    <td><input type="text"
                                                               class="form-control form-filter input-sm"
                                                               name="level" id="level"></td>
                                                    <td><input type="text"
                                                               class="form-control form-filter input-sm"
                                                               name="workAddress" id="workAddress"></td>
                                                    <td><input type="text"
                                                               class="form-control form-filter input-sm"
                                                               name="workType"></td>
                                                    <td>
                                                        <div class="input-group date date-picker margin-bottom-5"
                                                             data-date-format="dd/mm/yyyy">
                                                            <input type="text"
                                                                   class="form-control form-filter input-sm"
                                                                   readonly name="startTime" id="startTime"
                                                                   placeholder="From">
                                                            <span class="input-group-btn">
                                                                    <button class="btn btn-sm default"
                                                                            type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                        </div>
                                                        <div class="input-group date date-picker"
                                                             data-date-format="dd/mm/yyyy">
                                                            <input type="text"
                                                                   class="form-control form-filter input-sm"
                                                                   readonly name="endtime" id="endTime"
                                                                   placeholder="To">
                                                            <span class="input-group-btn">
                                                                    <button class="btn btn-sm default"
                                                                            type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <div class="margin-bottom-5">
                                                            <button class="btn btn-sm green btn-outline filter-submit margin-bottom">
                                                                <i class="fa fa-search"></i> Search</button>
                                                        </div>
                                                        <button class="btn btn-sm red btn-outline filter-cancel">
                                                            <i class="fa fa-times"></i> Reset</button>
                                                    </td>
                                                </tr>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END PAGE BASE CONTENT -->
                    </div>
                </div>
            </div>
            <!-- END SIDEBAR CONTENT LAYOUT -->
        </div>
        <!-- BEGIN FOOTER -->
        <p class="copyright"> 2016 &copy; Metronic Theme By
            <a target="_blank" href="http://keenthemes.com">Keenthemes</a> &nbsp;|&nbsp;
            <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
               title="Purchase Metronic just for 27$ and get lifetime updates for free"
               target="_blank">Purchase Metronic!</a>
        </p>
        <a href="#index" class="go2top">
            <i class="icon-arrow-up"></i>
        </a>
        <!-- END FOOTER -->
    </div>
</div>
<!-- END CONTAINER -->
<!-- BEGIN QUICK SIDEBAR -->
<a href="javascript:;" class="page-quick-sidebar-toggler">
    <i class="icon-login"></i>
</a>
<div class="page-quick-sidebar-wrapper" data-close-on-body-click="false">
    <div class="page-quick-sidebar">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="javascript:;" data-target="#quick_sidebar_tab_1" data-toggle="tab"> Users
                    <span class="badge badge-danger">2</span>
                </a>
            </li>
            <li>
                <a href="javascript:;" data-target="#quick_sidebar_tab_2" data-toggle="tab"> Alerts
                    <span class="badge badge-success">7</span>
                </a>
            </li>
            <li class="dropdown">
                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> More
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="dropdown-menu pull-right">
                    <li>
                        <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                            <i class="icon-bell"></i> Alerts </a>
                    </li>
                    <li>
                        <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                            <i class="icon-info"></i> Notifications </a>
                    </li>
                    <li>
                        <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                            <i class="icon-speech"></i> Activities </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                            <i class="icon-settings"></i> Settings </a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active page-quick-sidebar-chat" id="quick_sidebar_tab_1">
                <div class="page-quick-sidebar-chat-users" data-rail-color="#ddd"
                     data-wrapper-class="page-quick-sidebar-list">
                    <h3 class="list-heading">Staff</h3>
                    <ul class="media-list list-items">
                        <li class="media">
                            <div class="media-status">
                                <span class="badge badge-success">8</span>
                            </div>
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar3.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Bob Nilson</h4>
                                <div class="media-heading-sub"> Project Manager</div>
                            </div>
                        </li>
                        <li class="media">
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar1.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Nick Larson</h4>
                                <div class="media-heading-sub"> Art Director</div>
                            </div>
                        </li>
                        <li class="media">
                            <div class="media-status">
                                <span class="badge badge-danger">3</span>
                            </div>
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar4.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Deon Hubert</h4>
                                <div class="media-heading-sub"> CTO</div>
                            </div>
                        </li>
                        <li class="media">
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar2.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Ella Wong</h4>
                                <div class="media-heading-sub"> CEO</div>
                            </div>
                        </li>
                    </ul>
                    <h3 class="list-heading">Customers</h3>
                    <ul class="media-list list-items">
                        <li class="media">
                            <div class="media-status">
                                <span class="badge badge-warning">2</span>
                            </div>
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar6.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Lara Kunis</h4>
                                <div class="media-heading-sub"> CEO, Loop Inc</div>
                                <div class="media-heading-small"> Last seen 03:10 AM</div>
                            </div>
                        </li>
                        <li class="media">
                            <div class="media-status">
                                <span class="label label-sm label-success">new</span>
                            </div>
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar7.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Ernie Kyllonen</h4>
                                <div class="media-heading-sub"> Project Manager,
                                    <br> SmartBizz PTL
                                </div>
                            </div>
                        </li>
                        <li class="media">
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar8.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Lisa Stone</h4>
                                <div class="media-heading-sub"> CTO, Keort Inc</div>
                                <div class="media-heading-small"> Last seen 13:10 PM</div>
                            </div>
                        </li>
                        <li class="media">
                            <div class="media-status">
                                <span class="badge badge-success">7</span>
                            </div>
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar9.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Deon Portalatin</h4>
                                <div class="media-heading-sub"> CFO, H&D LTD</div>
                            </div>
                        </li>
                        <li class="media">
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar10.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Irina Savikova</h4>
                                <div class="media-heading-sub"> CEO, Tizda Motors Inc</div>
                            </div>
                        </li>
                        <li class="media">
                            <div class="media-status">
                                <span class="badge badge-danger">4</span>
                            </div>
                            <img class="media-object"
                                 src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar11.jpg"
                                 alt="...">
                            <div class="media-body">
                                <h4 class="media-heading">Maria Gomez</h4>
                                <div class="media-heading-sub"> Manager, Infomatic Inc</div>
                                <div class="media-heading-small"> Last seen 03:10 AM</div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="page-quick-sidebar-item">
                    <div class="page-quick-sidebar-chat-user">
                        <div class="page-quick-sidebar-nav">
                            <a href="javascript:;" class="page-quick-sidebar-back-to-list">
                                <i class="icon-arrow-left"></i>Back</a>
                        </div>
                        <div class="page-quick-sidebar-chat-user-messages">
                            <div class="post out">
                                <img class="avatar" alt=""
                                     src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar3.jpg"/>
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                    <span class="datetime">20:15</span>
                                    <span class="body"> When could you send me the report ? </span>
                                </div>
                            </div>
                            <div class="post in">
                                <img class="avatar" alt=""
                                     src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar2.jpg"/>
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a href="javascript:;" class="name">Ella Wong</a>
                                    <span class="datetime">20:15</span>
                                    <span class="body"> Its almost done. I will be sending it shortly </span>
                                </div>
                            </div>
                            <div class="post out">
                                <img class="avatar" alt=""
                                     src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar3.jpg"/>
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                    <span class="datetime">20:15</span>
                                    <span class="body"> Alright. Thanks! :) </span>
                                </div>
                            </div>
                            <div class="post in">
                                <img class="avatar" alt=""
                                     src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar2.jpg"/>
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a href="javascript:;" class="name">Ella Wong</a>
                                    <span class="datetime">20:16</span>
                                    <span class="body"> You are most welcome. Sorry for the delay. </span>
                                </div>
                            </div>
                            <div class="post out">
                                <img class="avatar" alt=""
                                     src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar3.jpg"/>
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                    <span class="datetime">20:17</span>
                                    <span class="body"> No probs. Just take your time :) </span>
                                </div>
                            </div>
                            <div class="post in">
                                <img class="avatar" alt=""
                                     src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar2.jpg"/>
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a href="javascript:;" class="name">Ella Wong</a>
                                    <span class="datetime">20:40</span>
                                    <span class="body"> Alright. I just emailed it to you. </span>
                                </div>
                            </div>
                            <div class="post out">
                                <img class="avatar" alt=""
                                     src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar3.jpg"/>
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                    <span class="datetime">20:17</span>
                                    <span class="body"> Great! Thanks. Will check it right away. </span>
                                </div>
                            </div>
                            <div class="post in">
                                <img class="avatar" alt=""
                                     src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar2.jpg"/>
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a href="javascript:;" class="name">Ella Wong</a>
                                    <span class="datetime">20:40</span>
                                    <span class="body"> Please let me know if you have any comment. </span>
                                </div>
                            </div>
                            <div class="post out">
                                <img class="avatar" alt=""
                                     src="http://localhost:8080/ismg/resources/assets/layouts/layout/img/avatar3.jpg"/>
                                <div class="message">
                                    <span class="arrow"></span>
                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                    <span class="datetime">20:17</span>
                                    <span class="body"> Sure. I will check and buzz you if anything needs to be corrected. </span>
                                </div>
                            </div>
                        </div>
                        <div class="page-quick-sidebar-chat-user-form">
                            <div class="input-group">
                                <input type="text" class="form-control"
                                       placeholder="Type a message here...">
                                <div class="input-group-btn">
                                    <button type="button" class="btn green">
                                        <i class="icon-paper-clip"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane page-quick-sidebar-alerts" id="quick_sidebar_tab_2">
                <div class="page-quick-sidebar-alerts-list">
                    <h3 class="list-heading">General</h3>
                    <ul class="feeds list-items">
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-info">
                                            <i class="fa fa-check"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> You have 4 pending tasks.
                                            <span class="label label-sm label-warning "> Take action
                                                        <i class="fa fa-share"></i>
                                                    </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> Just now</div>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <div class="col1">
                                    <div class="cont">
                                        <div class="cont-col1">
                                            <div class="label label-sm label-success">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </div>
                                        </div>
                                        <div class="cont-col2">
                                            <div class="desc"> Finance Report for year 2013 has been
                                                released.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col2">
                                    <div class="date"> 20 mins</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-danger">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> You have 5 pending membership that
                                            requires a quick review.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> 24 mins</div>
                            </div>
                        </li>
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-info">
                                            <i class="fa fa-shopping-cart"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> New order received with
                                            <span class="label label-sm label-success"> Reference Number: DR23923 </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> 30 mins</div>
                            </div>
                        </li>
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-success">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> You have 5 pending membership that
                                            requires a quick review.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> 24 mins</div>
                            </div>
                        </li>
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-info">
                                            <i class="fa fa-bell-o"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> Web server hardware needs to be upgraded.
                                            <span class="label label-sm label-warning"> Overdue </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> 2 hours</div>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <div class="col1">
                                    <div class="cont">
                                        <div class="cont-col1">
                                            <div class="label label-sm label-default">
                                                <i class="fa fa-briefcase"></i>
                                            </div>
                                        </div>
                                        <div class="cont-col2">
                                            <div class="desc"> IPO Report for year 2013 has been
                                                released.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col2">
                                    <div class="date"> 20 mins</div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <h3 class="list-heading">System</h3>
                    <ul class="feeds list-items">
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-info">
                                            <i class="fa fa-check"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> You have 4 pending tasks.
                                            <span class="label label-sm label-warning "> Take action
                                                        <i class="fa fa-share"></i>
                                                    </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> Just now</div>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <div class="col1">
                                    <div class="cont">
                                        <div class="cont-col1">
                                            <div class="label label-sm label-danger">
                                                <i class="fa fa-bar-chart-o"></i>
                                            </div>
                                        </div>
                                        <div class="cont-col2">
                                            <div class="desc"> Finance Report for year 2013 has been
                                                released.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col2">
                                    <div class="date"> 20 mins</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-default">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> You have 5 pending membership that
                                            requires a quick review.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> 24 mins</div>
                            </div>
                        </li>
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-info">
                                            <i class="fa fa-shopping-cart"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> New order received with
                                            <span class="label label-sm label-success"> Reference Number: DR23923 </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> 30 mins</div>
                            </div>
                        </li>
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-success">
                                            <i class="fa fa-user"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> You have 5 pending membership that
                                            requires a quick review.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> 24 mins</div>
                            </div>
                        </li>
                        <li>
                            <div class="col1">
                                <div class="cont">
                                    <div class="cont-col1">
                                        <div class="label label-sm label-warning">
                                            <i class="fa fa-bell-o"></i>
                                        </div>
                                    </div>
                                    <div class="cont-col2">
                                        <div class="desc"> Web server hardware needs to be upgraded.
                                            <span class="label label-sm label-default "> Overdue </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col2">
                                <div class="date"> 2 hours</div>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <div class="col1">
                                    <div class="cont">
                                        <div class="cont-col1">
                                            <div class="label label-sm label-info">
                                                <i class="fa fa-briefcase"></i>
                                            </div>
                                        </div>
                                        <div class="cont-col2">
                                            <div class="desc"> IPO Report for year 2013 has been
                                                released.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col2">
                                    <div class="date"> 20 mins</div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tab-pane page-quick-sidebar-settings" id="quick_sidebar_tab_3">
                <div class="page-quick-sidebar-settings-list">
                    <h3 class="list-heading">General Settings</h3>
                    <ul class="list-items borderless">
                        <li> Enable Notifications
                            <input type="checkbox" class="make-switch" checked data-size="small"
                                   data-on-color="success" data-on-text="ON"
                                   data-off-color="default" data-off-text="OFF"></li>
                        <li> Allow Tracking
                            <input type="checkbox" class="make-switch" data-size="small"
                                   data-on-color="info" data-on-text="ON" data-off-color="default"
                                   data-off-text="OFF"></li>
                        <li> Log Errors
                            <input type="checkbox" class="make-switch" checked data-size="small"
                                   data-on-color="danger" data-on-text="ON" data-off-color="default"
                                   data-off-text="OFF"></li>
                        <li> Auto Sumbit Issues
                            <input type="checkbox" class="make-switch" data-size="small"
                                   data-on-color="warning" data-on-text="ON"
                                   data-off-color="default" data-off-text="OFF"></li>
                        <li> Enable SMS Alerts
                            <input type="checkbox" class="make-switch" checked data-size="small"
                                   data-on-color="success" data-on-text="ON"
                                   data-off-color="default" data-off-text="OFF"></li>
                    </ul>
                    <h3 class="list-heading">System Settings</h3>
                    <ul class="list-items borderless">
                        <li> Security Level
                            <select class="form-control input-inline input-sm input-small">
                                <option value="1">Normal</option>
                                <option value="2" selected>Medium</option>
                                <option value="e">High</option>
                            </select>
                        </li>
                        <li> Failed Email Attempts
                            <input class="form-control input-inline input-sm input-small"
                                   value="5"/></li>
                        <li> Secondary SMTP Port
                            <input class="form-control input-inline input-sm input-small"
                                   value="3560"/></li>
                        <li> Notify On System Error
                            <input type="checkbox" class="make-switch" checked data-size="small"
                                   data-on-color="danger" data-on-text="ON" data-off-color="default"
                                   data-off-text="OFF"></li>
                        <li> Notify On SMTP Error
                            <input type="checkbox" class="make-switch" checked data-size="small"
                                   data-on-color="warning" data-on-text="ON"
                                   data-off-color="default" data-off-text="OFF"></li>
                    </ul>
                    <div class="inner-content">
                        <button class="btn btn-success">
                            <i class="icon-settings"></i> Save Changes
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END QUICK SIDEBAR -->

<%@ include file="../comm/quickNav.jsp" %>
<script src="resources/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="resources/js/moment.js" type="text/javascript"></script>
<script src="resources/js/myQuestion.js" type="text/javascript"></script>
<script src="resources/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
        type="text/javascript"></script>
<script src="resources/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="resources/assets/global/plugins/bootstrap/js/bootstrap.min.js"
        type="text/javascript"></script>
<script src="resources/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="resources/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
<script src="resources/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="resources/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
        type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="resources/assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="resources/assets/global/plugins/datatables/datatables.min.js"
        type="text/javascript"></script>
<script src="resources/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
        type="text/javascript"></script>
<script src="resources/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
        type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="resources/assets/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="resources/assets/layouts/layout5/scripts/layout.min.js"
        type="text/javascript"></script>
<script src="resources/assets/layouts/global/scripts/quick-sidebar.min.js"
        type="text/javascript"></script>
<script src="resources/assets/layouts/global/scripts/quick-nav.min.js"
        type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>