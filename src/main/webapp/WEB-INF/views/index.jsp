<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的简历</title>
<!-- for-mobile-apps -->
<!--width 属性控制设备的宽度。假设您的网站将被带有不同屏幕分辨率的设备浏览，那么将它设置为 device-width 可以确保它能正确呈现在不同设备上。initial-scale=1.0 确保网页加载时，以 1:1 的比例呈现，不会有任何的缩放 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 引用jQuery原生的js文件 -->
<script type="text/javascript" src="plugins/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="plugins/jquery.form.js"></script>
<!-- 引用bootstrap原生的css文件 -->
<link href="plugins/bootstrap/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- 引用bootstrap原生的js文件 -->
<script type="text/javascript" src="plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="plugins/circles/circles.js"></script>
<!-- 引用自定义的css文件 -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/button.css" rel="stylesheet" type="text/css" media="all" />
<!-- 引入日期选择器插件 -->
<link href="plugins/air-datepicker/css/datepicker.min.css"
	rel="stylesheet" type="text/css">
<script src="plugins/air-datepicker/js/datepicker.min.js"></script>
<!-- 日期选择器引入中文语言 -->
<script src="plugins/air-datepicker/js/i18n/datepicker.zh.js"></script>
<link href="plugins/waitme/waitMe.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="plugins/waitme/waitMe.js"></script>
</head>
<body>
	<div class="banner" id="home">
		<div class="container">
			<!-- container class 用于包裹页面上的内容 -->
			<div class="top-header row">
				<!-- 实现弹出隐藏导航栏的效果js -->
				<!--top-nav-->
				<div class="logo">轻实训</div>
				<div class="top-nav">
					<div class="nav-icon">
						<a href="#" class="right-bt" id="activator"><span> </span> </a>
					</div>
					<div class="box" id="box">
						<div class="box-content">
							<div class="box-content-center">
								<div class="form-content">
									<div class="menu-box-list">
										<ul>
											<li><a class="scroll" href="#home"><span>首页</span></a></li>
											<li><a class="scroll" href="#about"><span>关于我</span></a></li>
											<li><a class="scroll" href="#skills"><span>专业技能</span></a></li>
											<li><a class="scroll" href="#education"><span>教育经历</span></a></li>
											<li><a class="scroll" href="#experience"><span>工作经验</span></a></li>
											<li><a class="scroll" href="#honor"><span>荣誉&证书</span></a></li>
											<li><a class="scroll" href="#hobby"><span>爱好</span></a></li>
											<div class="clearfix"></div>
										</ul>
									</div>
									<a class="boxclose" id="boxclose"> <span></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!---start-click-drop-down-menu-->
				<div class="clearfix"></div>
			</div>
			<div class="banner-info row">
				<div class="banner-left col-md-3 col-md-offset-2">
					<!-- 为了在大屏幕显示器上使用偏移，使用 .col-md-offset-* 类。这些类会把一个列的左外边距（margin）增加 * 列，其中 * 范围是从 1 到 11。 -->
					<img src="images/my-avatar.png" alt="" id="myimage" width="269px"
						height="269px" style="border-radius: 50%" />
					<p class="upload-avatar-btn"
						onclick="document.getElementById('image').click();">请选择你的头像</p>
					<input type="file" name="imageFile" id="image"
						style="display: none" onchange="changImg(event)" />
				</div>
				<div class="banner-right col-md-7">
					<!-- 使用.col-md-*类，在中型设备台式电脑（≥992px）中分成12等宽，其中占*等分 -->
					<h1>轻实训</h1>
					<div class="border"></div>
					<h2>一个有理想的程序员！</h2>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--about-->
	<div class="about" id="about"></div>
	<!--my skill-->
	<div class="my-skills text-center" id="skills"></div>
	<!--education-->
	<div class="education" id="education"></div>
	<!--work-->
	<div class="work-experience text-center" id="experience"></div>
	<!--honor-->
	<div class="honor text-center" id="honor"></div>
	<!--hobby-->
	<div class="hobby text-center" id="hobby"></div>
	<!--contact-->
	<div class="contact" id="contact"></div>
	<div class="download-resume text-center">
		<div class="container">
			<div class="strip text-center">
				<img src="images/down.png" alt=" ">
			</div>
			<div class="down">
				<a href="#">下载我的简历</a>
			</div>
		</div>
	</div>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<p>Copyright &copy; 2017.轻实训版权所有.</p>
		</div>
	</div>
	<div id="editPanel" class="edit-panel"></div>
	<script>
		$(document).ready(function() {
			list();
		})
	</script>
	<script type="text/javascript">
		var path = "${ctx}";
		var $ = jQuery.noConflict();

		//图片回显
		function changImg(e) {
			for (var i = 0; i < e.target.files.length; i++) {
				var file = e.target.files.item(i);
				if (!(/^image\/.*$/i.test(file.type))) {
					continue; //不是图片 就跳出这一次循环  
				}
				//实例化FileReader API  
				var freader = new FileReader();
				freader.readAsDataURL(file);
				freader.onload = function(e) {
					$("#myimage").attr("src", e.target.result);
				};
			}
		}

		function addorupdate() {
			$(".edit,.btn-sm").on("click", function() {
				var $this = $(this);
				var path = "${ctx}";
				var url = $this.data("url");
				var id = $this.data("id");
				//隐藏/显示DIV
				$('.addorupdate').toggle();
				$('.addorupdate').load(path + url, {
					id : id
				});
			});
		}

		//删除
		function remove() {
			$(".delete").on("click", function() {
				var $this = $(this);
				var path = "${ctx}";
				var url = $this.data("url");
				var id = $this.data("id");
				if (!confirm("确定删除该项内容?")) {
					return false;
				}
				$("#editPanel").load(path + url, {
					id : id
				});
				list();
			})
		}

		function hideAndSumbit() {
			$('.cancel-btn,.closeedit').on('click', function() {
				//隐藏窗口
				$('.addorupdate').hide();
			});

			$(".save-btn").on("click", function() {
				$("form").trigger("submit");
			});
		}

		//关闭编辑窗口
		function closeeditPanel() {
			$('.cancel-btn,.save-btn').on('click', function(event) {
				event.preventDefault();
				$('#editPanel').animate({
					'left' : '0px',
					'bottom' : '-600px'
				}, 300);
			});
		}
		//关闭 添加/更新窗口
		function closeeditorupdatePanel() {
			$('.cancel-btn,.save-btn').on('click', function(event) {
				event.preventDefault();
				$('.addorupdate').animate({
					'left' : '0px',
					'bottom' : '-600px'
				}, 300);
			});
		}

		//显示首页面
		function list() {
			$("#about").load(path + "/me/list");
			$("#skills").load(path + "/skill/list");
			$("#education").load(path + "/education/list");
			$("#experience").load(path + "/workexperence/list");
			$("#honor").load(path + "/honor/list");
			$("#hobby").load(path + "/hobby/list");
			$("#contact").load(path + "/index/contact")
		}

		//表单提交
		function formsubmit() {

			$(".save-btn").on("click", function() {
				$("form").trigger("submit");
			});

			$("form").on("submit", function(e) {
				e.preventDefault();
				var $this = $(this);
				// jquery-form的异步提交方式
				$this.ajaxSubmit({
					beforeSubmit : function(data) {
						alert(JSON.stringify(data)); 
					},
					success : function() {
						list();
					}
				})
			});
		}

		$(function() {
			//从浏览器底部弹出编辑窗口
			$('body').on('click', '.edit-btn', function(event) {
				event.preventDefault();
				var url = $(this).data('url');
				$('#editPanel').load(path + url);
				$('#editPanel').animate({
					'left' : '0px',
					'bottom' : '0px'
				}, 300);
			});

			//关闭编辑窗口
			$('#editPanel').on('click', '.close', function(event) {
				event.preventDefault();
				$('#editPanel').animate({
					'left' : '0px',
					'bottom' : '-600px'
				}, 300);
			});

			//弹出顶部导航菜单
			$('#activator').click(function() {
				$('#box').animate({
					'top' : '0px'
				}, 500);
			});
			//关闭顶部导航菜单
			$('#boxclose').click(function() {
				$('#box').animate({
					'top' : '-1000px'
				}, 500);
			});

		});
	</script>
</body>
</html>