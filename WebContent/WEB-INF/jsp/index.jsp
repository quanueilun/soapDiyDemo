<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/js/jquery.js"/>"></script>
<script src="<c:url value="/js/nav.js"/>"></script>
<script>
$(function(){
	$(".blue_mask").hide();
	$("#s-style").children(".note").mouseenter(function(){
		$(this).next().stop().show();
	}).mouseleave(function(){
		$(this).next().stop().hide();
	})
})
</script>
<title>首页</title>
<style>
.blue_mask{
	z-index:0;
	background:#78a4e0;
	opacity:0.8;
}
.note{
	z-index:1;
}
*{
	margin:0;
	padding:0;
		
}
body{
	color:#FFF;
	font-size:16px;
	font-family:"微软雅黑";
}
a{
	text-decoration:none;
	color:#FFF;
}
@media screen and (min-width:1366px){
	#box{
		width:auto;
		height:auto;
	}
	#header ul{
		margin-left:750px;
		position:absolute;
		top:0px;
	}
		#header ul li a{
		font-size:5px;
		height:20px;
		width:60px;
		display:block;
		text-align:center;
		line-height:25px;
		padding:0px 10px;
	}
	#content #ad  h1{
		margin-top:129px;
		color:#FFF;
		font-weight:100;
		font-size:1.4em;
		margin-bottom:0.6%;
	
	}
	#content #s-style a{
	display:inline-block;
	width:43.4%;
	height:32px;
	border:1px solid #F2F2F2;
	font-size:0.7em;
	line-height:32px;
	color:#F2F2F2;
	margin-top:20px;
	display:none;
}
#content #s-style  div:hover span{
	margin-top:27px;
	margin-bottom:26px;
}
	#p{
	left:4%;
}
	#n{
	right:4%;
}
#content #remember-show ul li span{
	display:block;
	margin-left:6%;
	text-align:left;
	font-size:0.9em;
	
}
	#content #ad p{
	font-size:1.5em;
	color:#eaeaea;
	margin-bottom:55px;
}
#content #remember-show .m-left{
	display:inline-block;
	margin-left:8.5%;
	width:11%;
	height:25px;
	padding:10px;
	padding-top:0;
	border-left:6px solid #F66;
	font-size:1.4em;
	line-height:35px;
	color:#a0bde7;
	font-weight:200;
}
	#footer ul{
		display:inline-block;
	
		list-style:none;
	
	
		margin:25px auto 0 auto;
	}

	#footer ul li{
		float:left;
	}
	#footer ul li a{
		color:#000;
		font-size:15px;
		margin-right:20px;
		
	}
	#footer p{
		color:#999;
		font-size:14px;
		text-align:center;
		margin-top:20px;
		text-height:14px;
	
	}
}
@media screen and (max-width:1365px) and (min-width: 1280px){
	#box{
		width:auto;
		height:auto;
	}
	#header ul{
		margin-left:650px;
		position:absolute;
		top:0px;
	}
	#header ul li a{
	font-size:5px;
	height:20px;
	width:60px;
	display:block;
	text-align:center;
	line-height:25px;
	padding:0px 10px;
	
	}
	#content #ad  h1{
	margin-top:129px;
	color:#FFF;
	font-weight:100;
	font-size:1.4em;
	margin-bottom:0.6%;

}
	#content #ad p{
	font-size:1.5em;
	color:#eaeaea;
	margin-bottom:55px;
}
#content #s-style a{
	display:inline-block;
	width:50%;
	height:25px;
	border:1px solid #F2F2F2;
	font-size:0.7em;
	line-height:25px;
	color:#F2F2F2;
	margin-top:25px;
	display:none;
}
#content #s-style  div:hover span{
	margin-top:20px;
	margin-bottom:20px;
}
#p{
	left:5%;
}
#n{
	right:4%;
}
#content #remember-show .m-left{
	display:inline-block;
	margin-left:8.5%;
	width:11%;
	height:25px;
	padding:10px;
	padding-top:0;
	border-left:6px solid #F66;
	font-size:1.4em;
	line-height:35px;
	color:#a0bde7;
	font-weight:200;
}
#content #remember-show ul li span{
	display:block;
	margin-left:6%;
	text-align:left;
	font-size:0.9em;
	
}
	#footer p{
	color:#999;
	font-size:14px;
	text-align:center;
	margin-top:20px;
	text-height:14px;


}
}
@media screen and (max-width:1279px) and (min-width: 1179px){
	#box{
		width:auto;
		height:auto;
	}
	#header ul{
		margin-left:600px;
		position:absolute;
		top:0px;
	}
	#header ul li a{
	font-size:5px;
	height:20px;
	width:60px;
	display:block;
	text-align:center;
	line-height:25px;
	padding:0px 10px;
	
}
#content #ad  h1{
	margin-top:129px;
	color:#FFF;
	font-weight:100;
	font-size:1.4em;
	margin-bottom:0.6%;

}
	#content #ad p{
	font-size:1.5em;
	color:#eaeaea;
	margin-bottom:55px;
}
#content #s-style a{
	display:inline-block;
	width:50%;
	height:25px;
	border:1px solid #F2F2F2;
	font-size:0.7em;
	line-height:25px;
	color:#F2F2F2;
	margin-top:25px;
	display:none;
}
#content #s-style  div:hover span{
	margin-top:20px;
	margin-bottom:20px;
}
#p{
	left:4%;
}
#n{
	right:3%;
}
#content #remember-show .m-left{
	display:inline-block;
	margin-left:8.5%;
	width:11%;
	height:25px;
	padding:10px;
	padding-top:0;
	border-left:6px solid #F66;
	font-size:1.4em;
	line-height:35px;
	color:#a0bde7;
	font-weight:200;
}
#content #remember-show ul li span{
	display:block;
	margin-left:6%;
	text-align:left;
	font-size:0.9em;
	
}
#footer p{
	color:#999;
	font-size:14px;
	text-align:center;
	margin-top:20px;
	text-height:14px;


}
}
@media screen and (max-width:1178px) and (min-width: 1024px){
	#box{
		width:auto;
		height:auto;
	}
	#header ul{
		margin-left:500px;
		position:absolute;
		top:0px;
	}
	#header ul li a{
	font-size:5px;
	height:20px;
	width:60px;
	display:block;
	text-align:center;
	line-height:25px;
	padding:0px 10px;
	
}
#content #ad  h1{
	margin-top:129px;
	color:#FFF;
	font-weight:100;
	font-size:1.4em;
	margin-bottom:0.6%;

}
#content #s-style a{
	display:inline-block;
	width:50%;
	height:25px;
	border:1px solid #F2F2F2;
	font-size:0.7em;
	line-height:25px;
	color:#F2F2F2;
	margin-top:10px;
	display:none;
}
#content #s-style  div:hover span{
	margin-top:20px;
	margin-bottom:20px;
}
#p{
	left:3%;
}
#n{
	right:3%;
}
#content #remember-show .m-left{
	display:inline-block;
	margin-left:8.5%;
	width:11%;
	height:25px;
	padding:10px;
	padding-top:0;
	border-left:6px solid #F66;
	font-size:1.4em;
	line-height:35px;
	color:#a0bde7;
	font-weight:200;
}
#content #remember-show ul li span{
	display:block;
	margin-left:2%;
	text-align:left;
	font-size:0.8em;
	
}
}
@media screen and (max-width:1023px) and (min-width: 900px){
	#box{
		width:auto;
		height:auto;
	}
	#header ul{
		margin-left:350px;
		position:absolute;
		top:0px;
	}
	#header ul li a{
	font-size:5px;
	height:20px;
	width:60px;
	display:block;
	text-align:center;
	line-height:25px;
	padding:0px 10px;
	
	}
	#content #ad  h1{
	margin-top:129px;
	color:#FFF;
	font-weight:100;
	font-size:1.4em;
	margin-bottom:0.6%;

}
	#content #ad p{
	font-size:1.5em;
	color:#eaeaea;
	margin-bottom:55px;
}
#content #s-style a{
	display:inline-block;
	width:50%;
	height:25px;
	border:1px solid #F2F2F2;
	font-size:0.7em;
	line-height:25px;
	color:#F2F2F2;
	margin-top:10px;
	display:none;
}
#content #s-style  div:hover span{
	margin-top:20px;
	margin-bottom:20px;
}
#p{
	left:3%;
}
#n{
	right:2%;
}
#content #remember-show .m-left{
	display:inline-block;
	margin-left:8.5%;
	width:14%;
	height:25px;
	padding:10px;
	padding-top:0;
	border-left:6px solid #F66;
	font-size:1.4em;
	line-height:35px;
	color:#a0bde7;
	font-weight:200;
}
#content #remember-show ul li span{
	display:block;
	margin-left:1%;
	text-align:left;
	font-size:0.7em;
	
}
	#footer p{
	color:#999;
	font-size:14px;
	text-align:center;
	margin-top:20px;
	text-height:14px;


	}
	
}
@media screen and (max-width:899px) and (min-width: 790px){
	#box{
		width:auto;
		height:auto;
	}
	#header ul{
		margin-left:250px;
		position:absolute;
		top:0px;
	}
	#header ul li a{
	font-size:5px;
	height:20px;
	width:60px;
	display:block;
	text-align:center;
	line-height:25px;
	padding:0px 10px;
	
}
#content #ad  h1{
	margin-top:129px;
	color:#FFF;
	font-weight:100;
	font-size:1.4em;
	margin-bottom:0.6%;

}
	#content #ad p{
	font-size:1.5em;
	color:#eaeaea;
	margin-bottom:55px;
}
#content #s-style a{
	display:inline-block;
	width:50%;
	height:25px;
	border:1px solid #F2F2F2;
	font-size:0.7em;
	line-height:25px;
	color:#F2F2F2;
	margin-top:10px;
	display:none;
}
#content #s-style  div:hover span{
	margin-top:15px;
	margin-bottom:15px;
}
#p{
	left:2%;
}
#n{
	right:1%;
}
#content #remember-show .m-left{
	display:inline-block;
	margin-left:8.5%;
	width:14%;
	height:25px;
	padding:10px;
	padding-top:0;
	border-left:6px solid #F66;
	font-size:1.4em;
	line-height:35px;
	color:#a0bde7;
	font-weight:200;
}
#content #remember-show ul li span{
	display:block;
	height:auto;
	text-align:left;
	font-size:0.6em;
}
#footer p{
	color:#999;
	font-size:14px;
	text-align:center;
	margin-top:20px;
	text-height:14px;


}
}
@media screen and (max-width:789px) and (min-width:720px){
	#box{
		width:auto;
		height:auto;
	}
	#header ul{
		margin-left:200px;
		position:absolute;
		top:0px;
	}
	#header ul li a{
		font-size:3px;
		height:20px;
		width:60px;
		display:inline-block;
		text-align:center;
		line-height:25px;
		padding:0px 10px;
	
	}
	#content #ad  h1{
	margin-top:129px;
	color:#FFF;
	font-weight:100;
	font-size:1.4em;
	margin-bottom:0.6%;

}
	#content #ad p{
	font-size:1.5em;
	color:#eaeaea;
	margin-bottom:55px;
}
#content #s-style a{
	display:inline-block;
	width:50%;
	height:25px;
	border:1px solid #F2F2F2;
	font-size:0.7em;
	line-height:25px;
	color:#F2F2F2;
	margin-top:10px;
	display:none;
}
#content #s-style  div:hover span{
	margin-top:15px;
	margin-bottom:15px;
}
#p{
	left:2%;
}
#n{
	right:1%;
}
#content #remember-show .m-left{
	display:inline-block;
	margin-left:8.5%;
	width:14%;
	height:25px;
	padding:10px;
	padding-top:0;
	border-left:6px solid #F66;
	font-size:1.3em;
	line-height:35px;
	color:#a0bde7;
	font-weight:200;
}
#content #remember-show ul li span{
	display:block;
	height:auto;
	text-align:left;
	font-size:0.6em;
	
}
	#footer p{
	color:#999;
	font-size:12px;
	text-align:center;
	margin-top:20px;
	text-height:14px;


}

}
@media screen and (max-width:719px) and (min-width:600px){
	#box{
		width:auto;
		height:auto;
	}
	#header ul{
		margin-left:170px;
		position:absolute;
		top:0px;
	}
	#header ul li a{
		font-size:1px;
		height:20px;
		width:50px;
		display:inline-block;
		text-align:center;
		line-height:25px;
		padding:0px 10px;
	
	}
	#content #ad  h1{
	margin-top:129px;
	color:#FFF;
	font-weight:100;
	font-size:1.4em;
	margin-bottom:0.6%;

}
	#content #ad p{
	font-size:1.1em;
	color:#eaeaea;
	margin-bottom:55px;
}
#content #s-style a{
	display:inline-block;
	width:50%;
	height:25px;
	border:1px solid #F2F2F2;
	font-size:0.7em;
	line-height:25px;
	color:#F2F2F2;
	margin-top:10px;
	display:none;
}
#content #s-style  div:hover span{
	margin-top:15px;
	margin-bottom:15px;
}
#p{
	left:1%;
}
#n{
	right:0;
}
#content #remember-show .m-left{
	display:inline-block;
	margin-left:8.5%;
	width:14%;
	height:25px;
	padding:10px;
	padding-top:0;
	border-left:6px solid #F66;
	font-size:1.2em;
	line-height:35px;
	color:#a0bde7;
	font-weight:200;
}
	#footer ul{
	display:inline-block;

	list-style:none;


	margin:25px auto 0 auto;
}
#content #remember-show ul li span{
	display:block;
	height:auto;
	text-align:left;
	font-size:0.6em;
	
}

#footer ul li{
	float:left;
}
#footer ul li a{
	color:#000;
	font-size:10px;
	margin-right:20px;
	
}
#footer p{
	color:#999;
	font-size:12px;
	text-align:center;
	margin-top:20px;
	text-height:14px;

}

}
#header{
	height:40px;
	background:url(<c:url value="/img/rect.png"/>) no-repeat;
}

#header ul li{
	float:left;
	height:40px;

	list-style:none;
}

#header ul li:hover{

	background:#eb9290;
}


#header-title{
	display:inline-block;
	margin-left:50px;
	line-height:40px;
	font-size:18px;
}
#lgorrg{
	float:right;
	margin-right:30px;
	line-height:20px;
}
#lgorrg a{
	font-size:10px;
}

#content{
	width:100%;
	height:auto;
}
#content #ad{
	position:relative;
	width:100%;
	height:366px;
	border-top:1px solid #07315f;
	text-align:center;
	margin-bottom:20px;
	
}
#content #ad #ad-content{
	position:absolute;
	top:0;
	left:1.5%;
	width:97%;
	height:93%;
	margin:0 auto;
	background:#000;
	opacity:0.3;
	text-align:center;
	z-index:-1;
}
#content #ad img{
	display:block;
	position:absolute;
	top:0;
	width:100%;
	height:366px;
	z-index:-100;
	
}


#content #ad a{
	display:inline-block;
	width:11%;
	height:33px;
	background:#FFF;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	border-bottom-right-radius:5px;
	border-bottom-left-radius:5px;
	text-decoration:none;
	color:#ff8065;
	line-height:33px;
}
#content #s-style{
		position:relative;
	width:95%;
	height:258px;
	list-style:none;
	background:#595959;
	padding-left:5%;

	
	
}
#content #s-style li{
		position:relative;

	text-align:center;
	width:18%;
	height:258px;
	float:left;
	
	
}
#content #s-style  div{
	display:inline-block;
	position:absolute;
	width:17%;
	height:258px;
	text-align:center;
	border:1px solid #306;



}
#content #s-style  div .border{
	display:block;
	width:12%;
	height:4px;
	margin-top:28px;
	margin-left:44%;
	margin-bottom:20px;
	background:#FFF;
}
#content #s-style  div .text{
	display:none;
		color:#F2F2F2;
	font-size:0.7em;
	width:75%;
	margin:0 auto;
	margin-top:20px;
	text-align:left;
}
#content #s-style  div:hover a{
	display:inline-block;
}
#content #s-style  div:hover .text{
	display:block;
}

#content #s-style  div:hover .border{
	display:none;
}
#content #s-style  div .font{
	color:#F2F2F2;
	font-size:1.5em;
}

#content #s-style #d1{
	left:5%;
}
#content #s-style #d2{
	left:22.1%;
}
#content #s-style #d3{
	left:39.1%;
}
#content #s-style #d4{
	left:56.3%;
}
#content #s-style #d5{
	left:73.3%;
}
#content #s-style span{
	display:inline-block;
	width:25px;
	height:25px;
	background:#FFF;
	margin-top:75px;
	-webkit-transform:rotate(45deg);

}
#content #s-style li img{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:256px;
}
#content #main{
		color:#adadad;
	position:relative;
	width:90%;
	height:2048px;
	background:#f8f8f8;
	margin:0 auto;
}

#content #left-main{
	position:absolute;
	left:0;
	width:50%;
}
#content #main h2{
	color:#78a4e0;
	font-size:2.2em;
	font-weight:100;
}
#content #left-main .text-up{
	margin-top:128px;
	margin-left:17%;
	margin-bottom:20px;
}
#content #left-main .text-down{
	margin-left:36%;
}
#content #main .explain{
	width:56%;
	font-size:1.1em;
	line-height:30px;
}
#content #left-main .explain{
	margin-left:17%;
	margin-top:33px;
	margin-bottom:110px;
}
#content #left-main img{
	width:52.2%;
	margin-left:20%;
}
#content #right-main{
		position:absolute;
	right:0;
	width:50%;
	padding-bottom:30px;
}
#content #right-main img{

	margin-top:72px;

	margin-bottom:100px;
}
.r-pic1{
		width:36.2%;
	margin-left:16.4%;
}
.r-pic2{
	width:58%;
}
#content #right-main .text-up{
	margin-left:16.4%;
	margin-bottom:20px;
}
#content #right-main .text-down{

	margin-bottom:20px;
}
#content #right-main .explain{

	margin-bottom:100px;
	
}
#content #remember-show{
	color:#adadad;
	position:absolute;
	top:1253px;
	width:100%;


	height:480px;

	
}
#content #remember-show ul{
	width:88%;
	position:relative;
	list-style:none;
	margin-left:6%;
	height:273px;
	padding-left:2%;

}
#content #remember-show ul li{
	float:left;
	width:22%;
	height:auto;
	border:1px solid #039;
	text-align:center;
	margin-right:2%;
	border-radius:5px;
}

#content #remember-show a{
	position:absolute;
	top:3px;
	margin-left:1.3%;
	display:inline-block;
	width:6%;
	height:30px;
	background:#78a4e0;
	border-top-left-radius:3px;
	border-top-right-radius:3px;
		border-bottom-left-radius:3px;
	border-bottom-right-radius:3px;
	text-align:center;
	line-height:30px;
	color:#fff;
	font-size:0.8em;
	
}
#content #remember-show .describe{
	margin-top:10px;
	margin-bottom:36px;
	font-size:0.9em;
	margin-left:8%;
}
#content #remember-show ul li img{
	width:96%;
	height:228px;

	margin:10px auto;
}

.point{
		display:inline-block;
	width:11px;
	height:11px;

	border-radius:50%;
	border:1px #cdcdcd solid;
	background:#cdcdcd;
	margin-right:20px;
}
#p,#n{
	position:absolute;
	display:inline-block;
	width:40px;
	height:40px;
	border:1px solid #78a4e0;
	background:#78a4e0;
	border-radius:50%;
	color:#FFF;
	font-size:40px;
	line-height:35px;
	text-align:center;
	top:215px;
}

#point-group{
	position:absolute;
	width:100%;
	bottom:65px;
	margin:0 auto;
	text-align:center;
	margin-top:20px;
	
}
.c{
	background:#999999;
}
#footer{
	height:115px;

		background:#e2f7ff;
	padding-bottom:35px;
}

#footer ul li{
	float:left;
}
#footer ul li a{
	color:#000;
	font-size:15px;
	margin-right:20px;
	
}
	#footer ul{
		display:inline-block;
	
		list-style:none;
	
	
		margin:25px auto 0 auto;
	}


</style>
</head>
<body>
	<input type="hidden" value="${customer.username}">
	<div id="box">
		<div id="header">
			<span id="header-title">香皂定制</span>
			<!-- 未登录界面 -->
			<span id="lgorrg" style="position: relative;" class="unline">
				<span style="position: absolute; top: 15px; right: -10px;"><a
					href="#">登&nbsp;&nbsp;&nbsp;陆</a>&nbsp;|&nbsp;<a href="#">注&nbsp;&nbsp;册</a></span>
				<span style="position: absolute; top: 0px; right: -7px;"><a
					href="#">Sign&nbsp;&nbsp;in</a>&nbsp;|&nbsp;<a href="#">up</a></span>
			</span>
			<!-- 已登陆界面 -->
			<span id="lgorrg" style="position: relative;" class="online">
				<img src="<c:url value="/img/photo1.png"/>" height="40px" /> <span
				style="padding-bottom: 5px">${customer.username}</span>
			</span>
			<ul class="indexNav">
				<li><span><a href="#">Home</a> <a href="#"
						style="position: absolute; top: 15px;">首&nbsp;&nbsp;页</a></span></li>
				<li><a href="#">Order</a> <a href="#"
					style="position: absolute; top: 15px;">订单管理</a></li>
				<li><a href="#">ShoppingCar</a> <a href="#"
					style="position: absolute; top: 15px;">购物车</a></li>
				<li><a href="#">Diy</a> <a href="#"
					style="position: absolute; top: 15px;">香皂制作</a></li>

				<li><a href="#">Exit</a> <a href="#"
					style="position: absolute; top: 15px;">注销</a></li>

			</ul>
		</div>
        <div id="content">
        	<div id="ad">
                <h1>精致、健康、个性化的定制手工香皂</h1>
                <p>从皂基、模具、颜色、香味、粉末、内花及包装全都让你自选</p>
                <a href="<c:url value="/diy/toDiy"/>">立即定制</a>
            	<div id="ad-content">
            </div>
            <img src="<c:url value="/img/11.png"/>"/>
            </div>
            <ul id="s-style">
            	<li>
					<img src="<c:url value="/img/4.png"/>">
                </li>
                	<div class="note" id="d1">
                       <span></span>
                         <p class="border"></p>
                        <p class="font">皂基</p>
                	</div>
                	<div class="blue_mask" style="left:5%"></div>
					
                <li>
                   <img src="<c:url value="/img/5.png"/>">
                   
                </li>
                   <div class="note" id="d2">
                       <span></span>
                         <p class="border"></p>
                        <p class="font">模具</p>
                	</div>
                	<div class="blue_mask" style="left:22.1%"></div>
                <li>

                        <img src="<c:url value="/img/6.png"/>">
            
                </li>
                    <div class="note" id="d3">
                       <span></span>
                        <p class="border"></p>
                        <p class="font">颜色</p>
                	</div>
                	<div class="blue_mask" style="left:39.1%"></div>
                <li>
                        <img src="<c:url value="/img/7.png"/>">
                    
                </li>
                    <div class="note" id="d4">
                       <span></span>
                       <p class="border"></p>
                        <p class="font">香味</p>
                        <p class="text" >手工香皂中加入香薰精华，适当的香味能让人感到舒适和安宁，可以提高睡眠质量</p>
                        <a href="#">查看详细</a>
                	</div>
                	<div class="blue_mask" style="left:56.3%"></div>
                <li>

                        <img src="<c:url value="/img/8.png"/>">

                </li>
                   <div class="note" id="d5">
                       <span></span>
                         <p class="border"></p>
                        <p class="font">粉末</p>
                	</div>
                	<div class="blue_mask" style="left:73.3%"></div>
            </ul>
            <div id="main">
				<div id="left-main">
                	<h2 class="text-up">适合自己的</h2>
                    <h2 class="text-down">才是最好的</h2>
                    <p class="explain">不同的肤质，需要不同的酸碱性，手工香皂的好处就是可以自己全方面的制作一款属于自己的香皂。</p>
                    <img src="<c:url value="/img/10.png"/>">
                    <h2 class="text-up">您需要的,</h2>
                    <h2 class="text-down">我们都能做</h2>
                    <p class="explain">如果你是女生，你应该在香皂中添加一点牛奶；如果你是男生，你应该在香皂中添加一点咖啡粉；无论你需要什么，我们的diy系统都能满足你。</p>
           		</div>
                <div id="right-main">
                	<img class="r-pic1" src="<c:url value="/img/9.png"/>" />
                    <h2 class="text-up">线上制作，</h2>
                    <h2 class="text-down">线下取货 。</h2>
                    <p class="explain">不用在购买一堆的diy工具，在线制作，当天内即可发货，全国包邮，把最精美的手工香皂送给最精致的你。</p>
                    <img  id="r-img" class="r-pic2" src="<c:url value="/img/0dac45424cc2dacaffa5fc3f95aa38b9.png"/>">
                </div>
                  <div id="remember-show">
 							<span id="p"><</span> <span id="n">></span>
                    	<span class="m-left">实物实拍</span><a href="#">更多</a>
                        <p class="describe" >原创DIY香皂，精选优质香皂，独一无二的制作配方，设计出独属于你的精致香皂。</p>
                       	<ul >
                        	
                            <li>
                   				<img src="<c:url value="/img/show1.jpg"/>">
                            	<span>温和型滋润牛奶美白手工香皂</span>
                            </li>
                            <li>
                            	<img />
                            	<span>温和型滋润牛奶美白手工香皂</span>
                            </li>
                            <li>
                            	<img />
                            	<span>温和型滋润牛奶美白手工香皂</span>    
                            </li>
                            <li>
                            	<img />
                            	<span>温和型滋润牛奶美白手工香皂</span>  
                            </li>
                          
                        </ul>
                        <p id="point-group" ><span class="point c"></span><span class="point"></span><span class="point"></span><span class="point"></span><span class="point"></span><span class="point"></span></p>
                    </div>

            
            </div>
        </div>
    </div>
       <div id="info">
    	<div></div>
        <div></div>
        <div></div>
    </div>
    <div id="footer">
    <div style="height:1px;"></div>
    	<div style="text-align:center;">
        
        	<ul>
            	<li><a href="#">团队简介</a></li>
                <li><a href="#">用户协议</a></li>
                <li><a href="#">使用指南</a></li>
                <li><a href="#">隐私声明</a></li>
      
            </ul><br />
            <p>公司名称：GDKM软件三班创新网页|法人代表：XXX|电话：020-xxx-xxxx|地址：xx省xx市xx区xx路xx号|<br />&nbsp;&nbsp;营业执照号：xxx-xx-xxxxxx(信息验证)|备案信息：第xxxx-xxxx-xxxx|隐私保护责任人：xxx|</p>
            
        </div>

    </div>
    </div>
</body>

</html>