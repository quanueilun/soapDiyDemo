<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/nav.js"></script>

<style>
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
#box{
		width:1345px;
}

@media screen and (max-width:1366px){
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
	#login_area{
	width:315px;
	height:450px;
	margin:164px auto;
	background:rgba(121, 164, 223,0.8);
	border-radius:10px;
	box-shadow:5px 5px 5px #888888;
}
.span-m-left{
	margin-left:53%;
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
@media screen and (max-width:1360px) and (min-width: 1280px){
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
	#login_area{
	
	width:30%;

	height:450px;

	margin:164px auto;
	
	
	background:rgba(121, 164, 223,0.8);
}
.span-m-left{
	margin-left:50%;
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
#login_area{
	
	width:30%;

	height:450px;

	margin:164px auto;
	
	
	background:rgba(121, 164, 223,0.8);
}
.span-m-left{
	margin-left:47%;
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
#login_area{
	
	width:30%;

	height:450px;

	margin:164px auto;
	
	
	background:rgba(121, 164, 223,0.8);
}
.span-m-left{
	margin-left:43%;
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
	#footer p{
	color:#999;
	font-size:14px;
	text-align:center;
	margin-top:20px;
	text-height:14px;


	}
	#login_area{
	
	width:30%;

	height:450px;

	margin:164px auto;
	
	
	background:rgba(121, 164, 223,0.8);
}
.span-m-left{
	margin-left:40%;
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
#login_area{
	
	width:40%;

	height:450px;

	margin:164px auto;
	
	
	background:rgba(121, 164, 223,0.8);
}
.span-m-left{
	margin-left:36%;
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
	#login_area{
	
	width:55%;

	height:450px;

	margin:164px auto;
	
	
	background:rgba(121, 164, 223,0.8);
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
		margin-left:26%;
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
	font-size:10px;
	margin-right:20px;
	
}
#footer p{
	color:#999;
	font-size:10px;
	text-align:center;
	margin-top:20px;
	text-height:12px;

}
#login_area{
	
	width:55%;

	height:450px;

	margin:164px auto;
	
	
	background:rgba(121, 164, 223,0.8);
}
}
#header{
	
	height:40px;
	background: url(<c:url value="/img/rect.png"/>) no-repeat;
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
	font-size:1.2em;
}
#lgorrg{
	float:right;
	margin-right:30px;
	line-height:20px;
}
#lgorrg a{
	font-size:0.6em;
}

#content{

	height:740px;
	background:url(<c:url value="/img/bg.png"/>) no-repeat;
	
}

#login_area h2{
	font-size:1.8em;
	font-weight:100;
	margin:35px 0;
	text-align:center;
}
#login_area p{
	margin-left:30%;
}
#pnumber{
	margin-right:10px;
}
#login_area p a{
	font-size:1.2em;
	padding:3%;

	
}

#login_area form{
	margin-top:25px;
}
#login_area form .textstyle{
	width:88%;
	border:none;
	height:43px;
	font-size:1.1em;
	text-indent:3%;
	margin-left:6%;
}
#login_area form #tstyle{
	border:1px #a7a7a7 solid;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
}
#login_area form #pstyle{
	border:1px #a7a7a7 solid;
	border-top:none;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	margin-bottom:10px;
	outline:none;
}
#login_area form #cbox{
	position:absolute;
	top:5px;
	margin-right:1.5%;
	background:#FFF;
}

#login_area form span{
	font-size:1em;
}

#login_area form #btn{
	width:88%;
	height:40px;
	margin-top:30px;
	background:#FFF; 
	border:none;
	border-top-left-radius:5px;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	margin-left: 6%;
	border-top-right-radius:5px;
	font-size:1.2em;
}
#login_area form #btn:hover{
	background:#FD9C68;
}
#info{
	height:200px;

	background:url(<c:url value="/img/rect.png"/>);
}
#footer{
	height:115px;

		background:#e2f7ff;
	padding-bottom:35px;
}

#footer ul{
	display:inline-block;

	list-style:none;

	text-align:center;

	margin:25px auto 0 auto;
	border:1px solid #006;
}

#footer ul li{
	float:left;
	
}
#footer ul li a{
	color:#000;
	font-size:1em;
	margin-right:1em;
	
}



</style>

<title>登陆</title>
</head>
<body>
	<%
	Cookie cookies[] = request.getCookies();
	for (int i = 0; i < cookies.length; i++) {
		Cookie cookie = cookies[i];
		String key = cookie.getName();
		if(key != null & key != ""){
		}
		if(key.equals("c_id")) {
			}
		}
	%>
	<c:if test="${customer != null}">
		<c:out value="检测到已登陆用户:${userName} ${password}"></c:out>
		<c:redirect url="/login/online.action" />
	</c:if>
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
    <div style="height:1px;"></div>
    	<div id="login_area">
        <div style="height:1px;"></div>
        	<h2>香皂DIY登陆界面</h2>
            <p>
            	<a id="pnumber" href="#">手机号</a><a style="border-bottom:1px #FFF solid;" id="unumber" href="#">账号</a>
            </p>
            <form action="${pageContext.request.contextPath}/login/login.action" method="post">
            	<input type="text" class="textstyle" id="tstyle" name="userName_or_email" placeholder="账号或邮箱" /><br />
                <input type="password" class="textstyle" id="pstyle" name="password" placeholder="密码"  /><br />
                
                <span style="position:relative;left:10%; "><input id="cbox" type="checkbox" value="save" /><span style="margin-left:20px;">自动登陆</span></span>
                <span  class="span-m-left"><a href="#">忘记密码</a></span><br />
                <input type="submit" id="btn" value="登录" /><br />
                <span></span><a style="font-size:0.76em; display:block;text-align:center;margin-top:10px;" href="${pageContext.request.contextPath}/sign/toSign.action">还没有账号？注册</a>
             
            </form>
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