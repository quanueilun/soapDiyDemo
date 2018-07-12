<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
<script src="<c:url value="/js/jquery.js"/>"></script>
<script src="<c:url value="/js/nav.js"/>"></script>
<script type="text/javascript">
	$(function() {
		//初始化
		var pathname = window.document.location.pathname;
		var path = pathname.substring(0, pathname.substr(1).indexOf('/') + 1);
		//修改
		$(".n input[type=number]").change(function() {
			var good = {};
			good.sh_id = $(this).parent().parent().parent().attr("id");
			good.count = $(this).val();
			var jsonGood = JSON.stringify(good);
			var url = path+"/shopping/changeCount";
			$.post(url, jsonGood, function() {
				
			},'json')
			/*$.ajax({
			    url:url,
			    type:'post',
			    dataType:'json',
			    contentType:"application/json",
			    data:json,
			    success:function(response){
			    console.log(response);
			    }
			});*/
		})
		//删除
		$(".d").click(function() {
			var sh_id = $(this).parent().attr("id");
			window.location.href = path + "/order/delete/" + sh_id;
		})
	})
</script>
<style>
* {
	padding: 0;
	margin: 0;
	color: #999;
}

body {
	font-family: "微软雅黑";
}

a {
	text-decoration: none;
	color: #666;
	font-size: 12px;
}

@media screen and (min-width:1366px) {
	#box {
		width: auto;
		height: auto;
	}
	#header ul {
		margin-left: 750px;
		position: absolute;
		top: 0px;
	}
	#header ul li a {
		color: #FFF;
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#content #order-info {
		width: 87%;
		margin: 0 auto;
	}
	#content {
		width: 80%;
		height: 850px;
		background: #f8f8f8;
		margin: 0 auto;
	}
	#order-info table {
		margin-top: 35px;
	}
	#order-info table #t td {
		color: #FFF;
		height: 42px;
		background: #79a4df;
		border-bottom: 25px solid #f8f8f8;
	}
	#order-info table td {
		position: relative;
		height: 105px;
		color: #898989;
		font-size: 12px;
		vertical-align: middle;
	}
	#order-info table .td-1 {
		text-align: center;
		width: 10%;
	}
	#order-info table .td-1 span {
		vertical-align: middle;
		color: #fff;
	}
	#order-info table .td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	#order-info table .td-2 {
		width: 47%;
		text-indent: 30px;
	}
	#order-info table .td-3 {
		width: 12%;
		text-align: center;
	}
	#order-info table .td-4 {
		width: 12%;
		text-align: center;
	}
	#order-info table .td-5 {
		width: 12%;
		text-align: center;
	}
	#order-info table .td-6 {
		width: 60px;
		text-align: center;
	}
	#order-info table td img {
		width: 16%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	#order-info table td .goods-name {
		display: inline-block;
		width: 300px;
		height: 20px;
		font-size: 14px;
		font-weight: bold;
		overflow: hidden;
	}
	#order-info table td .goods-text {
		display: inline-block;
		width: 300px;
		font-size: 12px;
		overflow: hidden;
	}
	#order-info table td .goods {
		position: relative;
		top: 20px;
		float: left;
		margin-right: 10px;
	}
	#order-info table td .price {
		position: absolute;
		top: 40px;
		font-size: 18px;
		text-align: center;
		font-family: "Lucida Console", Monaco, monospace;
		margin-left: 5px;
	}
	#order-info table tr .number {
		border: 2px solid #d2d2d2;
		position: absolute;
		top: 30px;
		width: 60%;
		height: 18px;
		margin-left: 18%;
	}
	#order-info table tr .number input {
		position: relative;
		left: 26%;
		display: inline-block;
		border: 1px solid #d2d2d2;
		outline: none;
		border-top: none;
		border-bottom: none;
		width: 50%;
		height: 18px;
		overflow: hidden;
		font-size: 0.9em;
		line-height: 18px;
		font-weight: bold;
		background: #f8f8f8;
	}
	#order-info table tr .xg {
		width: 65%;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		margin-top: 45px;
		margin-left: 18%;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
	#order-info table tr .xg2 {
		width: 70px;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
	#footer ul {
		display: inline-block;
		list-style: none;
		margin: 25px auto 0 auto;
	}
	#footer ul li {
		float: left;
	}
	#footer ul li a {
		color: #000;
		font-size: 15px;
		margin-right: 20px;
	}
	#footer p {
		color: #999;
		font-size: 14px;
		text-align: center;
		margin-top: 20px;
		text-height: 14px;
	}
}

@media screen and (max-width:1365px) and (min-width: 1280px) {
	#box {
		width: auto;
		height: auto;
	}
	#header ul {
		margin-left: 650px;
		position: absolute;
		top: 0px;
	}
	#header ul li a {
		color: #FFF;
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#content {
		width: 80%;
		height: 850px;
		background: #f8f8f8;
		margin: 0 auto;
	}
	#content #order-info {
		width: 87%;
		margin: 0 auto;
	}
	#order-info table {
		margin-top: 35px;
	}
	#order-info table #t td {
		color: #FFF;
		height: 42px;
		background: #79a4df;
		border-bottom: 25px solid #f8f8f8;
	}
	#order-info table td {
		position: relative;
		height: 105px;
		color: #898989;
		font-size: 12px;
		vertical-align: middle;
	}
	#order-info table .td-1 {
		text-align: center;
		width: 10%;
	}
	#order-info table .td-1 span {
		vertical-align: middle;
	}
	#order-info table .td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	#order-info table .td-2 {
		width: 47%;
		text-indent: 7%
	}
	#order-info table .td-3 {
		width: 12%;
		text-align: center;
	}
	#order-info table .td-4 {
		width: 12%;
		text-align: center;
	}
	#order-info table .td-5 {
		width: 12%;
		text-align: center;
	}
	#order-info table .td-6 {
		width: 60px;
		text-align: center;
	}
	#order-info table td img {
		width: 16%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	#order-info table td .goods-name {
		display: inline-block;
		width: 300px;
		height: 20px;
		font-size: 14px;
		font-weight: bold;
		overflow: hidden;
	}
	#order-info table td .goods-text {
		display: inline-block;
		width: 300px;
		font-size: 12px;
		overflow: hidden;
	}
	#order-info table td .goods {
		position: relative;
		top: 20px;
		float: left;
		margin-right: 10px;
	}
	#order-info table td .price {
		position: absolute;
		top: 40px;
		font-size: 18px;
		text-align: center;
		font-family: "Lucida Console", Monaco, monospace;
		margin-left: 5px;
	}
	#order-info table tr .number {
		border: 2px solid #d2d2d2;
		position: absolute;
		top: 30px;
		width: 60%;
		height: 18px;
		margin-left: 18%;
	}
	#order-info table tr .number input {
		position: relative;
		left: 26%;
		display: inline-block;
		border: 1px solid #d2d2d2;
		outline: none;
		border-top: none;
		border-bottom: none;
		width: 50%;
		height: 18px;
		overflow: hidden;
		font-size: 0.9em;
		line-height: 18px;
		font-weight: bold;
		background: #f8f8f8;
	}
	#order-info table tr .xg {
		width: 65%;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		margin-top: 45px;
		margin-left: 18%;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
	#order-info table tr .xg2 {
		width: 70px;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
}

@media screen and (max-width: 1279px) and (min-width: 1024px) {
	#box {
		width: auto;
		height: auto;
	}
	#header ul {
		margin-left: 500px;
		position: absolute;
		top: 0px;
	}
	#header ul li a {
		color: #FFF;
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#content {
		width: 90%;
		height: 850px;
		background: #f8f8f8;
		margin: 0 auto;
	}
	#content #order-info {
		width: 87%;
		margin: 0 auto;
	}
	#order-info table {
		margin-top: 35px;
	}
	#order-info table #t td {
		color: #FFF;
		height: 42px;
		background: #79a4df;
		border-bottom: 25px solid #f8f8f8;
	}
	#order-info table td {
		position: relative;
		height: 105px;
		color: #898989;
		font-size: 0.9em;
		vertical-align: middle;
	}
	#order-info table .td-1 {
		text-align: center;
		width: 10%;
	}
	#order-info table .td-1 span {
		vertical-align: middle;
		color: #fff;
	}
	#order-info table .td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	#order-info table .td-2 {
		width: 47%;
		text-indent: 30px;
	}
	#order-info table .td-3 {
		width: 12%;
		text-align: center;
	}
	#order-info table .td-4 {
		width: 12%;
		text-align: center;
	}
	#order-info table .td-5 {
		width: 12%;
		text-align: center;
	}
	#order-info table .td-6 {
		width: 60px;
		text-align: center;
	}
	#order-info table td img {
		width: 16%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	#order-info table td .goods-name {
		display: inline-block;
		width: 100%;
		height: 20px;
		font-size: 14px;
		font-weight: bold;
		overflow: hidden;
	}
	#order-info table td .goods-text {
		display: inline-block;
		width: 100%;
		font-size: 0.9em;
		overflow: hidden;
	}
	#order-info table td .goods {
		position: relative;
		top: 20px;
		float: left;
		margin-right: 10px;
	}
	#order-info table td .price {
		position: absolute;
		top: 40px;
		font-size: 0.9em;
		text-align: center;
		font-family: "Lucida Console", Monaco, monospace;
	}
	#order-info table tr .number {
		border: 2px solid #d2d2d2;
		position: absolute;
		top: 30px;
		width: 67%;
		height: 18px;
		margin-left: 16%;
	}
	#order-info table tr .number input {
		position: relative;
		left: 25%;
		display: inline-block;
		border: 1px solid #d2d2d2;
		outline: none;
		border-top: none;
		border-bottom: none;
		width: 50%;
		height: 18px;
		overflow: hidden;
		font-size: 0.9em;
		line-height: 18px;
		font-weight: bold;
		background: #f8f8f8;
	}
	#order-info table tr .xg {
		width: 72%;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		margin-top: 45px;
		margin-left: 16%;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
	#order-info table tr .xg2 {
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		line-height: 25px;
		text-align: center;
		cursor: pointer;
		margin-left: 5%;
		font-size: 0.9em;
	}
}

@media screen and (max-width:1023px) and (min-width: 900px) {
	#box {
		width: auto;
		height: auto;
	}
	#header ul {
		margin-left: 350px;
		position: absolute;
		top: 0px;
	}
	#header ul li a {
		color: #FFF;
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#content {
		width: 95%;
		height: 850px;
		background: #f8f8f8;
		margin: 0 auto;
	}
	#content #order-info {
		width: 87%;
		margin: 0 auto;
	}
	#order-info table {
		margin-top: 35px;
	}
	#order-info table #t td {
		color: #FFF;
		height: 42px;
		background: #79a4df;
		border-bottom: 25px solid #f8f8f8;
	}
	#order-info table td {
		position: relative;
		height: 105px;
		color: #898989;
		font-size: 12px;
		vertical-align: middle;
	}
	#order-info table .td-1 {
		text-align: center;
		width: 10%;
	}
	#order-info table .td-1 span {
		vertical-align: middle;
		color: #fff;
	}
	#order-info table .td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	#order-info table .td-2 {
		width: 40%;
		text-indent: 30px;
	}
	#order-info table .td-3 {
		width: 15%;
		text-align: center;
	}
	#order-info table .td-4 {
		width: 20%;
		text-align: center;
	}
	#order-info table .td-5 {
		width: 15%;
		text-align: center;
	}
	#order-info table .td-6 {
		width: 60px;
		text-align: center;
	}
	#order-info table td img {
		width: 20%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	#order-info table td .goods-name {
		display: inline-block;
		width: 50%;
		height: 20px;
		font-size: 14px;
		font-weight: bold;
		overflow: hidden;
	}
	#order-info table td .goods-text {
		display: inline-block;
		width: 100%;
		font-size: 12px;
		overflow: hidden;
	}
	#order-info table td .goods {
		position: relative;
		top: 20px;
		float: left;
		margin-right: 10px;
	}
	#order-info table td .price {
		position: absolute;
		top: 40px;
		font-size: 18px;
		text-align: center;
		font-family: "Lucida Console", Monaco, monospace;
		margin-left: 5px;
	}
	#order-info table tr .number {
		border: 2px solid #d2d2d2;
		position: absolute;
		top: 30px;
		width: 60%;
		height: 18px;
		margin-left: 18%;
	}
	#order-info table tr .number input {
		position: relative;
		left: 26%;
		display: inline-block;
		border: 1px solid #d2d2d2;
		outline: none;
		border-top: none;
		border-bottom: none;
		width: 50%;
		height: 18px;
		overflow: hidden;
		font-size: 0.9em;
		line-height: 18px;
		font-weight: bold;
		background: #f8f8f8;
	}
	#order-info table tr .xg {
		width: 62%;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		margin-top: 45px;
		margin-left: 18%;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
	#order-info table tr .xg2 {
		width: 70px;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
}

@media screen and (max-width:899px) and (min-width:720px) {
	#box {
		width: auto;
		height: auto;
	}
	#header ul {
		margin-left: 200px;
		position: absolute;
		top: 0px;
	}
	#header ul li a {
		color: #FFF;
		font-size: 3px;
		height: 20px;
		width: 60px;
		display: inline-block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#content {
		width: 100%;
		height: 850px;
		background: #f8f8f8;
		margin: 0 auto;
	}
	#content #order-info {
		width: 87%;
		margin: 0 auto;
	}
	#order-info table {
		margin-top: 35px;
	}
	#order-info table #t td {
		color: #FFF;
		height: 42px;
		background: #79a4df;
		border-bottom: 25px solid #f8f8f8;
	}
	#order-info table td {
		position: relative;
		height: 105px;
		color: #898989;
		font-size: 12px;
		vertical-align: middle;
	}
	#order-info table .td-1 {
		text-align: center;
		width: 10%;
	}
	#order-info table .td-1 span {
		vertical-align: middle;
		color: #fff;
	}
	#order-info table .td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	#order-info table .td-2 {
		width: 40%;
		text-indent: 30px;
	}
	#order-info table .td-3 {
		width: 15%;
		text-align: center;
	}
	#order-info table .td-4 {
		width: 20%;
		text-align: center;
	}
	#order-info table .td-5 {
		width: 15%;
		text-align: center;
	}
	#order-info table .td-6 {
		width: 60px;
		text-align: center;
	}
	#order-info table td img {
		width: 21%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	#order-info table td .goods-name {
		display: inline-block;
		width: 100%;
		height: 20px;
		font-size: 0.9em;
		font-weight: bold;
		overflow: hidden;
	}
	#order-info table td .goods-text {
		display: inline-block;
		width: 100%;
		font-size: 0.8em;
		overflow: hidden;
	}
	#order-info table td .goods {
		position: relative;
		top: 20px;
		float: left;
		margin-right: 10px;
	}
	#order-info table td .price {
		position: absolute;
		top: 40px;
		font-size: 0.9em;
		text-align: center;
		font-family: "Lucida Console", Monaco, monospace;
		margin-left: 5px;
	}
	#order-info table tr .number {
		border: 2px solid #d2d2d2;
		position: absolute;
		top: 30px;
		width: 60%;
		height: 18px;
		margin-left: 18%;
	}
	#order-info table tr .number input {
		position: relative;
		left: 26%;
		display: inline-block;
		border: 1px solid #d2d2d2;
		outline: none;
		border-top: none;
		border-bottom: none;
		width: 50%;
		height: 18px;
		overflow: hidden;
		font-size: 0.9em;
		line-height: 18px;
		font-weight: bold;
		background: #f8f8f8;
	}
	#order-info table tr .xg {
		width: 65%;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		margin-top: 45px;
		margin-left: 18%;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
	#order-info table tr .xg2 {
		width: 60px;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
}

@media screen and (max-width:719px) and (min-width:600px) {
	#box {
		width: auto;
		height: auto;
	}
	#header ul {
		margin-left: 170px;
		position: absolute;
		top: 0px;
	}
	#header ul li a {
		color: #FFF;
		font-size: 1px;
		height: 20px;
		width: 50px;
		display: inline-block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#content {
		width: 100%;
		height: 850px;
		background: #f8f8f8;
		margin: 0 auto;
	}
	#content #order-info {
		width: 87%;
		margin: 0 auto;
	}
	#order-info table {
		margin-top: 35px;
	}
	#order-info table #t td {
		color: #FFF;
		height: 42px;
		background: #79a4df;
		border-bottom: 25px solid #f8f8f8;
	}
	#order-info table td {
		position: relative;
		height: 105px;
		color: #898989;
		font-size: 0.7em;
		vertical-align: middle;
	}
	#order-info table .td-1 {
		text-align: center;
		width: 10%;
	}
	#order-info table .td-1 span {
		vertical-align: middle;
		font-size: 0.8em;
		color: #fff;
	}
	#order-info table .td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	#order-info table .td-2 {
		width: 40%;
		text-indent: 7%;
	}
	#order-info table .td-3 {
		width: 15%;
		text-align: center;
	}
	#order-info table .td-4 {
		width: 20%;
		text-align: center;
	}
	#order-info table .td-5 {
		width: 15%;
		text-align: center;
	}
	#order-info table .td-6 {
		text-align: center;
	}
	#order-info table td img {
		width: 21%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	#order-info table td .goods-name {
		display: inline-block;
		width: 50%;
		height: 20px;
		font-size: 0.9em;
		font-weight: bold;
		overflow: hidden;
	}
	#order-info table td .goods-text {
		display: inline-block;
		width: 100%;
		font-size: 0.8em;
		overflow: hidden;
	}
	#order-info table td .goods {
		position: relative;
		top: 20px;
		float: left;
		margin-right: 10px;
	}
	#order-info table td .price {
		position: absolute;
		top: 40px;
		font-size: 1.1em;
		text-align: center;
		font-family: "Lucida Console", Monaco, monospace;
		margin-left: 5px;
	}
	#order-info table tr .number {
		border: 2px solid #d2d2d2;
		position: absolute;
		top: 30px;
		width: 60%;
		height: 18px;
		margin-left: 20%;
	}
	#order-info table tr .number input {
		position: relative;
		left: 25%;
		display: inline-block;
		border: 1px solid #d2d2d2;
		outline: none;
		border-top: none;
		border-bottom: none;
		width: 50%;
		height: 18px;
		overflow: hidden;
		font-size: 0.9em;
		line-height: 18px;
		font-weight: bold;
		background: #f8f8f8;
	}
	#order-info table tr .xg {
		width: 65%;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		margin-top: 45px;
		margin-left: 20%;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
	#order-info table tr .xg2 {
		width: 60px;
		height: 25px;
		background: #ff7f65;
		color: #FFF;
		line-height: 25px;
		cursor: pointer;
		text-align: center;
		font-size: 14px;
	}
	#footer ul {
		display: inline-block;
		list-style: none;
		margin: 25px auto 0 auto;
	}
	#footer ul li {
		float: left;
	}
	#footer ul li a {
		color: #999;
		font-size: 10px;
		margin-right: 20px;
	}
	#footer p {
		color: #999;
		font-size: 10px;
		text-align: center;
		margin-top: 20px;
		text-height: 14px;
	}
}

#header {
	height: 40px;
	background: url(< c : url value = "/img/rect.png"/ >) no-repeat;
}

#header ul li {
	float: left;
	height: 40px;
	color: #FFF;
	list-style: none;
}

#header ul li:hover {
	background: #eb9290;
}

#header-title {
	display: inline-block;
	color: #FFF;
	margin-left: 50px;
	line-height: 40px;
	font-size: 18px;
}

#lgorrg {
	color: #FFF;
	float: right;
	margin-right: 30px;
	line-height: 20px;
}

#lgorrg a {
	color: #FFF;
	font-size: 10px;
}

.check {
	text-align: center;
	border-top: 1px solid #d2d2d2;
	border-left: 1px solid #d2d2d2;
	border-bottom: 1px solid #d2d2d2;
}

.g-info {
	border-top: 1px solid #d2d2d2;
	border-left: 1px solid #d2d2d2;
	border-bottom: 1px solid #d2d2d2;
}

.p {
	border-top: 1px solid #d2d2d2;
	border-left: 1px solid #d2d2d2;
	border-bottom: 1px solid #d2d2d2;
}

.n {
	border-top: 1px solid #d2d2d2;
	border-left: 1px solid #d2d2d2;
	border-bottom: 1px solid #d2d2d2;
}

.s {
	border-top: 1px solid #d2d2d2;
	border-left: 1px solid #d2d2d2;
	border-bottom: 1px solid #d2d2d2;
}

.d {
	border: 1px solid #d2d2d2;
}

#info {
	height: 200px;
	background: url(img/rect.png);
}

#footer {
	height: 115px;
	background: #e2f7ff;
	padding-bottom: 35px;
}

#footer ul {
	display: inline-block;
	list-style: none;
	text-align: center;
	margin: 25px auto 0 auto;
}

#footer ul li {
	float: left;
}

#footer ul li a {
	color: #000;
	font-size: 15px;
	margin-right: 20px;
}
</style>
</head>
<body>
	<input type="hidden" value="${customer.username}">
	<div>
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
	</div>
	<div id="content">
		<div style="height: 1px;"></div>
		<div id="order-info">
			<p style="margin-top: 25px; margin-bottom: 18px; color: #999;">
				<a href="#">首页</a>&#8250;&#8250;<a href="#">购物车</a>
			</p>
			<table border:"0" cellspacing="0"">
				<tr id="t">
					<td class="td-1"><input type="checkbox" value="true" /><span>&nbsp;全选</span></td>
					<td class="td-2">商品信息</td>
					<td class="td-3">单位(元)</td>
					<td class="td-4">数量</td>
					<td class="td-5">小计</td>
					<td class="td-6">操作</td>
				</tr>
				<!-- 购物车列表 -->
				<c:forEach items="${shoppingcar}" var="row">
					<tr class="order" id="${row.sh_id}">
						<!-- 复选按钮 -->
						<td class="check"><input type="checkbox" /></td>
						<!-- 商品信息 -->
						<td class="g-info"><img />
							<p class="goods">
								<span class="goods-name">${row.good.name}</span> <br /> <span
									class="goods-text">${row.good.note}</span>
							</p></td>
						<!-- 单价 -->
						<td class="p">
							<p class="price">
								<span>&yen;</span> <span class="monny">${row.good.price}</span>
							</p>
						</td>
						<!--数量 -->
						<td class="n">
							<p class="number">
								<input type="number" maxlength="4" value="${row.count}"
									name="count">
							</p>
						</td>
						<!-- 小计 -->
						<td class="s">
							<p class="price">
								<span>&yen;</span> <span id="sum" class="monny">${row.good.price * row.count}</span>
							</p>
						</td>
						<!-- 操作 -->
						<td class="d"><div class="xg2">删除</div></td>
					</tr>
				</c:forEach>


			</table>
		</div>

	</div>

	<div id="info">
		<div></div>
		<div></div>
		<div></div>
	</div>
	<div id="footer">
		<div style="height: 1px;"></div>

		<div style="text-align: center;">

			<ul>

				<li><a href="#">团队简介</a></li>
				<li><a href="#">用户协议</a></li>
				<li><a href="#">使用指南</a></li>
				<li><a href="#">隐私声明</a></li>

			</ul>
			<br />
			<p>
				公司名称：GDKM软件三班创新网页|法人代表：XXX|电话：020-xxx-xxxx|地址：xx省xx市xx区xx路xx号|<br />&nbsp;&nbsp;营业执照号：xxx-xx-xxxxxx(信息验证)|备案信息：第xxxx-xxxx-xxxx|隐私保护责任人：xxx|
			</p>

		</div>

	</div>
	</div>

</body>

</html>