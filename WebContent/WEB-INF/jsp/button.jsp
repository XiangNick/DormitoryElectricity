<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="${pageContext.request.contextPath}/assets/images/icon.ico" rel="shortcut icon">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>-电量管理系统-宿舍</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/button.css">
		<!--[if IE 7]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->


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
		<style type="text/css"></style>
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							-宿舍-
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

					<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">3</span>
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
								<img class="nav-user-photo" src="${pageContext.request.contextPath}/assets/avatars/head.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome,</small>
									${sessionScope.currentStudent.username}
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="${pageContext.request.contextPath }/student/logout.action">
										<i class="icon-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>
		<span class="message">${sessionScope.currentStudent.dormitoryId}</span>
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
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
					</div><!-- #sidebar-shortcuts -->

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
									<a href="${pageContext.request.contextPath}/student/check.action">
										<i class="icon-double-angle-right"></i>
										电量查询
									</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/page/redirect.action?page=button">
										<i class="icon-double-angle-right"></i>
										回到宿舍
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
								<a href="#">宿舍</a>
							</li>
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
								<span class="doId">${sessionScope.currentStudent.dormitoryId}</span>宿舍
								<small>
									<i class="icon-double-angle-right"></i>
									想干啥 &amp; 就干啥 
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-sm-6" id="default-buttons">
										<h3 class="row-fluid header smaller lighter purple">
											<span class="span7"> 没课了，想干嘛呢？ </span><!-- /span -->
											<span class="span5">
												<label class="pull-right inline">
													<small class="muted">电闸:</small>

													<input id="id-button-borders" checked="" type="checkbox" class="ace ace-switch ace-switch-5" />
													<span class="lbl"></span>
												</label>
											</span><!-- /span -->
										</h3>
										<span class="status"></span>
										<p class="btnList">
											<button class="btn" id="btnDota">
												<i class="icon-desktop align-top bigger-125"></i>
												打DotA
											</button>

											<button class="btn btn-primary" id="btnSong">
												<i class="icon-headphones align-top bigger-125"></i>
												听歌
											</button>

											<button class="btn btn-danger" id="btnMovie">
												看美剧
												<i class=" icon-film  align-top bigger-125 icon-on-right"></i>
											</button>
										</p>
										<span class="msg"></span>

									</div><!-- /span -->
							<div class="banner">
									<div class="col-sm-6 img" >
										<h3 class="header smaller lighter red">Image</h3>
										<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
										 <!-- Indicators -->
										      <ol class="carousel-indicators">
										        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
										        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
										        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
										      </ol>

										  <!-- Wrapper for slides -->
										  <div class="carousel-inner" role="listbox">
										    <div class="item active">
										    <!-- pc端 -->
										    <a href="#" class="banner_a img_a hidden-xs"></a>
										    <!-- 移动端 -->
										    <a href="#" class="mobie_a hidden-lg hidden-md hidden-sm">
										    	<img src="${pageContext.request.contextPath}/img/cat1.jpg">
										    </a>
										    </div>
										    <div class="item">
										   <!-- pc端 -->
   										    <a href="#" class="banner_a img_b hidden-xs"></a>
   										    <!-- 移动端 -->
   										    <a href="#" class="mobie_a hidden-lg hidden-md hidden-sm">
   										    	<img src="${pageContext.request.contextPath}/img/cat2.jpg">
   										    </a>
										    </div>
										    <div class="item">
										   <!-- pc端 -->
   										    <a href="#" class="banner_a img_c hidden-xs"></a>
   										    <!-- 移动端 -->
   										    <a href="#" class="mobie_a hidden-lg hidden-md hidden-sm">
   										    	<img src="${pageContext.request.contextPath}/img/dog1.jpg">
   										    </a>
										    </div>
										    <div class="item">
										   <!-- pc端 -->
   										    <a href="#" class="banner_a img_d hidden-xs"></a>
   										    <!-- 移动端 -->
   										    <a href="#" class="mobie_a hidden-lg hidden-md hidden-sm">
   										    	<img src="${pageContext.request.contextPath}/img/dog2.jpg">
   										    </a>
										    </div>
										  </div>
										  <!-- Controls -->
										    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
										      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										    </a>
										    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
										      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										    </a>
										</div>
									</div><!-- /span -->
								</div><!-- /row -->
								</div>
								<hr />

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script>

		<!-- <![endif]-->


		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->

		<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
				$('#loading-btn').on(ace.click_event, function () {
					var btn = $(this);
					btn.button('loading')
					setTimeout(function () {
						btn.button('reset')
					}, 2000)
				});
			
				$('#id-button-borders').attr('checked' , 'checked').on('click', function(){
						$('#default-buttons .btn').toggleClass('no-border');
				});
			})
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/button.js"></script>
</body>
</html>
