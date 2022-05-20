<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>서울특별시 공공서비스</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	
	%>
	<nav class="navbar  navbar-expand-sm  bg-blue navbar-light">
		<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed"
			  data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			  aria-expanded="false">
                        
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

			<a class= "navbar-brand" href="main.jsp">
			 <img src = "images/공공서비스예약.jpg"  style="width:200px;">
			 </a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">체육시설</a></li>
				<li><a href="main.jsp">공간시설</a></li>
				<li><a href="main.jsp">문화체험</a></li>
				<li><a href="main.jsp">교육강좌</a></li>
				<li><a href="main.jsp">진료복지</a></li>
				<li><a href="main.jsp">이용안내</a></li>
				<li><a href="ezenproject.jsp">게시판</a></li>
			
			</ul>
			<%
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toffle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanede="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="login.jsp" style="color:#0067a3">로그인</a></li>
				<li><a href="join.jsp" style="color:#0067a3">회원가입</a></li>
			</ul>
				</li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toffle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanede="false">회원관리<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="logoutAction.jsp">로그아웃</a></li>
			</ul>
				</li>
			</ul>
			
			<%	
				}
			%>
		</div>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1> 메인페이지 </h1>
				<p>서울특별시 공공서비스 부트스트랩</p>
				<a class="btn btn-primary btn-pull" href="#" role="button"> 자세히 알아보기</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/교육강좌.jpg">
				</div>
				<div class="item">
					<img src="images/농장체험.jpg">
				</div>
				<div class="item">
					<img src="images/야구장.jpg">
				</div>
				<div class="item">
					<img src="images/진료복지.jpg">
				</div>
				<div class="item">
					<img src="images/캠핑장.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>