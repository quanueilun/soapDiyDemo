//注册事件
$(function() {
	
	var All_list = $("#All_list");
	var unPay_list = $("#unPay_list");
	var unSend_list = $("#unSend_list");
	var unGet_list = $("#unGet_list");
	
	unPay_list.hide();
	unSend_list.hide();
	unGet_list.hide();
	
	$("#All_button").click(function() {
		All_list.show();
		unPay_list.hide();
		unSend_list.hide();
		unGet_list.hide();
	})	
	$("#unPay_button").click(function() {
		All_list.hide();
		unPay_list.show();
		unSend_list.hide();
		unGet_list.hide();
	})
	$("#unSend_button").click(function() {
		All_list.hide();
		unPay_list.hide();
		unSend_list.show();
		unGet_list.hide();
	})
	$("#unGet_button").click(function() {
		All_list.hide();
		unPay_list.hide();
		unSend_list.hide();
		unGet_list.show();
	})
})
