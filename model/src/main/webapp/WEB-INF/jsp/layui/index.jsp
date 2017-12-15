<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<base href="${ctx}/">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="${ctx}/js/jquery-1.8.0.min.js"></script>
<link rel="stylesheet" href="${ctx}/layui/css/layui.css">
<script src="${ctx}/layui/layui.all.js"></script> 
<script src="${ctx}/layui/layui.js"></script> 
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
<script>

$(function(){
	//layer.msg('Hello World');
})
</script> 
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header layui-bg-green">
    <div class="layui-logo">XXXXX</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href=""><i class="layui-icon" style="font-size: 30px; color: #1E9FFF;">&#xe60c;</i>  控制台</a></li>
      <li class="layui-nav-item"><a href="">商品管理</a></li>
      <li class="layui-nav-item"><a href="">用户</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          贤心
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-green">
    <div class="layui-side-scroll ">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree layui-bg-green"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">所有商品</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">解决方案</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">云市场</a></li>
        <li class="layui-nav-item"><a href="">发布商品</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <div class="layui-anim layui-anim-up">吧吧v</div>
    <div class="layui-anim layui-anim-up layui-anim-loop">惺惺惜惺惺想休闲鞋 </div>

    <button class="layui-btn">一个标准的按钮</button>
    <a href="http://www.layui.com" class="layui-btn">一个可跳转的按钮</a>
    </div>
    
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
</html>