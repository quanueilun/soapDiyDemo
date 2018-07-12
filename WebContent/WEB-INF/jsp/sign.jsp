<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/nav.js"></script>
<script>
	$(function(){
		$("input[name=userName]").keyup(function(){
			var userName = encodeURI(encodeURI($(this).val()));
			$.get("${pageContext.request.contextPath}/sign/checkUserName/"+userName,function(data){
				console.log(data); 
			})
		})
	})
</script>
<style>
*{
	margin:0;
	padding:0;
	color:#FFF;
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
	font-size:12px;
	text-align:center;
	margin-top:20px;
	text-height:14px;

}

}
#header{
	height:40px;
	background:url(${pageContext.request.contextPath}/img/rect.png) no-repeat;
}

#header ul li{
	float:left;
	height:40px;

	list-style:none;
}
#header ul li:hover{

	background:#eb9290;
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
#info{
	height:200px;

	background:url(rect.png);
}
#footer{
	height:115px;

		background:#e2f7ff;
	padding-bottom:35px;
}

#footer ul{


	list-style:none;
	text-align:center;
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

#content{
	width:900px;
	height:610px;

	margin:0 auto;
	color:#666;
}
#content #content-title{
	width:495px;
	height:40px;
	border-bottom:1px #999 solid;
	padding-left:25px;
	padding-right:10px;
	padding-bottom:16px;
	margin-top:80px;
	margin-left:80px;
}
#content #content-title #content-title-s1{
	color:#79a4df;
	font-size:36px;
	
}
#content #content-title #content-title-s2{
	color:#999;
	font-size:26px;
}
#content #content-title a{
	width:52px;
	height:11px;
	line-height:11px;
	padding:8px 16px;
	font-size:12px;
		border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	background:#79a4df;
	float:right;
	margin-top:5px;

}
#content form label{
	display:inline-block;
	text-align:right;
	font-weight:bold;
	margin-left:155px;
	width:65px;
	height:25px;
	line-height:25px;
	margin-right:30px;

	color:#666;
	font-family:"微软雅黑";
}
#content form .textstyle{
	width:324px;
	height:25px;
	border:1px #CCC solid;
			border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	color:#666;


	
}
#content form label,#content form input{
	margin-top:25px;
}
#content form #btn{
	width:225px;
	height:40px;
	font-size:18px;
	margin-left:250px;
	background:#79a4df;
				border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	border:none;
}
</style>
</head>
<body>
<div id="box">
	<div id="header">
    	<span id="header-title">香皂定制</span>
        <span id="lgorrg" style="position:relative;margin-top:10px;">
        <span style="position:absolute;top:-8px;right:-7px;"><a href="#">Sign&nbsp;&nbsp;in</a>&nbsp;|&nbsp;<a href="#">up</a></span>
        <span style="position:absolute;top:6px;right:-10px;" ><a href="#">登&nbsp;&nbsp;&nbsp;陆</a>&nbsp;|&nbsp;<a href="#">注&nbsp;&nbsp;册</a></span>
        </span>
        <ul>
        	<li>
            <span><a>Home</a>
            <a href="#" style="position:absolute;top:15px;">首&nbsp;&nbsp;页</a></span>
            </li>
            <li>
            	<a href="#" >Sope</a>
            	<a href="#" style="position:absolute;top:15px;">香皂介绍</a>
            
            </li>
            <li>
            <a href="#" >Shopping</a>
            <a href="#" style="position:absolute;top:15px;">香皂成品</a>
            
            
            </li>
            <li>
            <a href="#">Diy</a>
            <a href="#" style="position:absolute;top:15px;">香皂制作</a></li>
            <li>
            <a href="#">We</a>
            <a href="#" style="position:absolute;top:15px;">关于我们</a>
            </li>

        </ul>
    </div>
    <div id="content">
    	<div id="content-title">
        	<span id="content-title-s1">注册</span>&nbsp;
            <span id="content-title-s2">sign&nbsp;up</span>
            <a href="${pageContext.request.contextPath}/login/toLogin.action">已有账号</a>
        </div>
        <form action="${pageContext.request.contextPath}/sign/sign.action" method="post">
        	<label>用户名</label><input class="textstyle" type="search" name="userName" placeholder="请输入用户名"/><br />
            <label>密码</label><input class="textstyle" type="password" name="password"/><br />
            <label>确认密码</label><input class="textstyle" type="password" name="password_check"/><br />
            <label>邮箱</label><input class="textstyle" type="email" name="email"/><br />
            <label>手机号</label><input class="textstyle" type="tel" name="telephone"/><br />
            <label>验证码</label><input style="width:220px;margin-right:20px;" class="textstyle"  type="text"/><a style="	padding:6px 12px;font-size:12px;width:55px;height:10px;border-bottom-left-radius:5px;border-bottom-right-radius:5px;border-top-left-radius:5px;border-top-right-radius:5px;background:#79a4df;" href="#">获取验证码</a><br />
            <input type="submit" id="btn" value="注  册"/>
        </form>
    
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




    </div>
</body>
</html>