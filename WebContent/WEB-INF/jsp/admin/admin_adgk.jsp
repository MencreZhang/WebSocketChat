<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">

	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<title>QUST聊天室 - 后台管理</title>
		<meta name="description" content="QUST聊天室 - 后台管理" />
		<meta name="keywords" content="index" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
		<meta name="renderer" content="webkit" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link rel="icon" type="image/png" href="../assets/admin/i/favicon.png" />
		<link rel="apple-touch-icon-precomposed" href="../assets/admin/i/app-icon72x72@2x.png" />
		<meta name="apple-mobile-web-app-title" content="QUST聊天室 - 后台管理" />
		<link rel="stylesheet" href="../assets/admin/css/amazeui.min.css" />
		<link rel="stylesheet" href="../assets/admin/css/admin.css" />
		<script src="../assets/admin/js/jquery.min.js"></script>
		<script src="../assets/admin/js/app.js"></script>
	</head>
	<body>
		<div class="admin-biaogelist" style="text-align: center;">

			<div class="listbiaoti am-cf">
				<ul class="am-icon-flag on"> 广告展示数据</ul>
		
				<dl class="am-icon-home" style="float: right;"> 当前位置： 首页 >
					<a href="#">广告数据</a>
				</dl>
		
				<!--<dl>
					<button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus" id="btn_createRoom"> 创建聊天室</button>
				</dl>-->
			</div>
			<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
				<div id="adgk-line-1" style="height: 400px;width: 100%;"></div>
			</div>
			
			<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
				<div class="xinxitj">
					广告情况
				</div>
				<table class="am-table">
					<thead>
						<tr>
							<th>时间</th>
							<th>广告位</th>
							<th>展示次数</th>
							<th>单价</th>
							<th>收益</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2017-09-23</td>
							<td>3</td>
							<td>35</td>
							<td>0.1</td>
							<td>0.3</td>
						</tr>
						<tr>
							<td>2017-09-24</td>
							<td>3</td>
							<td>21</td>
							<td>0.1</td>
							<td>0.21</td>
						</tr>
						<tr>
							<td>2017-09-25</td>
							<td>3</td>
							<td>57</td>
							<td>0.1</td>
							<td>0.57</td>
						</tr>
						<tr>
							<td>2017-09-26</td>
							<td>3</td>
							<td>48</td>
							<td>0.1</td>
							<td>0.48</td>
						</tr>
						<tr>
							<td>2017-09-27</td>
							<td>3</td>
							<td>98</td>
							<td>0.1</td>
							<td>0.98</td>
						</tr>
						<tr>
							<td>2017-09-28</td>
							<td>3</td>
							<td>125</td>
							<td>0.1</td>
							<td>1.25</td>
						</tr>
						<tr>
							<td>2017-09-29</td>
							<td>3</td>
							<td>88</td>
							<td>0.1</td>
							<td>0.88</td>
						</tr>
						<tr>
							<td>总计</td>
							<td></td>
							<td>472次</td>
							<td></td>
							<td>4.72元</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			
			
			
		</div>
		
		<div class="foods">
			<ul>
				&copy; Copyright 2017 QUST401 Studio. All Rights Reserved.
			</ul>
			<dl>
				<a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
			</dl>
		</div>
		<!--[if lt IE 9]>
			<script src="../http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
			<script src="../http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
			<script src="../assets/admin/js/polyfill/rem.min.js"></script>
			<script src="../assets/admin/js/polyfill/respond.min.js"></script>
			<script src="../assets/admin/js/amazeui.legacy.js"></script>
			<![endif]-->
			<!--[if (gte IE 9)|!(IE)]><!-->
			<script src="../assets/admin/js/amazeui.min.js"></script>
			
			<script type="text/javascript" src="../assets/admin/js/charts/echarts.min.js"></script>
			<script src="../assets/admin/js/charts/adgkcharts.js" type="text/javascript" charset="utf-8"></script>
			<!--<![endif]-->
			
		</div>
		
	</body>
</html>
