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
<meta http-equiv="content-type" content="text/html; charset=GB2312" />
<meta name="description" content="Your website description goes here" />
<meta name="keywords" content="your,keywords,goes,here" />
<link rel="stylesheet" href="${basePath}/res/css/andreas08(blue).css" type="text/css" media="screen,projection" />
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body>
<div id="container" >

<jsp:include page="header.jsp"></jsp:include>

</div>
<div id="container" ><div id="content2"><table width="100%" height="41"  border="0" align="center" cellpadding="0" cellspacing="0"><tr><td height="4" colspan="2" align="left" valign="bottom"></td>
    </tr><tr><td height="15" align="left" valign="top">&nbsp;</td>
      <td height="15" align="left" valign="top" class="12"><table width="100%" height="20" border="0" cellpadding="0" cellspacing="0"><tr><td height="20"><div class="right_proaducts">我的位置&gt;&gt;科技项目申报&gt;项目修改
      </div>
      <form action="" method="post" id="form"><DIV class=padding><DIV id=middlebody>
			 <jsp:include page="top_nav.jsp"></jsp:include>
                <table width="70%" border="0" align="center" cellpadding="0" cellspacing="1"><tbody><tr><td width="25%" bgcolor="#f3f3f3">项目名称</td>
                      <td width="75%" bgcolor="#f3f3f3">视频java培训，项目驱动java学习</td>
                    </tr><tr><td bgcolor="#f3f3f3">申请单位</td>
                      <td bgcolor="#f3f3f3">1</td>
                    </tr><tr><td bgcolor="#f3f3f3">申请人</td>
                      <td bgcolor="#f3f3f3">郭锐</td>
                    </tr><tr><td bgcolor="#f3f3f3">职称</td>
                      <td bgcolor="#f3f3f3">总裁</td>
                    </tr><tr><td bgcolor="#f3f3f3">学历</td>
                      <td bgcolor="#f3f3f3">教授</td>
                    </tr><tr><td bgcolor="#f3f3f3">填报时间</td>
                      <td bgcolor="#f3f3f3">2008-11-11</td>
                    </tr><tr><td bgcolor="#f3f3f3">项目现状</td>
                      <td bgcolor="#f3f3f3">乐观</td>
                    </tr><tr><td bgcolor="#f3f3f3">项目前景</td>
                      <td bgcolor="#f3f3f3">前途无量</td>
                    </tr><tr><td bgcolor="#f3f3f3">重难点分析</td>
                      <td bgcolor="#f3f3f3">据我多年的经验分析，前途无量</td>
                    </tr><tr><td bgcolor="#f3f3f3">研究方法</td>
                      <td bgcolor="#f3f3f3">视频教学</td>
                    </tr><tr><td bgcolor="#f3f3f3">预计研究成果</td>
                      <td bgcolor="#f3f3f3">资金成倍增长</td>
                    </tr><tr><td bgcolor="#f3f3f3">申请资金</td>
                      <td bgcolor="#f3f3f3">100万</td>
                    </tr><tr><td bgcolor="#f3f3f3">专家评审意见</td>
                      <td bgcolor="#f3f3f3">不错</td>
                    </tr><tr><td bgcolor="#f3f3f3">专家评分</td>
                      <td bgcolor="#f3f3f3">90.0</td>
                    </tr></tbody></table>
                <div></div>
              </form></td>
        </tr></table>
        <br/><div class="table_wz"></div></td>
    </tr></table>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>