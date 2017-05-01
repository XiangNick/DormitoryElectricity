<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="${pageContext.request.contextPath}/assets/images/icon.ico" rel="shortcut icon">
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>宿舍电量后台管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- basic styles -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
    <!--[if IE 7]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
    <!-- page specific plugin styles -->
    <!-- fonts -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css" />
    <!--[if lte IE 8]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css" />
		<![endif]-->
    <!-- inline styles related to this page -->
    <!-- ace settings handler -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath}/assets/js/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
		<![endif]-->
	<style type="text/css">
		.input-elm{
			margin-top: 5px;
			transform:translateX(5%);
		}
		#searchmodfbox_grid-table{
			width: 450px; 
			height: auto; 
			z-index: 1050; 
			overflow: hidden; 
			top: 25%; 
			right:25%; 
			display: none; 
			position: absolute;
			float:right;
		}
	</style>
</head>

<body>
   
    <div class="navbar navbar-default" id="navbar">
        <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {}
        </script>
        <div class="navbar-container" id="navbar-container">
            <div class="navbar-header pull-left">
                <a href="#" class="navbar-brand">
                    <small>
							<i class="icon-leaf"></i>
							-宿舍电量管理后台-
						</small>
                </a>
                <!-- /.brand -->
            </div>
            <!-- /.navbar-header -->
            <div class="navbar-header pull-right" role="navigation">
                <ul class="nav ace-nav">
                    <!--<li class="grey">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-tasks"></i>
                            <span class="badge badge-grey">4</span>
                        </a>
                        <ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                            <li class="dropdown-header">
                                <i class="icon-ok"></i> 4 Tasks to complete
                            </li>
                            <li>
                                <a href="#">
                                    <div class="clearfix">
                                        <span class="pull-left">Software Update</span>
                                        <span class="pull-right">65%</span>
                                    </div>
                                    <div class="progress progress-mini ">
                                        <div style="width:65%" class="progress-bar "></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="clearfix">
                                        <span class="pull-left">Hardware Upgrade</span>
                                        <span class="pull-right">35%</span>
                                    </div>
                                    <div class="progress progress-mini ">
                                        <div style="width:35%" class="progress-bar progress-bar-danger"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="clearfix">
                                        <span class="pull-left">Unit Testing</span>
                                        <span class="pull-right">15%</span>
                                    </div>
                                    <div class="progress progress-mini ">
                                        <div style="width:15%" class="progress-bar progress-bar-warning"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="clearfix">
                                        <span class="pull-left">Bug Fixes</span>
                                        <span class="pull-right">90%</span>
                                    </div>
                                    <div class="progress progress-mini progress-striped active">
                                        <div style="width:90%" class="progress-bar progress-bar-success"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
										See tasks with details
										<i class="icon-arrow-right"></i>
									</a>
                            </li>
                        </ul>
                    </li>
                    <li class="purple">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-bell-alt icon-animated-bell"></i>
                            <span class="badge badge-important">8</span>
                        </a>
                        <ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                            <li class="dropdown-header">
                                <i class="icon-warning-sign"></i> 8 Notifications
                            </li>
                            <li>
                                <a href="#">
                                    <div class="clearfix">
                                        <span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												New Comments
											</span>
                                        <span class="pull-right badge badge-info">+12</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="btn btn-xs btn-primary icon-user"></i> Bob just signed up as an editor ...
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="clearfix">
                                        <span class="pull-left">
												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
												New Orders
											</span>
                                        <span class="pull-right badge badge-success">+8</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="clearfix">
                                        <span class="pull-left">
												<i class="btn btn-xs no-hover btn-info icon-twitter"></i>
												Followers
											</span>
                                        <span class="pull-right badge badge-info">+11</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
										See all notifications
										<i class="icon-arrow-right"></i>
									</a>
                            </li>
                        </ul>
                    </li>-->
                    <li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-envelope-alt"></i>
									3 Messages
								</li>

								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">主任:</span>
												宿舍没人的时候关好门窗和电器.
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>a moment ago</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">宿管阿姨:</span>
												宿舍禁止使用违规电器!注意用电安全!
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>20 minutes ago</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/assets/avatars/avatar1.png" class="msg-photo" alt="Bob's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">辅导员:</span>
												注意宿舍卫生！中午一点半我来检查宿舍!
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>10:15 am</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="javascript:alert('目前无更多消息!')">
										查看更多消息
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

                    <li class="light-blue">
                        <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                            <img class="nav-user-photo" src="${pageContext.request.contextPath}/assets/avatars/user.jpg" alt="Jason's Photo" />
                            <span class="user-info">
									<small>Welcome,</small>
									${sessionScope.currentStudent.username}
								</span>
                            <i class="icon-caret-down"></i>
                        </a>
                        <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                            <li>
                                <a href="#">
                                    <i class="icon-cog"></i> Settings
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-user"></i> Profile
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                               <a href="${pageContext.request.contextPath }/student/logout.action">
                                    <i class="icon-off"></i> Logout
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- /.ace-nav -->
            </div>
            <!-- /.navbar-header -->
        </div>
        <!-- /.container -->
    </div>
    <div class="main-container" id="main-container">
        <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {}
        </script>
        <div class="main-container-inner">
            <a class="menu-toggler" id="menu-toggler" href="#">
                <span class="menu-text"></span>
            </a>
            <div class="sidebar" id="sidebar">
                <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'fixed')
                } catch (e) {}
                </script>
                <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                    <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                        <button class="btn btn-success">
                            <i class="icon-signal"></i>
                        </button>
                        <button class="btn btn-info">
                            <i class="icon-pencil"></i>
                        </button>
                        <button class="btn btn-warning">
                            <i class="icon-group"></i>
                        </button>
                        <button class="btn btn-danger">
                            <i class="icon-cogs"></i>
                        </button>
                    </div>
                    <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                        <span class="btn btn-success"></span>
                        <span class="btn btn-info"></span>
                        <span class="btn btn-warning"></span>
                        <span class="btn btn-danger"></span>
                    </div>
                </div>
                <!-- #sidebar-shortcuts -->
            	<ul class="nav nav-list">
						<li class="active">
							<a href="index.html">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 控制台 </span>
							</a>
						</li>


						<li class="active open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 表格 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">

								<li class="active">
									<a href="${pageContext.request.contextPath}/page/redirect.action?page=admin">
										<i class="icon-double-angle-right"></i>
										宿舍管理
									</a>
								</li>
							</ul>
						</li>
							</ul>
						</li>
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">主页</a>
							</li>

							<li>
								<a href="#">表格</a>
							</li>
							<li class="active">宿舍管理</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								宿舍管理 
								<small>
									<i class="icon-double-angle-right"></i>
									
								</small>
							</h1>
						</div><!-- /.page-header -->

                    <!-- /.page-header -->
                    <div class="row">
                        <div class="col-xs-12">
                            <!-- PAGE CONTENT BEGINS -->
                            <div class="col-sm-6">
                                <div class="widget-box">
                                    <div class="widget-header header-color-green2">
                                        <h4 class="lighter smaller">宿舍管理</h4>
                                    </div>
                                    <div class="widget-body">
                                        <div class="widget-main padding-8">
                                            <div id="tree2" class="tree"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                        var $assets = "assets"; //this will be used in fuelux.tree-sampledata.js
                        </script>
                        <!-- PAGE CONTENT ENDS -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.page-content -->
        </div>
        <!-- /.main-content -->
        <div class="ace-settings-container" id="ace-settings-container">
            <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                <i class="icon-cog bigger-150"></i>
            </div>
            <div class="ace-settings-box" id="ace-settings-box">
                <div>
                    <div class="pull-left">
                        <select id="skin-colorpicker" class="hide">
                            <option data-skin="default" value="#438EB9">#438EB9</option>
                            <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                            <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                        </select>
                    </div>
                    <span>&nbsp; Choose Skin</span>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                    <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                    <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                    <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                    <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                </div>
                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                    <label class="lbl" for="ace-settings-add-container">
                        Inside
                        <b>.container</b>
                    </label>
                </div>
            </div>
        </div>
        <!-- /#ace-settings-container -->
    </div>
    <!-- /.main-container-inner -->
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>
    </div>
    <!-- /.main-container -->
    <!-- basic scripts -->
    <!--[if !IE]> -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <!-- <![endif]-->
    <!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->
    <!--[if !IE]> -->
    <script type="text/javascript">
    window.jQuery || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
    </script>
    <!-- <![endif]-->
    <!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
    <script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/typeahead-bs2.min.js"></script>
    <!-- page specific plugin scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/fuelux/data/fuelux.tree-sampledata.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/fuelux/fuelux.tree.min.js"></script>
    <script type="text/javascript">
    var tree_data_2 = {
            'dorimitory': {
                name: '宿舍',
                type: 'folder',
                'icon-class': 'blue'
            }
        }
    
    var json =${dorJson};
    console.log(${treeData});
   	tree_data_2['dorimitory']['additionalParameters'] = {
   	        'children':json
   	    }
    
    var treeDataSource2 = new DataSourceTree({
        data: tree_data_2
    });

        // $(".widget-body").on("click",function(e){
        // 	if(e.target && e.target.nodeName == 'DIV'){
        // 		$(this).on("mousedown",function(e){
        // 			alert(e);
        // 		})
        // 	}
        // })
    </script>
    <!-- ace scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
    jQuery(function($) {

        $('#tree1').ace_tree({
            dataSource: treeDataSource,
            multiSelect: true,
            loadingHTML: '<div class="tree-loading"><i class="icon-refresh icon-spin blue"></i></div>',
            'open-icon': 'icon-minus',
            'close-icon': 'icon-plus',
            'selectable': true,
            'selected-icon': 'icon-ok',
            'unselected-icon': 'icon-remove'
        });

        $('#tree2').ace_tree({
            dataSource: treeDataSource2,
            loadingHTML: '<div class="tree-loading"><i class="icon-refresh icon-spin blue"></i></div>',
            'open-icon': 'icon-folder-open',
            'close-icon': 'icon-folder-close',
            'selectable': false,
            'selected-icon': null,
            'unselected-icon': null
        });



        /**
        $('#tree1').on('loaded', function (evt, data) {
        });

        $('#tree1').on('opened', function (evt, data) {
        });

        $('#tree1').on('closed', function (evt, data) {
        });

        $('#tree1').on('selected', function (evt, data) {
        });
        */
    });
    </script>
    <div class="ui-widget ui-widget-content ui-corner-all ui-jqdialog jqmID1" id="searchmodfbox_grid-table" dir="ltr" tabindex="-1" role="dialog" aria-labelledby="searchhdfbox_grid-table" aria-hidden="false">
        <div class="ui-jqdialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix" id="searchhdfbox_grid-table" style="cursor: move;">
            <div class="widget-header"><span class="ui-jqdialog-title" style="float: left;">新增宿舍</span>
			<a href="javascript:void(0)" class="ui-jqdialog-titlebar-close ui-corner-all" style="position: absolute;top:50%;transform:translateY(-50%);" id="closeBtn"></a>
            </div></div>
        <div class="ui-jqdialog-content ui-widget-content" id="searchcntfbox_grid-table">
            <div>
                <div id="fbox_grid-table" class="searchFilter" style="overflow:auto">
                    <table class="group ui-widget ui-widget-content" style="border:0px none;" >
                        <tbody>
                            <tr class="error" style="display:none;">
                                <th colspan="5" class="ui-state-error" align="left"></th>
                            </tr>
                            <tr>
                                <td class="first"></td>
                                <td class="data">
                                <form  method="post" id="dForm">
                                    <input type="text" id="jqg1" name="dormitoryId" role="textbox" class="input-elm" placeholder="宿舍号">
                                    <input type="text" id="jqg2" name="ridgepole" role="textbox" class="input-elm"placeholder="楼栋号">
                                </form>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <table class="EditTable"  style="border:0px none;margin-top:5px" id="fbox_grid-table_2">
                    <tbody>
                        <tr>
                            <td colspan="2">
                                <hr class="ui-widget-content" style="margin:1px">
                            </td>
                        </tr>
                        <tr>
                            <a href="javascript:void(0)" id="fbox_grid-table_search" class="fm-button ui-state-default ui-corner-all fm-button-icon-right ui-reset btn btn-sm btn-purple" style="display:block;margin:0 auto;">增加宿舍</a>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="jqResize ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se"></div>
    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery.form.js"></script>
<script type="text/javascript">
	$(function(){
		var $parent = $("#searchmodfbox_grid-table");
		$(".widget-body").bind("contextmenu", function() {
		    return false;
		});
		$(".tree-folder").on("mousedown", "div:eq(0)", function(e) {
		        if (e.which === 3) {
		            // alert(4);
		           $("body")[0].appendChild($parent[0]);
		            $parent.slideDown('slow', function() {
		            	$(this).css({
		            	display: 'block'
		            });
		            });
		        }
		    })

		$("#closeBtn").on("click",function(){

			
			$parent.fadeOut('slow',function(){
				$("body")[0].removeChild($parent[0]);
			});

		});
		$("#fbox_grid-table_search").on("click",function(){
			$("#dForm").ajaxSubmit({
				url:"${pageContext.request.contextPath}/dorimitory/addDormitory.action",
				success:function(data){
					 alert(data);
					 location.reload();
				}
			});
			// alert(1);
		})
	})


</script>
</html>
