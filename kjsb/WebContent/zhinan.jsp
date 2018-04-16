﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.localPort}${pageContext.request.contextPath}"></c:set>
<c:set var ="imgPath" value="${basePath}/res/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>科技项目申报系统</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description" content="Your website description goes here" />
<meta name="keywords" content="your,keywords,goes,here" />
<link rel="stylesheet"  id="styles" href="${basePath}/res/css/andreas08(blue).css" type="text/css" media="screen,projection" />
<script type="text/javascript" src="${basePath}/res/js/acesys.js"></script>
</head>

<body>
<div id="container" >

<jsp:include page="header.jsp"></jsp:include>

</div>
<div id="container" >
  <div id="content11">
<h2><strong>欢迎使用项目申报系统</strong></h2>

<table cellspacing="0" cellpadding="0" width="95%">
  <tbody>
    <tr>
      <td><br />
        1．申报单位登录页<br />
        申报单位从<a href="${basePath}/login.jsp">这里</a>登录。在系统的首页上点击&quot;项目管理&quot;栏后屏幕显示出登录界面，按要求输入用户名、密码。
        <p><br />
          图4-1<br />
          2．单位信息管理页<br />
          <br />
          图4-2<br />
          登录成功之后，系统显示出如图4-2所示的功能界面。点击&quot;单位信息&quot;按钮您就可以进行单位信息查询与修改的工作了。建议每年在进行项目申报时对本单位信息进行更新。<br />
          3．项目申报/项目管理<br />
          在图4-2所示的功能界面中，点击&quot;项目申报&quot;后进入如图4-3所示界面。<br />
          <br />
          图4-3<br />
          该页面显示本单位已申报项目目录。点击项目名称可显示项目信息。在项目申报期间可对已申报项目内容进行修改，不在项目申报期间只可查阅不能修改。<br />
          如果要申报新项目可以点击图4-3中&quot;申报新项目&quot;按钮，页面将会转为项目申报书页面。在申报书页面添入项目申报的相应信息，最后点击&quot;提交&quot;则新项目申报完成。<br />
          该页面显示本单位已推荐专家目录。点击专家姓名可显示专家信息。<br />
          <br />
          2．信息查询页<br />
          <br />
          在单位页面点击信息查询，可以进行项目查询，查看工作状态及修改事项．可以依据申请日期、标题进行匹配查询。<br />
<br />
        </p>
        </td>
    </tr>
  </tbody>
</table>
</div>

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>