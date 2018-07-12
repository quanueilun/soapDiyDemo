<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<style>
* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
}

body {
	font-size: 18px;
	color: #b1b1b1;
	font-family: "微软雅黑";
}

#content {
	width: 100%;
	height: auto;
}

#content #ad {
	position: relative;
	width: 100%;
	height: 366px;
	border: 1px solid #006;
	text-align: center;
	margin-bottom: 20px;
}

#content #ad #ad-content {
	position: absolute;
	top: 0;
	left: 1.5%;
	width: 97%;
	height: 93%;
	margin: 0 auto;
	border: 1px solid #006;
	background: #000;
	opacity: 0.3;
	text-align: center;
	z-index: -1;
}

#content #ad img {
	display: block;
	position: absolute;
	top: 0;
	width: 100%;
	height: 366px;
	z-index: -100;
}

#content #ad  h1 {
	margin-top: 129px;
	color: #FFF;
	font-weight: 100;
	font-size: 45px;
	margin-bottom: 0.6%;
}

#content #ad p {
	font-size: 24px;
	color: #eaeaea;
	margin-bottom: 55px;
}

#content #ad a {
	display: inline-block;
	width: 11%;
	height: 33px;
	background: #FFF;
	border: 1px solid #ff8065;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px;
	text-decoration: none;
	color: #ff8065;
	line-height: 33px;
}

#content #s-style {
	position: relative;
	width: 100%;
	height: 258px;
	list-style: none;
	background: #595959;
	padding: 0 67px;
}

#content #s-style li {
	position: relative;
	float: left;
	text-align: center;
	width: 18%;
	height: 258px;
	z-index: 1;
}

#content #s-style  div {
	position: absolute;
	display: inline-block;
	width: 243px;
	height: 258px;
	text-align: center;
}

#content #s-style  div .border {
	display: block;
	width: 30px;
	height: 4px;
	margin-top: 28px;
	margin-left: 108px;
	margin-bottom: 20px;
	background: #FFF;
}

#content #s-style  div .text {
	display: none;
	color: #F2F2F2;
	font-size: 12px;
	width: 180px;
	margin: 0 auto;
	margin-top: 20px;
	text-align: left;
}

#content #s-style  div:hover a {
	display: inline-block;
}

#content #s-style  div:hover .text {
	display: block;
}

#content #s-style  div:hover span {
	margin-top: 27px;
	margin-bottom: 26px;
}

#content #s-style  div:hover .border {
	display: none;
}

#content #s-style  div .font {
	color: #F2F2F2;
	font-size: 26px;
}

#content #s-style a {
	display: inline-block;
	width: 100px;
	height: 32px;
	border: 1px solid #F2F2F2;
	font-size: 14px;
	line-height: 32px;
	color: #F2F2F2;
	margin-top: 20px;
	display: none;
}

#content #s-style #d1 {
	left: 53px;
	z-index: 3;
}

#content #s-style #d2 {
	left: 296px;
	z-index: 3;
}

#content #s-style #d3 {
	left: 539px;
	z-index: 3;
}

#content #s-style #d4 {
	left: 782px;
	z-index: 3;
}

#content #s-style #d5 {
	left: 1025px;
	z-index: 3;
}

#content #s-style span {
	display: inline-block;
	width: 25px;
	height: 25px;
	background: #FFF;
	margin-top: 75px;
	-webkit-transform: rotate(45deg);
}

#content #s-style li img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 256px;
}

#content #main {
	position: relative;
	width: 90%;
	height: 2048px;
	background: #f8f8f8;
	margin: 0 auto;
}

#content #left-main {
	position: absolute;
	left: 0;
	width: 50%;
}

#content #main h2 {
	color: #78a4e0;
	font-size: 45px;
	font-weight: 100;
}

#content #left-main .text-up {
	margin-top: 128px;
	margin-left: 104px;
	margin-bottom: 20px;
}

#content #left-main .text-down {
	margin-left: 220px;
}

#content #main .explain {
	width: 340px;
	font-size: 18px;
	line-height: 30px;
}

#content #left-main .explain {
	margin-left: 104px;
	margin-top: 33px;
	margin-bottom: 110px;
}

#content #left-main img {
	margin-left: 125px;
}

#content #right-main {
	position: absolute;
	right: 0;
	width: 50%;
	padding-bottom: 30px;
}

#content #right-main img {
	margin-top: 72px;
	margin-bottom: 100px;
}

.r-pic1 {
	margin-left: 100px;
}

#content #right-main .text-up {
	margin-left: 100px;
	margin-bottom: 20px;
}

#content #right-main .text-down {
	margin-bottom: 20px;
}

#content #right-main .explain {
	margin-bottom: 100px;
}

#content #remember-show {
	position: absolute;
	top: 1253px;
	width: 100%;
	border: 1px solid #039;
	height: 480px;
	margin: 0 auto;
}

#content #remember-show ul {
	position: relative;
	list-style: none;
	margin-left: 174px;
}

#content #remember-show ul li {
	float: left;
	width: 200px;
	height: 273px;
	border: 1px solid #039;
	text-align: center;
	margin-right: 20px;
}

#content #remember-show .m-left {
	display: inline-block;
	margin-left: 104px;
	width: 135px;
	height: 25px;
	padding: 10px;
	padding-top: 0;
	border-left: 6px solid #F66;
	font-size: 33px;
	line-height: 30px;
	color: #a0bde7;
	font-weight: 200;
}

#content #remember-show a {
	position: absolute;
	top: 3px;
	margin-left: 17px;
	display: inline-block;
	width: 55px;
	height: 30px;
	background: #78a4e0;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
	border-bottom-left-radius: 3px;
	border-bottom-right-radius: 3px;
	text-align: center;
	line-height: 30px;
	color: #fff;
	font-size: 16px;
}

#content #remember-show .describe {
	margin-top: 10px;
	margin-bottom: 36px;
	margin-left: 104px;
}

#content #remember-show ul li img {
	width: 187px;
	height: 228px;
	margin: 10px auto;
}

#content #remember-show ul li span {
	display: block;
	margin-left: 12px;
	text-align: left;
	font-size: 13px;
}

.point {
	display: inline-block;
	width: 11px;
	height: 11px;
	border-radius: 50%;
	border: 1px #cdcdcd solid;
	background: #cdcdcd;
	margin-right: 20px;
}

#p, #n {
	position: absolute;
	display: inline-block;
	width: 40px;
	height: 40px;
	border: 1px solid #78a4e0;
	background: #78a4e0;
	border-radius: 50%;
	color: #FFF;
	font-size: 40px;
	line-height: 35px;
	text-align: center;
	top: 215px;
}

#p {
	left: 114px;
}

#n {
	right: 114px;
}

#point-group {
	position: absolute;
	width: 100%;
	bottom: 65px;
	margin: 0 auto;
	text-align: center;
}

.c {
	background: #999999;
}

.blue_mask {
	background-color: #78a4e0;
	opacity: 0.5;
	z-index: 2;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script>
	$(function() {
		$(".blue_mask").hide();
		$(".note").mouseenter(function() {
			$(this).next().stop().slideToggle(300);
		}).mouseleave(function() {
			$(this).next().stop().slideToggle(300);
		})
	})
</script>
</head>
<body>
	<div id="box">
		<div></div>
		<div id="content">
			<div id="ad">
				<h1>精致、健康、个性化的定制手工香皂</h1>
				<p>从皂基、模具、颜色、香味、粉末、内花及包装全都让你自选</p>
				<a href="${pageContext.request.contextPath}/diy/toDiy">立即定制</a>
				<div id="ad-content"></div>
				<img src="<c:url value="/img/11.png"/>" />
			</div>
			<ul id="s-style">
				<!-- 皂基图 -->
				<div id="d1" class="note">
					<span></span>
					<p class="border"></p>
					<p class="font">皂基</p>
					<p class="text">手工香皂中加入香薰精华，适当的香味能让人感到舒适和安宁，可以提高睡眠质量</p>
					<a href="#">查看详细</a>
				</div>
				<div class="blue_mask" style="left: 53px")></div>
				<li><img src="<c:url value="/img/4.png"/>" /></li>
				<!-- 模具图 -->
				<div id="d2" class="note">
					<span></span>
					<p class="border"></p>
					<p class="font">模具</p>
					<p class="text">手工香皂中加入香薰精华，适当的香味能让人感到舒适和安宁，可以提高睡眠质量</p>
					<a href="#">查看详细</a>
				</div>
				<div class="blue_mask" style="left: 296px")></div>
				<li><img src="<c:url value="/img/5.png"/>" /></li>
				<!-- 颜色图 -->
				<div id="d3" class="note">
					<span></span>
					<p class="border"></p>
					<p class="font">颜色</p>
					<p class="text">手工香皂中加入香薰精华，适当的香味能让人感到舒适和安宁，可以提高睡眠质量</p>
					<a href="#">查看详细</a>
				</div>
				<div class="blue_mask" style="left: 539px")></div>
				<li><img src="<c:url value="/img/6.png"/>" /></li>
				<!-- 香味图 -->
				<div id="d4" class="note">
					<span></span>
					<p class="border"></p>
					<p class="font">香味</p>
					<p class="text">手工香皂中加入香薰精华，适当的香味能让人感到舒适和安宁，可以提高睡眠质量</p>
					<a href="#">查看详细</a>
				</div>
				<div class="blue_mask" style="left: 782px")></div>
				<li><img src="<c:url value="/img/7.png"/>" /></li>
				<!-- 粉末图 -->
				<div id="d5" class="note">
					<span></span>
					<p class="border"></p>
					<p class="font">粉末</p>
					<p class="text">手工香皂中加入香薰精华，适当的香味能让人感到舒适和安宁，可以提高睡眠质量</p>
					<a href="#">查看详细</a>
				</div>
				<div class="blue_mask" style="left: 1025px")></div>
				<li><img src="<c:url value="/img/8.png"/>" /></li>
			</ul>
			<div id="main">
				<div id="left-main">
					<h2 class="text-up">适合自己的</h2>
					<h2 class="text-down">才是最好的</h2>
					<p class="explain">不同的肤质，需要不同的酸碱性，手工香皂的好处就是可以自己全方面的制作一款属于自己的香皂。</p>
					<img src="<c:url value="/img/10.png"/>" />
					<h2 class="text-up">您需要的,</h2>
					<h2 class="text-down">我们都能做</h2>
					<p class="explain">如果你是女生，你应该在香皂中添加一点牛奶；如果你是男生，你应该在香皂中添加一点咖啡粉；无论你需要什么，我们的diy系统都能满足你。</p>
				</div>
				<div id="right-main">
					<img class="r-pic1" src="<c:url value="/img/9.png"/>" />
					<h2 class="text-up">向上制作，</h2>
					<h2 class="text-down">向下取货 。</h2>
					<p class="explain">不用在购买一堆的diy工具，在线制作，当天内即可发货，全国包邮，把最精美的手工香皂送给最精致的你。</p>
					<img id="r-img"
						src="<c:url value="/img/0dac45424cc2dacaffa5fc3f95aa38b9.png"/>" />
				</div>
				<div id="remember-show">
					<span id="p"><</span> <span id="n">></span> <span class="m-left">实物实拍</span><a
						href="#">更多</a>
					<p class="describe">原创DIY香皂，精选优质香皂，独一无二的制作配方，设计出独属于你的精致香皂。</p>
					<ul>
						<li><img /> <span>温和型滋润牛奶美白手工香皂</span></li>
						<li><img /> <span>温和型滋润牛奶美白手工香皂</span></li>
						<li><img /> <span>温和型滋润牛奶美白手工香皂</span></li>
						<li><img /> <span>温和型滋润牛奶美白手工香皂</span></li>
					</ul>
					<p id="point-group">
						<span class="point c"></span><span class="point"></span><span
							class="point"></span><span class="point"></span><span
							class="point"></span><span class="point"></span>
					</p>
				</div>
			</div>
		</div>
		<div></div>
		<div></div>
	</div>
</body>
</html>