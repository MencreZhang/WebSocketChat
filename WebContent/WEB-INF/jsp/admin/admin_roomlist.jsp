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
				<ul class="am-icon-flag on"> 聊天室列表</ul>
		
				<dl class="am-icon-home" style="float: right;"> 当前位置： 首页 >
					<a href="#">聊天室列表</a>
				</dl>
		
				<dl>
					<button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus btn_createRoom"> 创建聊天室</button>
				</dl>
		
			</div>
		
			<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
				<ul>
					<li style="margin-right: 0;">
						<span style="color: rgb(140, 137, 137); font-size: 1.2rem;">注册时间：</span>
					</li>
					<li style="margin-right: 0;">
						<span class="tubiao am-icon-calendar"></span>
						<input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="开始日期" data-am-datepicker="{theme: 'success',}" readonly/>
					</li>
					<li style="margin-left: -4px;">
						<span class="tubiao am-icon-calendar"></span>
						<input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="截至日期" data-am-datepicker="{theme: 'success',}" readonly/>
					</li>
		
					<li style="margin-left: -10px;">
						<div class="am-btn-group am-btn-group-xs">
							<select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
								<option value="b">各省校友</option>
								<option value="o">学院聊天室</option>
							</select>
						</div>
					</li>
					<li><input type="text" class="am-form-field am-input-sm am-input-xm" placeholder="关键词搜索" /></li>
					<li><button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">搜索</button></li>
				</ul>
			</div>
		
			<div class="am-form am-g" id="changeDiv">
			<div class="page-content-area">	
				<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
					<thead>
						<tr class="am-success">
							<th class="table-check"><input type="checkbox" /></th>
							<th class="table-id">ID</th>
							<th class="table-title">标题</th>
							<th class="table-type">类别</th>
							<th class="table-author am-hide-sm-only">允许发言</th>
							<th class="table-date am-hide-sm-only">创建日期</th>
							<th width="140px" class="table-set">操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="ani" items="${pagehelper.list}" varStatus="status"  >
						<tr>
							<td><input type="checkbox" /></td>
							<td>1</td>
							<td id="roomName">${ani.chatname }</td>
							<td>各省校友</td>
							<td class="am-hide-sm-only"><i class="am-icon-check am-text-warning"></i></td>
							<td class="am-hide-sm-only">${ani.room_time }</td>
							<td>
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs">
										<button class="am-btn am-btn-default am-btn-xs am-text-secondary am-round btn_editRoom" title="编辑" data-id="1"><span class="am-icon-pencil-square-o"></span></button>
										<button class="am-btn am-btn-default am-btn-xs am-text-warning  am-round" title="禁止发言" data-id="1"><span class="am-icon-comments"></span></button>
										<a href="deleteRoom?chatname=${ani.chatname }" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除" data-id="1"><span class="am-icon-trash-o"></span></a>
									</div>
								</div>
							</td>
						</tr>
						</c:forEach>
						
					</tbody>
				</table>
		
				<div class="am-btn-group am-btn-group-xs">
					<button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 允许发言</button>
					<button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 禁止发言</button>
					<button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
				</div>
		
				<%@ include file="/WEB-INF/jsp/common/pagehelper.jsp"%>
			</div>
			</div>
		</div>
		<script type="text/javascript">
			function queryAllPerson(pageNum, pageSize) {

				$("#changeDiv").load(
						"admin_roomlistpage?pageNum="+pageNum+"&pageSize="
								+ pageSize);

			}
		</script>
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
			
			<script type="text/javascript" src="../assets/admin/js/charts/echarts.min.js" ></script>
			<script src="../assets/admin/js/charts/charts.js" type="text/javascript" charset="utf-8"></script>
			<!--<![endif]-->
		
		
		
		<style type="text/css">
			.chuangkou_roomadd{
				position: absolute;
			}
			.roomadd_save{
				margin: 0 auto;
			}
			.ckcontent{
				position: relative;
				width: 100%;
				height: 100%;
				padding: 20px;
			}
			.roomadd_save{
				position: absolute;
				bottom: 20px;
				left: 50%;
				margin-left: -85px;
			}
			.text-custom{
				margin: 10px;
			}
			.chuangkou_roomadd .am-input-group{
				margin-bottom: 10px;
			}
		</style>
		
		
		
		
		<!-- 弹出菜单 -->
		<div class="black"></div>
		<div class="chuangkou chuangkou_roomadd">
			<div class="ckcontent">
			<input id="chuangkou_roomid" type="hidden" value="1">
				<h4 id="chuangkou_name"></h4>
				<div class="am-input-group">
					<span class="am-input-group-label">聊天室名称</span>
					<input id="chuangkou_roomname" type="text" class="am-form-field" placeholder="请输入聊天室名称">
				</div>
				<div class="am-input-group">
					<span class="am-input-group-label">聊天室类别</span>
					<select id="chuangkou_roomlb" class="am-form-field">
						<option value="各省校友">请选择</option>
						<option value="各省校友" data-value = "123">各省校友</option>
						<option value="学院聊天室">学院聊天室</option>
					</select>
				</div>
				
				
				<div class="roomadd_save">
					<a href="#" class="text-custom">
						<button type="button" class="am-btn am-btn-xs am-btn-danger am-round" id="btn_closechuangkou">
							<span class="am-icon-close"></span> 关闭
						</button>
					</a>
					<a href="#" class="text-custom">
						<button type="button" class="am-btn am-btn-xs am-btn-secondary am-round" id="btn_savechuangkou">
							<span class="am-icon-save"></span> 保存
						</button>
					</a>
				</div>
			</div>
			
			
			
			
			
			
		</div>
		
	</body>
	<script src="../assets/admin/js/page/admin_roomlist.js" type="text/javascript" charset="utf-8"></script>
</html>
