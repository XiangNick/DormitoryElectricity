<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="${pageContext.request.contextPath}/assets/images/icon.ico" rel="shortcut icon">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>宿舍电力管理系统【登录】</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->

		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath }/assets/js/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="icon-leaf green"></i>
									<span class="red">宿舍</span>
									<span class="white">电力管理系统</span>
								</h1>
								<h4 class="blue">&copy; 须佐能乎</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												请登录系统
											</h4>

											<div class="space-6"></div>

											<form action="${pageContext.request.contextPath }/student/studentLogin.action" id="loginForm" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="学号" name="student.id" id="stuId"  value="${student.id }"/>
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" name="student.password" id="psw" value="${student.password }"/>
															<i class="icon-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl">记住学号、密码</span>
														</label>

														<button type="button" class="width-35 pull-right btn btn-sm btn-primary" id="login">
															<i class="icon-key"></i>
															登录
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<div class="social-or-login center">
												<span class="bigger-110">10602</span>
											</div>

										</div><!-- /widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link">
													<i class="icon-arrow-left"></i>
													忘记密码
												</a>
											</div>

											<div>
												<a href="#" onclick="show_box('signup-box'); return false;" class="user-signup-link">
													注册用户
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="icon-key"></i>
												抱歉，该模块暂未开发!~
											</h4>

											<div class="space-6"></div>
											<p>
												抱歉，该模块暂未开发!~
											</p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="Email" />
															<i class="icon-envelope"></i>
														</span>
													</label>

													<div class="clearfix">
														<button type="button" class="width-35 pull-right btn btn-sm btn-danger">
															<i class="icon-lightbulb"></i>
															发送!
														</button>
													</div>
												</fieldset>
											</form>
										</div><!-- /widget-main -->

										<div class="toolbar center">
											<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
												回到登录
												<i class="icon-arrow-right"></i>
											</a>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="icon-group blue"></i>
												新用户注册
											</h4>

											<div class="space-6"></div>
											<p> 请注册: </p>

											<form id="registForm" action="${pageContext.request.contextPath }/student/studentRegist.action" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="学号" name="id"/>
															<i class="icon-user"></i>
														</span>
													</label>
							
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="姓名" name="username"/>
															<i class="icon-github-alt"></i>
														</span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" name="password" />
															<i class="icon-lock"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="重复密码" />
															<i class="icon-retweet"></i>
														</span>
													</label>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="电话" name="phone"/>
															<i class="icon-phone"></i>
														</span>
													</label>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="宿舍号" name="dormitoryId"/>
															<i class="icon-linkedin-sign"></i>
														</span>
													</label>


													<label class="block">
														<input type="checkbox" class="ace" />
														<span class="lbl">
															我同意
															<a href="#">电力管理规定</a>
														</span>
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="icon-refresh"></i>
															重置
														</button>

														<button type="button" class="width-65 pull-right btn btn-sm btn-success" id="registBtn">
															注册
															<i class="icon-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
												<i class="icon-arrow-left"></i>
												返回登录
											</a>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /signup-box -->
							</div><!-- /position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${pageContext.request.contextPath }/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${pageContext.request.contextPath }/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath }/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src='${pageContext.request.contextPath }/assets/js/jquery-2.0.3.min.js'></script>
		<script src='${pageContext.request.contextPath }/assets/js/jquery.form.js'></script>
		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			var loginForm = document.getElementById("loginForm");
			var registForm = document.getElementById("registForm");
			var registBtn = document.getElementById("registBtn");
			var loginBtn = document.getElementById("login");
			function show_box(id) {
			 jQuery('.widget-box.visible').removeClass('visible');
			 jQuery('#'+id).addClass('visible');
			}
			loginBtn.onclick = function(){
				$(loginForm).ajaxSubmit({
					type:'post',
					url:'${pageContext.request.contextPath }/student/studentLogin.action',
					success:function(data){
						alert(data);
						window.location.href = "${pageContext.request.contextPath }/student/check.action";
					},
					error:function(data){
						if(data !== '登录成功!'){
							alert("登录失败!");
							return;
						}
					}
				});
				return false;
			};
			$(registBtn).click(function(){
				
				$(registForm).ajaxSubmit({
					type:'post',
					url:'${pageContext.request.contextPath }/student/studentRegist.action',
					success:function(data){
						alert(data);
						window.location.href = "${pageContext.request.contextPath }/page/redirect.action?page=loginAndRegist";
					},
					error:function(data){
						if(data !== '注册成功!'){
							alert("注册失败!");
							return;
						}
					}
				});
				return false;
			});
			loginForm.onkeydown = function(e){
				if(e.keyCode == 13){
					loginBtn.click();
				}
			};
			registForm.onkeydown = function(e){
				if(e.keyCode == 13){
					$(registBtn).click();
				}
			};
			//表单验证
			var username = document.getElementById("stuId");
			var password = document.getElementById("psw");
			username.onblur = function(){
				if(username.value === ""){
					alert("学号不能为空!");
					return;
				}else if(username.value.length !== 10){
					alert("学号应等于10位!");
					return;
				}
			};
			password.onblur = function(){
				if(password.value === ""){
					alert("密码不能为空!");
					return;
				}else if(password.value.length < 6){
					alert("密码应大于6位!");
					return;
				}
			};
		</script>
		
	<!--<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>-->
</body>
</html>
