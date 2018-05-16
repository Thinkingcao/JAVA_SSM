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
<script type="text/javascript" src="${basePath}/res/js/acesys.js"></script>
</head>

<body>
<div id="container" >

<jsp:include page="header.jsp"></jsp:include>

</div>
<div id="container" ><div id="content2"><table width="100%" height="41"  border="0" align="center" cellpadding="0" cellspacing="0"><tr><td width="15" height="18" align="left" valign="top"><div align="left"></div></td>
      <td width="385" align="left" valign="bottom" class="12">&nbsp;</td>
    </tr><tr><td height="4" colspan="2" align="left" valign="bottom"></td>
    </tr><tr><td height="15" align="left" valign="top">&nbsp;</td>
      <td height="15" align="left" valign="top" class="12"><table width="100%" height="20" border="0" cellpadding="0" cellspacing="0"><tr><td height="20" align="center"><div class="right_proaducts">
        <div align="left">我的位置&gt;&gt;科技项目申报&gt;修改本帐户密码</div>
      </div>
      <form action="reworkpasswordD" method="post" id="form" onsubmit="return checkExpertPassword(this)">
	  <DIV class=padding><DIV id=middlebody>
	  <jsp:include page="top_nav.jsp"></jsp:include>
                <table width="50%" border="0" cellpadding="0" cellspacing="1">
                  <tr>
                    <td width="25%" height="20" align="right" bgcolor="#f3f3f3">户名</td>
                    <td width="2%" align="right" bgcolor="#f3f3f3">&nbsp;</td>
                    <td width="73%" height="20" align="left" bgcolor="#f3f3f3"><div align="left">${umm.username}</div></td>
                  </tr>
                  <input type="hidden" value="gary" name="username" />
                  <tr>
                    <td height="20" align="right" bgcolor="#f3f3f3">原始密码</td>
                    <td align="right" bgcolor="#f3f3f3">&nbsp;</td>
                    <td height="20" align="left" bgcolor="#f3f3f3"><div align="left">
                      <input id="temp1" type="text" value="${umm.password}" id="temp1" name="oldpassword" />
                    </div></td>
                  </tr>
                  <tr>
                    <td height="20" align="right" bgcolor="#f3f3f3">新密码</td>
                    <td align="right" bgcolor="#f3f3f3">&nbsp;</td>
                    <td height="20" align="left" bgcolor="#f3f3f3"><div align="left">
                      <input id="temp2" type="password" value="" id="temp2" name="newpassword" />
                    </div></td>
                  </tr>
                  <tr>
                    <td height="20" align="right" bgcolor="#f3f3f3">重复新密码</td>
                    <td align="right" bgcolor="#f3f3f3">&nbsp;</td>
                    <td height="20" align="left" bgcolor="#f3f3f3"><div align="left">
                      <input id="temp3" type="password" value=""id="temp3" name="password" />
                    </div></td>
                  </tr>
                  <tr>
                    <td height="20" colspan="2" align="middle" bgcolor="#f3f3f3">&nbsp;</td>
                    <td height="20" align="middle" bgcolor="#f3f3f3"><div align="left">
                      <input name="submit" type="submit" value="确认更改" />
                    </div></td>
                  </tr>
                </table>
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