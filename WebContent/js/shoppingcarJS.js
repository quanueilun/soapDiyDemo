
$(document).ready(function () {
	//初始化
	var pathname = window.document.location.pathname;
	var path = pathname.substring(0,pathname.substr(1).indexOf('/')+1); 
	//修改
    $(".xg").click(function () {
        var sh_id = $(this).parent().parent().attr("id");
    	var count = $(this).prev().children("input").val();
        window.location.href = path+"/order/changeCount/"+sh_id+"/"+count;

    })
    //删除
    $(".d").click(function () {
        var sh_id = $(this).parent().attr("id");
        window.location.href = path+"/order/delete/"+sh_id;
    })
})
