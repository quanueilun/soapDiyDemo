$(function(){
		//初始化
		var pathname = window.document.location.pathname;
		var path = pathname.substring(0,pathname.substr(1).indexOf('/')+1); 
		$(".online").hide();
		//导航栏跳转
		$(".indexNav li").eq(0).click(function(){
				window.location.replace(path+"/index/toIndex");
			}).next().click(function(){
				window.location.replace(path+"/order/toOrder");
			}).next().click(function(){
				window.location.replace(path+"/order/toShoppingcar");
			}).next().click(function(){
				window.location.replace(path+"/diy/toDiy");
			}).next().click(function(){
				window.location.replace(path+"/login/exit");
			});
			
			
		$("#header span").eq(2).children("a").eq(0).click(function(){
			window.location.replace(path+"/login/toLogin");
		}).next().click(function(){
			window.location.replace(path+"/sign/toSign");
		}).parent().next().children("a").eq(0).click(function(){
			window.location.replace(path+"/login/toLogin");
		}).next().click(function(){
			window.location.replace(path+"/sign/toSign");
		});
		$(".online").children("span").click(function(){
			window.location.replace(path+"/login/online");
		});
		//登陆验证
		var username = $("input[type=hidden]").val();
		if(username != null && username != ""){
			console.log(username);
			$(".online").show();
			$(".unline").hide();
		}
			
})