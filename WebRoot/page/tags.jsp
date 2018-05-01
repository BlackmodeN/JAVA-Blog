<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>标签 | MyBlog</title>


<!-- Bootstrap core CSS -->
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">


<link type="text/css" rel="stylesheet" href="/Blog/css/public.css" />
<link type="text/css" rel="stylesheet" href="/Blog/css/tags.css" />

 <%@include file="_head.jsp" %>
</head>
<body>
	

	<div class="container" id="main">

		<div id="header"></div>

		<div class="row c_center" style="margin-left:auto;margin-right:auto">
			<div class="col-md-4" id="left_content">

				<div id="title">
					<a href="/Blog/index.jsp"><img src="/Blog/img/Blog.png"
						alt="丢失了?"></a>
					<h4 class="text-muted">See what you see.Love what you love.</h4>
				</div>

				<div class="c_center" id="person_info" style=" margin-top: auto; margin-bottom: auto;"">

					<div class="contact-area">
						<div class="contact">
							<main> <section>
							<div class="content">
								<img src="./img/header.jpg" alt="Profile Image">

								<aside>
								<h1>N-Kaleidoscope</h1>
								<p>春心不死,秋节长生.To be better.</p>
								</aside>

								<button class="button button-3d button-primary">
									Contact Me

									<svg width="48" height="48" viewBox="0 0 48 48"> <g
										class="nc-icon-wrapper" fill="#444444"> <path
										d="M14.83 30.83L24 21.66l9.17 9.17L36 28 24 16 12 28z"></path>
									</g> </svg>
								</button>
							</div>

							<div class="title">
								<p>Contact Me</p>
							</div>
							</section> </main>

							<nav> <a href="#" class="gmail">
								<div class="icon">
									<svg viewBox="0 0 16 16"> <path
										d="M16 3v10c0 .567-.433 1-1 1h-1V4.925L8 9.233 2 4.925V14H1c-.567 0-1-.433-1-1V3c0-.283.108-.533.287-.712C.467 2.107.718 2 1 2h.333L8 6.833 14.667 2H15c.283 0 .533.108.713.288.179.179.287.429.287.712z"
										fill-rule="evenodd" /></svg>
								</div>

								<div class="content">
									<h1>Email</h1>
									<span>739388464@qq.com</span>
								</div> <svg class="arrow" width="48" height="48" viewBox="0 0 48 48">
								<g class="nc-icon-wrapper" fill="#444444"> <path
									d="M17.17 32.92l9.17-9.17-9.17-9.17L20 11.75l12 12-12 12z"></path>
								</g> </svg>
							</a> <a href="#" class="facebook">
								<div class="icon">
									<svg viewBox="0 0 16 16" fill-rule="evenodd"
										clip-rule="evenodd" stroke-linejoin="round"
										stroke-miterlimit="1.414"> <path
										d="M15.117 0H.883C.395 0 0 .395 0 .883v14.234c0 .488.395.883.883.883h7.663V9.804H6.46V7.39h2.086V5.607c0-2.066 1.262-3.19 3.106-3.19.883 0 1.642.064 1.863.094v2.16h-1.28c-1 0-1.195.48-1.195 1.18v1.54h2.39l-.31 2.42h-2.08V16h4.077c.488 0 .883-.395.883-.883V.883C16 .395 15.605 0 15.117 0"
										fill-rule="nonzero" /></svg>
								</div>

								<div class="content">
									<h1>Github</h1>
									<span>github.com/BlackmodeN</span>
								</div> <svg class="arrow" width="48" height="48" viewBox="0 0 48 48">
								<g class="nc-icon-wrapper" fill="#444444"> <path
									d="M17.17 32.92l9.17-9.17-9.17-9.17L20 11.75l12 12-12 12z"></path>
								</g> </svg>
						</div>
					</div>

					<script>
						$('button').click(function() {
							$('button').toggleClass('active');
							$('.title').toggleClass('active');
							$('nav').toggleClass('active');
						});
					</script>


				</div>

				<div class="row">
					<!-- 这里初始化侧边栏的4个标签 -->

					<a
						class="button button-glow button-rounded button-highlight button-small"
						href="#">日志</a> <a
						class="button button-glow button-rounded button-royal button-small"
						href="/Blog/SortServlet?get=all"><span>
					</span>分类</a> <a
						class="button button-glow button-rounded button-caution  button-small"
						href="/Blog/TagsServlet?get=all"><span></span>标签</a>


				</div>


				<div id="list">
					<div class="container1">
						<div class="box box1">
							<div class="name" onclick="location.href='/Blog/login.html'">

								<h4>使用账号登录</h4>
								<h5>点击登录★</h5>

							</div>
							<p>★</p>
						</div>
						<div class="box box2" onclick="location.href='/Blog/index.jsp'">
							<div class="name">
								<h4>首页</h4>
								<h5>点击跳转到主页♠</h5>

							</div>
							<p>♠</p>
						</div>
						<div class="box box3"
							onclick="location.href='/Blog/SortServlet?get=all'">
							<div class="name">

								<h4>分类</h4>
								<h5>点击查看分类✙</h5>

							</div>
							<p>✙</p>
						</div>
						<div class="box box4"
							onclick="location.href='/Blog/AxisServlet'">
							<div class="name">

								<h4>时间轴</h4>

								<h5>点击查看时间轴€</h5>

							</div>
							<p>€</p>
						</div>

					</div>
				</div>
				<!-- list -->
				<br />
			</div>
			<div class="col-md-2" id="center_content"></div>
			<div class="col-md-7 " id="right_content">
				<br /><br />
				<div class="list-group">

					<a href="#" class="button button-primary button-block button-rounded button-large">标签</a>
					<!-- 这里初始化标签 -->					
					<c:forEach var="map" items="${id_tag_map}">					
					<div class="tags_name">
					<!-- 标签名字 -->
					<span class="glyphicon glyphicon-triangle-bottom"></span>&nbsp;	&nbsp;${map.key}		
					</div>
					<div>
					<!-- 标签信息 -->
					<ul class="list-group">					
					<c:forEach var="list" items="${map.value}">
					<li class="list-group-item">
								<div>
									<div>
									<div>
										<a href="./ArticleServlet?id=${list.id}">${list.title}</a>
									</div>
									<div class="c_right">
									<img src="./img/time.png">
									${list.time}&nbsp;&nbsp; 
									<span class="visit"><img src="/Blog/img/visit.png">
									${list.visit}	</span>
									</div>
								</div>						
								</div>
					</li>
					</c:forEach>					
					</ul>
					</div>								
					</c:forEach>					
					<!-- 初始化标签完成 -->

				</div>
			</div>
		</div>

		<div class="foot_line"></div>
	</div>
	<!-- container -->


	<div id="footer">
		<a href="#">&nbsp;&nbsp;MyBlog</a>
	</div>
	<!-- footer -->

</body>
</html>