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
	var loop = 0;
	
	$(function(){
		$("#btn-group").find("li").hide().click(function(e){
			e.preventDefault();
			setColor();
			showMenu();
			loop++;
		});
		$("#ok").click(function(){
			alert("您定制的订单已加入购物车");
			$(".indexNav").children("li").eq(2).click();
		})
		//初始化
		showMenu();
		setColor();
		loop++;
	})
	function setColor(){
		$("#step"+(loop+1)).css("color","#ff8065").children(".c1").css({
			"color":"white",
			"border":"1px #ff8065 solid",
			"background":"#ff8065"
		});
	}
	function showMenu(){
		var test = $("#btn-group").children("ul").eq(loop-1).find("li").hide();
		var test = $("#btn-group").children("ul").eq(loop).find("li").show();
		console.log(test);		
	}
</script>
<title>香皂定制</title>

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
#header{

	height:40px;
	background:url(<c:url value="/img/rect.png"/>) no-repeat;
}
#header ul{
	margin-left:750px;
	position:absolute;
	top:0px;
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
	
	.point{

	display:inline-block;
	width:60%;



	font-size:1px;
	height:40px;
	line-height:40px;
	text-align:center;

	color:#CCC;
	float:right;
	letter-spacing:3px;
	
}
	
	
	
	.text{
	width:100%;
	font-size:6px;
	text-align:left;
	text-indent:5px;

	float:left;
	
}
#content #show #step .c1{
	display:inline-block;
	width:30px;
	height:30px;
	line-height:30px;
	border-radius:50%;
	border:1px #999 solid;
	margin:5px auto;
	
}
#content #show #step .c2{

	width:25px;
	height:25px;
	line-height:25px;


	
}
#content #show #step div{
	
	display:inline-block;
	width:12%;
	height:80px;
	text-align:center;
	margin:0 auto;
	margin-top:30px;

}
#content #show #step #step5,#content #show #step #step6,#content #show #step #step7{
	width:8%;

}
#content #show #step .text2{
	display:inline-block;
	width:62%;
	text-align:left;
	font-size:6px;

	float:left;
	
}

	#footer p{
	color:#999;
	font-size:0.8em;

	margin-top:20px;
	line-height:18px;


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
	#footer p{
	color:#999;
	font-size:0.9em;
	text-align:center;
	margin-top:20px;
	text-height:14px;


}
#content #show #step #step5,#content #show #step #step6,#content #show #step #step7{
	width:8%;

}
#content #show #step .c1{
	display:inline-block;
	width:30px;
	height:30px;
	line-height:30px;
	border-radius:50%;
	border:1px #999 solid;
	margin:5px auto;
	
}
#content #show #step .c2{

	width:25px;
	height:25px;
	line-height:25px;


	
}
#content #show #step div{
	
	display:inline-block;

	width:10%;
	height:80px;
	text-align:center;
	margin:0 auto;
	margin-top:30px;

}
#content #show #step .text2{
	display:inline-block;
	width:100%;

	font-size:6px;
	text-align:left;
	float:left;

	
}
.point{

	display:inline-block;
	width:60%;



	font-size:1px;
	height:40px;
	line-height:40px;
	text-align:center;
	color:#CCC;
	float:right;
	letter-spacing:3px;
	
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
	font-size:0,8em;
	text-align:center;
	margin-top:20px;
	text-height:14px;


}
#content #show #step .text2{
	display:inline-block;
	width:100%;

	font-size:6px;
	text-align:left;
	float:left;

	
}
#content #show #step .c1{
	display:inline-block;
	width:28px;
	height:28px;
	line-height:28px;
	border-radius:50%;
	border:1px #999 solid;
	margin:5px auto;
	
}
#content #show #step .c2{

	width:23px;
	height:23px;
	line-height:25px;


	
}
.point{

	display:inline-block;
	width:60%;



	font-size:1px;
	height:40px;
	line-height:40px;
	text-align:center;

	color:#CCC;
	float:right;
	letter-spacing:3px;
	
}
#content #show #step div{
	
	display:inline-block;

	width:10%;
	height:80px;
	text-align:center;
	margin:0 auto;
	margin-top:30px;

}
#content #show #step #step5,#content #show #step #step6,#content #show #step #step7{
	width:8%;

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
#content #show #step .c1{
	display:inline-block;
	width:25px;
	height:25px;
	line-height:25px;
	border-radius:50%;
	border:1px #999 solid;
	margin:5px auto;
	
}
#content #show #step .c2{
	width:20px;
	height:20px;
	line-height:20px;
	margin:10px 0;

	
}
.point{

	display:inline-block;
	width:60%;



	font-size:1px;
	height:40px;
	line-height:40px;
	text-align:center;

	color:#CCC;
	float:right;
	letter-spacing:3px;
	
}
#content #show #step .text2{
	display:inline-block;
	width:100%;

	font-size:6px;
	text-align:left;
	float:left;
	
}
#content #show #step div{
	
	display:inline-block;
	width:10%;
	height:80px;
	text-align:center;
	margin:0 auto;
	margin-top:30px;

}
#content #show #step #step5,#content #show #step #step6,#content #show #step #step7{
	width:8%;

}
	#footer p{
		color:#999;
		font-size:0.8em;
		text-align:center;
		margin-top:20px;
		text-height:14px;
	
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
	font-size:0.8em;

	margin-top:20px;
	line-height:18px;


	}
	#content #show #step .text2{
	display:inline-block;
	width:100%;
	text-align:left;
	font-size:6px;
	float:left;
	
}

#content #show #step .c1{
	display:inline-block;
	width:21px;
	height:21px;
	line-height:21px;
	border-radius:50%;
	border:1px #999 solid;
	margin:10px auto;
	
}
#content #show #step .c2{
	width:18px;
	height:18px;
	line-height:18px;
	margin:10px auto;
	

	
}
	#content #show #step div{
	
	display:inline-block;
	width:10%;
	height:80px;
		margin:0 auto;

	margin-top:30px;

}
#content #show #step #step5,#content #show #step #step6,#content #show #step #step7{
	width:9%;

}
.point{

	display:inline-block;
	width:60%;



	font-size:1px;
	height:40px;
	line-height:40px;
	text-align:center;
	color:#CCC;
	float:right;
	letter-spacing:1px;
	
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
	font-size:0.8em;

	margin-top:20px;
	line-height:18px;


	}

#content #show #step div{
	
	display:inline-block;
	width:10%;
	height:80px;
	text-align:center;
	margin:0 auto;
	margin-top:30px;

}
#content #show #step .c1{
	display:inline-block;
	width:20px;
	height:20px;
	line-height:20px;
	border-radius:50%;
	border:1px #999 solid;
	margin:10px auto;
	
}
#content #show #step .c2{
	width:18px;
	height:18px;
	line-height:18px;
	margin:10px auto;
	

	
}
#content #show #step .text2{
	display:inline-block;
	width:100%;
	text-align:left;
	font-size:6px;
	float:left;
	
}

.point{

	display:inline-block;
	width:60%;



	font-size:1px;
	height:40px;
	line-height:40px;
	text-align:center;
	color:#CCC;
	float:right;
	letter-spacing:1px;
	
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
	font-size:0.8em;

	margin-top:20px;
	line-height:18px;


	}
#content #show #step div{
	
	display:inline-block;
	width:11%;
	height:80px;
	text-align:center;
	margin:0 auto;
	margin-top:30px;

}
#content #show #step .c1{
	display:inline-block;
	width:19px;
	height:19px;
	line-height:19px;
	border-radius:50%;
	border:1px #999 solid;
	margin:10px auto;
	
}
#content #show #step .c2{
	width:17px;
	height:17px;
	line-height:17px;
	margin:10px auto;
	

	
}
#content #show #step .text2{
	display:inline-block;
	width:100%;
	text-align:left;
	font-size:6px;
	float:left;
	
}
.point{

	display:inline-block;
	width:60%;



	font-size:1px;
	height:40px;
	line-height:40px;
	text-align:center;
	color:#CCC;
	float:right;
	
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


	#footer p{
	color:#999;
	font-size:0.8em;

	margin-top:20px;
	line-height:18px;


	}

#content #show #step div{
	
	display:inline-block;
	width:11%;
	height:80px;
	text-align:center;
	margin:0 auto;
	margin-top:30px;

}
#content #show #step .c1{
	display:inline-block;
	width:18px;
	height:18px;
	line-height:18px;
	border-radius:50%;
	border:1px #999 solid;
	margin:10px auto;
	
}
#content #show #step .c2{
	width:17px;
	height:17px;
	line-height:17px;
	margin:10px auto;
	

	
}
#content #show #step .text2{
	display:inline-block;
	width:100%;
	text-align:left;
	font-size:6px;
	float:left;
	
}
.point{

	display:inline-block;
	width:60%;



	font-size:1px;
	height:40px;
	line-height:40px;
	text-align:center;
	color:#CCC;
	float:right;
	
}
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
	height:710px;
	border:1px solid #009;
}
#content #show{
	position:relative;
	display:inline-block;
	width:80%;
	height:710px;
	background:#f7f7f7;

	
}
#content #btn-group{
	width:40%;
	background:#096;
}
#content #sope-show{
	position:relative;
	width:62%;

	height:400px;
	margin:0 auto;
		background:#fff;
}
.c{
	color:#666;
}
#content #sope-show #c{


	color:#999;
	font-size:0.7em;
	letter-spacing:10px;
	text-align:center;

}

#content #show #sope-show span img{
	display:inline-block;
	position:absolute;
	

	padding-left:1%;
	top:150px;
	
}

#content #show #step{


	height:140px;

	color:#999;
	font-size:0.8em;
	text-align:center;


}


#content #show #step #step5 span,#content #show #step #step6 span,#content #show #step #step7 span{
	font-size:0.5em;
}
#content #show #step div span{
	display:inline-block;
	margin:0 auto;
	font-size:0.7em;
	
	
}
.text{
	width:100%;
	font-size:6px;
	text-align:left;

	float:left;
	
}





#content #show #step #step5 .point2,#content #show #step #step6 .point2,#content #show #step #step7 .point2{
	width:62%;

}

#content #btn-group{
	padding-top:10px;
	width:20%;
	height:700px;
	background:#FFF;	
	float:right;
	overflow:scroll;
}
#content #btn-group ul div{
	display:inline-block;

	width:85%;
	margin:0 7.5%;
	margin-bottom:5px;
	height:40px;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	background:#78a4e0;
	text-align:center;
	line-height:40px;

	
}
#content #btn-group ul li{
	display:inline-block;
	width:40%;
	height:52px;
	background:#006;
	text-align:center;
	line-height:52px;
	margin-bottom:5px;
	border-radius:5px;
}
.m-left{
	margin-left:9%;
}
#footer{
	height:115px;

		background:#e2f7ff;
	padding-bottom:35px;
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

    </style>
</head>
<body>
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
        	<div id="show">
            	<div id="step">
                	<div id="step1">
                    	<span class="text">step1</span><br />
                        <span class="c1">1</span><span class="point">&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;></span>
                        <span class="text">选择皂基</span>
                    </div>

                    <div id="step2">
                    	<span class="text">step2</span><br />
                        <span class="c1">2</span><span class="point">&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;></span>
                        <span class="text">选择模具</span>
                    </div>
                    
                    <div id="step3">
                    	<span class="text">step3</span><br />
                        <span class="c1">3</span><span class="point">&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;></span>
                        <span class="text">选择色彩</span>
                    </div>
                    
                    <div id="step4">
                    	<span class="text">step4</span><br />
                        <span class="c1">4</span><span class="point">&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;></span>
                        <span class="text">选择香味</span>
                    </div>
                    
                    <div id="step5">
                    	<span class="text2">step5</span><br />
                        <span class="c1 c2">5</span><span class="point point2">&#8226;&#8226;&#8226;&#8226;&#8226;></span>
                        <span class="text2">选择粉末</span>
                    </div>
                    
                    <div id="step6">
                    	<span class="text2">step6</span><br />
                        <span class="c1 c2 ">6</span>  <span class="point point2">&#8226;&#8226;&#8226;&#8226;&#8226;></span>

                        <span class="text2">选择内花</span>
                    </div>
                  
                    <div id="step7" style="position:relative">
                    	<span class="text2">step7</span><br />
                        <span class="c1 c2" style="display:block; margin:10px 0;">7</span>
                        <span class="text2">选择包装</span>
                    </div>
                    
                </div>
                <div id="sope-show">
                	<span><img src="<c:url value="/img/p.png"/>" style="width:12%;" /></span>
                    <span><img src="<c:url value="/img/n.png"/>"  style="width:12%;right:0px;padding-left:0;padding-right:1%;" /></span>
                    <p style="text-align:center;"><img id="sope-pic" style="width:75%;height:350px;margin-top:" src="<c:url value="/img/diy/"/>"/></p>
                    <p id="c" ><span class="c">●</span><span>●</span><span>●</span><span>●</span><span>●</span><span>●</span></p>
                </div>
               
            </div>
            <div id="btn-group">
            	<ul id="soapbase">	
               		<div>Soap 皂底</div>
                	<a href=""><li class="m-left">纯色皂底</li></a>
                	<a href=""><li >透明皂底</li></a>
                </ul>
                <ul id="shape">
                	<div>Shape 形状</div>
                    <a href=""><li class="m-left">形状2</li></a>
                    <a href=""><li>形状2</li></a>
                </ul>
                <ul>
                	<div>&nbsp;Color 色彩</div>
                    <a href=""><li class="m-left">色彩1</li></a>
                    <a href=""><li>色彩2</li></a>                	
                </ul>
                <ul>
                	<div>&nbsp;Small 香味</div>
                    <a href=""><li class="m-left">香味1</li></a>
                    <a href=""><li>香味2</li></a>                	
                </ul>     
                <ul>           	
                   <div>&nbsp;&nbsp;&nbsp;Bag 包装</div>
                    <a href=""><li class="m-left">包装1</li></a>
                    <a href=""><li>包装2</li></a>                   
                </ul>
                <ul> 
                    <div>&nbsp;&nbsp;Stive 粉末</div>
                    <a href=""><li class="m-left">粉末1</li></a>
                    <a href=""><li>粉末2</li></a>                    
                </ul>
                <ul>
                    <div>Flower 内花</div>
                    <a href=""><li class="m-left">内花1</li></a>
                    <a href=""><li>内花2</li></a>                    
				</ul>
                <ul id="ok">
                    <a href="#"><div>提交订单</div></a>
				</ul>				
            </div>
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

</body>
</html>
