<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单界面</title>
<script src="<c:url value="/js/jquery.js"/>"></script>
<script src="<c:url value="/js/nav.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/orderJS.js"/>"></script>
<script>
	$(function() {
		//初始化
		var orderMenu = $("#ul-3").children("li");
		orderMenu.eq(0).addClass("orderMenu_select");
		//鼠标互动响应
		orderMenu.mouseenter(function() {
			$(this).toggleClass("orderMenu_hover");
		}).mouseleave(function() {
			$(this).toggleClass("orderMenu_hover")
		})
		//鼠标点击响应
		orderMenu.click(function() {
			$(this).addClass("orderMenu_select");
			$(this).siblings().removeClass("orderMenu_select");
		})
		//搜索
		var search = $("#ul-3").children("p").children("input");
		search.eq(1).click(function() {
			var searchText = "searchText=" + search.eq(0).val();
			$.get("${pageContext.request.contextPath}/order/orderSearch",
					searchText, function(response,status, xhr) {
							alert("");
							console.log();
					})
			})
	})
</script>
<style>
.orderMenu_normal {
	color: #78a4e0;
}

.orderMenu_hover {
	border-bottom: 1px solid #78a4e0;
	color: #78a4e0;
	cursor: pointer;
}

.orderMenu_select {
	border-bottom: 1px solid #78a4e0;
	color: #78a4e0;
	cursor: pointer;
}

.border_bottom_blue {
	border-bottom: 1px solid #78a4e0;
}

* {
	padding: 0;
	margin: 0;
}

body {
	color: #FFF;
	font-family: "微软雅黑";
}

a {
	text-decoration: none;
	color: #FFF;
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
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#order-status ul p .s-btn {
		display: inline-block;
		width: 25%;
		height: 22px;
		border: none;
		background: #f8f8f8;
	}
	#order-status table {
		width: 94%;
	}
	#t-header {
		background: #79a4df;
		color: #FFF;
		height: 42px;
		width: 94%;
		position: relative;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
	}
	#order-status #t-header span {
		display: inline-block;
		line-height: 42px;
	}
	#order-status table tr {
		background: #f8f8f8;
	}
	#order-status table td {
		height: 32px;
		text-align: center;
		font-size: 0.8em;
		color: #666;
	}
	#order-status table td img {
		width: 16%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	table td .goods-name {
		display: inline-block;
		width: 35%;
		height: 20px;
		font-size: 13px;
		font-weight: bold;
		color: #333;
		overflow: hidden;
	}
	table td .goods-text {
		display: inline-block;
		width: 35%;
		height: 50px;
		font-size: 12px;
		text-align: left;
		word-break: break-all;
	}
	.td-1, .td-2, .td-3 {
		text-indent: 2.5%;
	}
	.td-1 {
		width: 20%;
	}
	.td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	.td-2 {
		width: 60%;
	}
	.td-3 {
		width: 15%;
		float: right;
		text-align: center;
	}
	#order-status table .order-date td {
		text-align: left;
		text-indent: 1%;
	}
	#order-status table .order-date .date {
		width: 12%;
	}
	#order-status table .order-date .oid {
		width: 70%;
	}
	#order-status table .order-date .btn {
		width: 13%;
	}
	#order-status table .order-date .btn img {
		cursor: pointer;
		width: 25%;
		height: 20px;
		float: right;
	}
	.order-info td {
		padding: 20px 0;
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
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#order-status ul p .s-btn {
		display: inline-block;
		width: 25%;
		height: 22px;
		border: none;
		background: #f8f8f8;
	}
	#ul-3 .h {
		color: #78a4e0;
		border-bottom: 1px solid #78a4e0;
	}
	#ul-3 li:hover {
		border-bottom: 1px solid #78a4e0;
		color: #78a4e0;
		cursor: pointer;
	}
	#order-status table {
		width: 94%;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
	}
	#t-header {
		background: #79a4df;
		color: #FFF;
		height: 42px;
		width: 94%;
		margin: 0;
		position: relative;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
	}
	#order-status #t-header span {
		display: inline-block;
		line-height: 42px;
	}
	#order-status table tr {
		background: #f8f8f8;
	}
	#order-status table td {
		height: 32px;
		text-align: center;
		font-size: 0.8em;
		color: #666;
	}
	#order-status table td img {
		width: 16%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	table td .goods-name {
		display: inline-block;
		width: 35%;
		height: 20px;
		font-size: 13px;
		font-weight: bold;
		color: #333;
		overflow: hidden;
	}
	table td .goods-text {
		display: inline-block;
		width: 35%;
		height: 50px;
		font-size: 12px;
		text-align: left;
		word-break: break-all;
	}
	.td-1, .td-2, .td-3 {
		text-indent: 2.5%;
	}
	.td-1 {
		width: 20%;
	}
	.td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	.td-2 {
		width: 55%;
	}
	.td-3 {
		width: 20%;
		float: right;
		text-align: center;
	}
	#order-status table .order-date td {
		text-align: left;
		text-indent: 1%;
	}
	#order-status table .order-date .date {
		width: 12%;
	}
	#order-status table .order-date .oid {
		width: 70%;
	}
	#order-status table .order-date .btn {
		width: 13%;
	}
	#order-status table .order-date .btn img {
		cursor: pointer;
		width: 25%;
		height: 20px;
		float: right;
	}
	.order-info td {
		padding: 20px 0;
	}
}

@media screen and (max-width:1279px) and (min-width: 1179px) {
	#box {
		width: auto;
		height: auto;
	}
	#header ul {
		margin-left: 600px;
		position: absolute;
		top: 0px;
	}
	#header ul li a {
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#order-status ul p .s-btn {
		display: inline-block;
		width: 25%;
		height: 22px;
		border: none;
		background: #f8f8f8;
	}
	#ul-3 .h {
		color: #78a4e0;
		border-bottom: 1px solid #78a4e0;
	}
	#ul-3 li:hover {
		border-bottom: 1px solid #78a4e0;
		color: #78a4e0;
		cursor: pointer;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
	}
	#order-status table {
		width: 94%;
	}
	#t-header {
		background: #79a4df;
		color: #FFF;
		height: 42px;
		width: 94%;
		margin: 0;
		position: relative;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
	}
	#order-status #t-header span {
		display: inline-block;
		line-height: 42px;
	}
	#order-status table tr {
		background: #f8f8f8;
	}
	#order-status table td {
		height: 32px;
		text-align: center;
		font-size: 0.8em;
		color: #666;
	}
	#order-status table td img {
		width: 16%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	table td .goods-name {
		display: inline-block;
		width: 35%;
		height: 20px;
		font-size: 13px;
		font-weight: bold;
		color: #333;
		overflow: hidden;
	}
	table td .goods-text {
		display: inline-block;
		width: 35%;
		height: 50px;
		font-size: 12px;
		text-align: left;
		word-break: break-all;
	}
	.td-1, .td-2, .td-3 {
		text-indent: 2.5%;
	}
	.td-1 {
		width: 15%;
	}
	.td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	.td-2 {
		width: 60%;
	}
	.td-3 {
		width: 20%;
		float: right;
		text-align: center;
	}
	#order-status table .order-date td {
		text-align: left;
		text-indent: 1%;
	}
	#order-status table .order-date .date {
		width: 12%;
	}
	#order-status table .order-date .oid {
		width: 70%;
	}
	#order-status table .order-date .btn {
		width: 13%;
	}
	#order-status table .order-date .btn img {
		cursor: pointer;
		width: 20%;
		height: 20px;
		float: left;
		text-align: left;
	}
	.order-info td {
		padding: 20px 0;
	}
}

@media screen and (max-width:1178px) and (min-width: 1024px) {
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
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#order-status ul p .s-btn {
		display: inline-block;
		width: 25%;
		height: 22px;
		border: none;
		background: #f8f8f8;
	}
	#ul-3 .h {
		color: #78a4e0;
		border-bottom: 1px solid #78a4e0;
	}
	#ul-3 li:hover {
		border-bottom: 1px solid #78a4e0;
		color: #78a4e0;
		cursor: pointer;
	}
	#order-status table {
		width: 94%;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
	}
	#t-header {
		background: #79a4df;
		color: #FFF;
		height: 42px;
		width: 94%;
		margin: 0;
		position: relative;
	}
	#order-status #t-header span {
		display: inline-block;
		line-height: 42px;
	}
	#order-status table tr {
		background: #f8f8f8;
	}
	#order-status table td {
		height: 32px;
		text-align: center;
		font-size: 0.8em;
		color: #666;
	}
	#order-status table td img {
		width: 16%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	table td .goods-name {
		display: inline-block;
		width: 35%;
		height: 20px;
		font-size: 13px;
		font-weight: bold;
		color: #333;
		overflow: hidden;
	}
	table td .goods-text {
		display: inline-block;
		width: 35%;
		height: 50px;
		font-size: 12px;
		text-align: left;
		word-break: break-all;
	}
	.td-1, .td-2, .td-3 {
		text-indent: 2%;
		font-size: 14px;
	}
	.td-1 {
		width: 20%;
	}
	.td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	.td-2 {
		width: 55%;
	}
	.td-3 {
		width: 20%;
		float: right;
		text-align: center;
	}
	#order-status table .order-date td {
		text-align: left;
		text-indent: 1%;
	}
	#order-status table .order-date .date {
		width: 12%;
	}
	#order-status table .order-date .oid {
		width: 70%;
	}
	#order-status table .order-date .btn {
		width: 13%;
	}
	#order-status table .order-date .btn img {
		width: 20%;
		height: 25px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	.order-info td {
		padding: 20px 0;
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
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
	}
	#order-status ul p .s-btn {
		display: inline-block;
		width: 25%;
		height: 22px;
		border: none;
		background: #f8f8f8;
	}
	#ul-3 .h {
		color: #78a4e0;
		border-bottom: 1px solid #78a4e0;
	}
	#ul-3 li:hover {
		border-bottom: 1px solid #78a4e0;
		color: #78a4e0;
		cursor: pointer;
	}
	#order-status table {
		width: 94%;
	}
	#t-header {
		background: #79a4df;
		color: #FFF;
		height: 42px;
		width: 94%;
		margin: 0;
		position: relative;
	}
	#order-status #t-header span {
		display: inline-block;
		line-height: 42px;
	}
	#order-status table tr {
		background: #f8f8f8;
	}
	#order-status table td {
		height: 32px;
		text-align: center;
		font-size: 0.8em;
		color: #666;
	}
	#order-status table td img {
		width: 16%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	table td .goods-name {
		display: inline-block;
		width: 35%;
		height: 20px;
		font-size: 0.8em;
		font-weight: bold;
		color: #333;
		overflow: hidden;
	}
	table td .goods-text {
		display: inline-block;
		width: 35%;
		height: 50px;
		font-size: 0.8em;
		text-align: left;
		word-break: break-all;
	}
	.td-1, .td-2, .td-3 {
		text-indent: 2%;
		font-size: 0.7em;
	}
	.td-1 {
		width: 20%;
	}
	.td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	.td-2 {
		width: 55%;
	}
	.td-3 {
		width: 15%;
		float: right;
		text-align: center;
	}
	#order-status table .order-date td {
		text-align: left;
		text-indent: 1%;
	}
	#order-status table .order-date .date {
		width: 12%;
	}
	#order-status table .order-date .oid {
		width: 70%;
	}
	#order-status table .order-date .btn {
		width: 13%;
	}
	#order-status table .order-date .btn img {
		cursor: pointer;
		float: right;
		width: 20%;
		height: 25px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	.order-info td {
		padding: 20px 0;
	}
}

@media screen and (max-width:899px) and (min-width: 790px) {
	#box {
		width: auto;
		height: auto;
	}
	#header ul {
		margin-left: 250px;
		position: absolute;
		top: 0px;
	}
	#header ul li a {
		font-size: 5px;
		height: 20px;
		width: 60px;
		display: block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
	}
	#order-status ul p .s-btn {
		display: inline-block;
		width: 25%;
		height: 22px;
		border: none;
		background: #f8f8f8;
	}
	#ul-3 .h {
		color: #78a4e0;
		border-bottom: 1px solid #78a4e0;
	}
	#ul-3 li:hover {
		border-bottom: 1px solid #78a4e0;
		color: #78a4e0;
		cursor: pointer;
	}
	#order-status table {
		width: 94%;
	}
	#t-header {
		background: #79a4df;
		color: #FFF;
		height: 42px;
		width: 94%;
		margin: 0;
		position: relative;
	}
	#order-status #t-header span {
		display: inline-block;
		line-height: 42px;
	}
	#order-status table tr {
		background: #f8f8f8;
	}
	#order-status table td {
		height: 32px;
		text-align: center;
		font-size: 0.8em;
		color: #666;
	}
	#order-status table td img {
		width: 16%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	table td .goods-name {
		display: inline-block;
		width: 35%;
		height: 20px;
		font-size: 0.8em;
		font-weight: bold;
		color: #333;
		overflow: hidden;
	}
	table td .goods-text {
		display: inline-block;
		width: 35%;
		height: 50px;
		font-size: 0.8em;
		text-align: left;
		word-break: break-all;
	}
	.td-1, .td-2, .td-3 {
		text-indent: 1%;
		font-size: 12px;
	}
	.td-1 {
		width: 20%;
	}
	.td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	.td-2 {
		width: 50%;
	}
	.td-3 {
		width: 15%;
		text-align: center;
		float: right;
	}
	#order-status table .order-date td {
		text-align: left;
		text-indent: 1%;
	}
	#order-status table .order-date .date {
		width: 15%;
	}
	#order-status table .order-date .oid {
		width: 65%;
	}
	#order-status table .order-date .btn {
		width: 15%;
	}
	#order-status table .order-date .btn img {
		cursor: pointer;
		width: 20%;
		height: 20px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	.order-info td {
		padding: 20px 0;
	}
}

@media screen and (max-width:789px) and (min-width:720px) {
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
		font-size: 3px;
		height: 20px;
		width: 60px;
		display: inline-block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
		position: absolute;
		top: 50px;
		right: 20px;
	}
	#order-status ul p .s-btn {
		display: inline-block;
		width: 25%;
		height: 22px;
		border: none;
		background: #f8f8f8;
	}
	#ul-3 .h {
		color: #78a4e0;
		border-bottom: 1px solid #78a4e0;
	}
	#ul-3 li:hover {
		border-bottom: 1px solid #78a4e0;
		color: #78a4e0;
		cursor: pointer;
	}
	#order-status table {
		width: 94%;
	}
	#t-header {
		background: #79a4df;
		color: #FFF;
		height: 42px;
		width: 94%;
		margin: 0;
		position: relative;
	}
	#order-status #t-header span {
		display: inline-block;
		line-height: 42px;
		font-size: 0.8em;
	}
	#order-status table tr {
		background: #f8f8f8;
	}
	#order-status table td {
		height: 32px;
		text-align: center;
		font-size: 0.8em;
		color: #666;
	}
	#order-status table td img {
		width: 30%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	table td .goods-name {
		display: inline-block;
		width: 35%;
		height: 20px;
		font-size: 13px;
		font-weight: bold;
		color: #333;
		overflow: hidden;
	}
	table td .goods-text {
		display: inline-block;
		width: 50%;
		height: 50px;
		font-size: 12px;
		text-align: left;
		word-break: break-all;
	}
	.td-1, .td-2, .td-3 {
		font-size: 12px;
	}
	.td-1 {
		width: 20%;
	}
	.td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	.td-2 {
		width: 50%;
	}
	.td-3 {
		width: 15%;
		float: right;
		text-align: center;
	}
	#order-status table .order-date td {
		text-align: left;
		text-indent: 1%;
	}
	#order-status table .order-date .date {
		width: 12%;
	}
	#order-status table .order-date .oid {
		width: 70%;
	}
	#order-status table .order-date .btn {
		width: 13%;
	}
	#order-status table .order-date .btn img {
		width: 20%;
		height: 25px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	.order-info td {
		padding: 20px 0;
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
		font-size: 1px;
		height: 20px;
		width: 50px;
		display: inline-block;
		text-align: center;
		line-height: 25px;
		padding: 0px 10px;
	}
	#order-status ul p {
		display: inline-block;
		border: 1px solid #CCC;
		float: right;
		width: 30%;
		margin-right: 6%;
		margin-top: 9px;
		position: absolute;
		top: 50px;
		right: 20px;
	}
	#order-status ul p .s-btn {
		display: inline-block;
		width: 25%;
		height: 22px;
		border: none;
		background: #f8f8f8;
	}
	#ul-3 .h {
		color: #78a4e0;
		border-bottom: 1px solid #78a4e0;
	}
	#ul-3 li:hover {
		border-bottom: 1px solid #78a4e0;
		color: #78a4e0;
		cursor: pointer;
	}
	#ul-3 p {
		
	}
	#order-status table {
		width: 94%;
	}
	#t-header {
		background: #79a4df;
		color: #FFF;
		height: 42px;
		width: 94%;
		margin: 0;
		position: relative;
	}
	#t-header span {
		display: inline-block;
		font-size: 12px;
		line-height: 42px;
	}
	#order-status table tr {
		background: #f8f8f8;
	}
	#order-status table td {
		height: 32px;
		text-align: center;
		font-size: 0.8em;
		color: #666;
	}
	#order-status table td img {
		width: 30%;
		height: 80px;
		vertical-align: middle;
		float: left;
		margin-right: 10px;
		margin-left: 10px;
	}
	table td .goods-name {
		display: inline-block;
		width: 35%;
		height: 20px;
		font-size: 13px;
		font-weight: bold;
		color: #333;
		overflow: hidden;
	}
	table td .goods-text {
		display: inline-block;
		width: 35%;
		height: 50px;
		font-size: 12px;
		text-align: left;
		word-break: break-all;
	}
	.td-1, .td-2, .td-3 {
		text-indent: 2%;
		font-size: 12px;
	}
	.td-1 {
		width: 20%;
	}
	.td-1 input {
		vertical-align: middle;
		background: #FFF;
	}
	.td-2 {
		width: 50%;
	}
	.td-3 {
		width: 15%;
		float: right;
		text-align: left;
	}
	#order-status table .order-date td {
		text-align: left;
		text-indent: 1%;
	}
	#order-status table .order-date .date {
		width: 12%;
	}
	#order-status table .order-date .oid {
		width: 70%;
	}
	#order-status table .order-date .btn {
		width: 13%;
	}
	#order-status table .order-date .btn img {
		cursor: pointer;
		width: 20%;
		height: 20px;
		float: left;
	}
	.order-info td {
		padding: 20px 0;
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
	background: url(<c:url value="/img/rect.png"/>) no-repeat;
}

#header ul li {
	float: left;
	height: 40px;
	list-style: none;
}

#header ul li:hover {
	background: #eb9290;
}

#header-title {
	display: inline-block;
	margin-left: 50px;
	line-height: 40px;
	font-size: 18px;
}

#lgorrg {
	float: right;
	margin-right: 30px;
	line-height: 20px;
}

#lgorrg a {
	font-size: 10px;
}

#content {
	width: 90%;
	height: 620px;
	background: #f8f8f8;
	margin: 0 auto;
}

#content #nav-title {
	font-size: 10px;
	margin-top: 40px;
	margin-left: 60px;
}

#content #nav-title a {
	color: #000;
	text-decoration: none;
	font-weight: bold;
}

#row-nav {
	width: 30%;
	height: 535px;
	float: left;
	margin-top: 30px;
}

#row-nav ul {
	list-style: none;
	margin-left: 60px;
}

#row-nav ul div, #row-nav ul li {
	width: 67px;
	height: 20px;
	padding: 4px;
	text-align: center;
	line-height: 28px;
}

#row-nav ul div {
	color: #FFF;
	background: #79a4df;
	line-height: 20px;
	font-size: 0.95em;
}

#row-nav ul li a {
	color: #333;
	margin-top: 5px;
	font-size: 12px;
}

#row-nav ul li:hover {
	color: #ff7f65;
	border-left: 2px solid #ff7f65;
}

#ul-2, #ul-1 {
	margin-bottom: 25px;
}

#order-status {
	width: 70%;
	height: 535px;
	float: right;
}

#order-status ul {
	list-style: none;
	height: 40px;
	margin-bottom: 35px;
}

#order-status ul li {
	float: left;
	padding: 11px 2%;
	color: #acacac;
}

#order-status ul p .s-text {
	width: calc(75% - 2px);
	height: 20px;
	border: none;
	border-right: 1px solid #666;
	background: #f8f8f8;
	outline: none;
	text-indent: 5%;
	font-size: 12px;
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

.goods {
	text-align: left;
}

.count {
	vertical-align: text-top;
	text-align: left;
}

.count p {
	text-align: right;
	margin-right: 10px;
	font-family: "微软雅黑";
	font-size: 14px;
}

.status {
	color: #F00;
}

.sum td {
	
}

.sum td p {
	text-align: left;
}

.sum a {
	display: inline-block;
	width: 55px;
	height: 21px;
	border: 1px solid #06C;
	color: #06F;
	border-radius: 1.2em;
	line-height: 21px;
	font-size: 1em;
	padding: 2px;
	text-align: center;
	margin-right: 5px;
	float: right;
}

.column1 {
	border: 1px solid #999;
	border-right: none;
}

.column2 {
	border: 1px solid #999;
	border-right: none;
	border-left: none;
}

.column3 {
	border: 1px solid #999;
	border-left: none;
}
</style>
</head>
<body>
	<input type="hidden" value="${customer.username}">
	<%
		//如果页面没有订单数据，则跳转orderController的toOrder方法
	%>
	<c:if test="${order_All == null}">
		<c:redirect
			url="${pageContext.request.contextPath}/order/toOrder.action"></c:redirect>
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
			<p style="height: 1px;"></p>
			<p id="nav-title" style="color: #333;">
				<a href="#">首页</a>&#8250;&#8250;<a href="#">个人主页</a>&#8250;&#8250;<a
					href="#">订单管理</a>
			</p>

			<div id="row-nav">
				<ul id="ul-1">
					<div>账号管理</div>
					<li><a href="#">个人中心</a></li>
					<li><a href="#">消息管理</a></li>
					<li><a href="#">账号信息</a></li>
					<li><a href="#">收货地址</a></li>
					<li><a href="#">账号安全</a></li>
					<li><a href="#">我的积分</a></li>
				</ul>
				<ul id="ul-2">
					<div>交易管理</div>
					<li><a href="#">订单管理</a></li>
					<li><a href="#">优惠券</a></li>
				</ul>
				<ul>
					<div>服务中心</div>
					<li><a href="#">售后服务</a></li>
					<li><a href="#">帮助中心</a></li>

				</ul>
			</div>
			<div id="order-status">
				<ul id="ul-3">
					<li id="All_button">全部订单</li>
					<li id="unPay_button">待付款</li>
					<li id="unSend_button">待发货</li>
					<li id="unGet_button">已收货</li>
					<p>
						<input class="s-text" type="text" placeholder="输入商品名称或者订单号" /><input
							type="button" class="s-btn" value="搜索" />
					</p>
				</ul>

				<p id="t-header">
					<span class="td-1"><input type="checkbox" value="true" /><span>&nbsp;全选</span></span>
					<span class="td-2">商品信息</span> <span class="td-3">金额(元)</span>
				</p>
				<!-- 全部订单 -->
				<table border:"0" cellspacing="0" id="All_list">
					<c:forEach items="${order_All}" var="order" end="10">
						<tr class="order-date">
							<td class="date">${order.date}</td>
							<td class="oid">订单号：${order.o_id}</td>
							<td class="btn"><img src="<c:url value="/img/d.png"/>"><img
								src="<c:url value="/img/c.png"/>"></td>
						</tr>
						<!-- 订单列表 -->
						<c:forEach items="${order.orderDetail}" var="orderDetail">
							<tr class="order-info">
								<td class="check  column1"><input type="checkbox" /></td>
								<td class="g-info  column2"><img />
								<p class="goods">
										<span class="goods-name">${orderDetail.good.name}</span><br />
										<span class="goods-text">${orderDetail.good.note}</span>
									</p></td>
								<td class="count column3"><p class="status">交易成功</p>
									<p>${orderDetail.good.price}<span></span>
									</p>
									<p>
										X<span>${orderDetail.count}</span>
									</p></td>
							</tr>
						</c:forEach>
						<tr class="sum">
							<td colspan="3"><p>
									<span>共${order.count}件商品</span><span>合计￥${order.money}(含运费￥7.00)</span><a
										href="#">追加评价</a><a href="<c:url value="/order/toLogistics"/>/${order.o_id}">查看物流</a>
								</p></td>
						</tr>
					</c:forEach>
				</table>
				<!-- 未付款订单 -->
				<table border:"0" cellspacing="0" id="unPay_list">
					<c:forEach items="${order_unPay}" var="order" end="10">
						<tr class="order-date">
							<td class="date">${order.date}</td>
							<td class="oid">订单号：${order.o_id}</td>
							<td class="btn"><img src="<c:url value="/img/d.png"/>"><img
								src="<c:url value="/img/c.png"/>"></td>
						</tr>
						<!-- 订单列表 -->
						<c:forEach items="${order.orderDetail}" var="orderDetail">
							<tr class="order-info">
								<td class="check  column1"><input type="checkbox" /></td>
								<td class="g-info  column2"><img />
								<p class="goods">
										<span class="goods-name">${orderDetail.good.name}</span><br />
										<span class="goods-text">${orderDetail.good.note}</span>
									</p></td>
								<td class="count column3"><p class="status">交易成功</p>
									<p>${orderDetail.good.price}<span></span>
									</p>
									<p>
										X<span>${orderDetail.count}</span>
									</p></td>
							</tr>
						</c:forEach>
						<tr class="sum">
							<td colspan="3"><p>
									<span>共${order.count}件商品</span><span>合计￥${order.money}(含运费￥7.00)</span><a
										href="#">追加评价</a><a href="<c:url value="/order/toLogistics"/>/${order.o_id}">查看物流</a>
								</p></td>
						</tr>
					</c:forEach>
				</table>
				<!-- 未发货订单 -->
				<table border:"0" cellspacing="0" id="unSend_list">
					<c:forEach items="${order_unSend}" var="order" end="10">
						<tr class="order-date">
							<td class="date">${order.date}</td>
							<td class="oid">订单号：${order.o_id}</td>
							<td class="btn"><img src="<c:url value="/img/d.png"/>"><img
								src="<c:url value="/img/c.png"/>"></td>
						</tr>
						<!-- 订单列表 -->
						<c:forEach items="${order.orderDetail}" var="orderDetail">
							<tr class="order-info">
								<td class="check  column1"><input type="checkbox" /></td>
								<td class="g-info  column2"><img />
								<p class="goods">
										<span class="goods-name">${orderDetail.good.name}</span><br />
										<span class="goods-text">${orderDetail.good.note}</span>
									</p></td>
								<td class="count column3"><p class="status">交易成功</p>
									<p>${orderDetail.good.price}<span></span>
									</p>
									<p>
										X<span>${orderDetail.count}</span>
									</p></td>
							</tr>
						</c:forEach>
						<tr class="sum">
							<td colspan="3"><p>
									<span>共${order.count}件商品</span><span>合计￥${order.money}(含运费￥7.00)</span><a
										href="#">追加评价</a><a href="<c:url value="/order/toLogistics"/>/${order.o_id}">查看物流</a>
								</p></td>
						</tr>
					</c:forEach>
				</table>
				<!-- 未收货订单 -->
				<table border:"0" cellspacing="0" id="unGet_list">
					<c:forEach items="${order_unGet}" var="order" end="10">
						<tr class="order-date">
							<td class="date">${order.date}</td>
							<td class="oid">订单号：${order.o_id}</td>
							<td class="btn"><img src="<c:url value="/img/d.png"/>"><img
								src="<c:url value="/img/c.png"/>"></td>
						</tr>
						<!-- 订单列表 -->
						<c:forEach items="${order.orderDetail}" var="orderDetail">
							<tr class="order-info">
								<td class="check  column1"><input type="checkbox" /></td>
								<td class="g-info  column2"><img />
								<p class="goods">
										<span class="goods-name">${orderDetail.good.name}</span><br />
										<span class="goods-text">${orderDetail.good.note}</span>
									</p></td>
								<td class="count column3"><p class="status">交易成功</p>
									<p>${orderDetail.good.price}<span></span>
									</p>
									<p>
										X<span>${orderDetail.count}</span>
									</p></td>
							</tr>
						</c:forEach>
						<tr class="sum">
							<td colspan="3"><p>
									<span>共${order.count}件商品</span><span>合计￥${order.money}(含运费￥7.00)</span><a
										href="#">追加评价</a><a href="<c:url value="/order/toLogistics"/>/${order.o_id}">查看物流</a>
								</p></td>
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