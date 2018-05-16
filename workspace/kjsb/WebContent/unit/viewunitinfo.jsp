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
<div id="container" ><div id="content2"><table width="100%" height="41"  border="0" align="center" cellpadding="0" cellspacing="0">
    </tr><tr><td height="4" colspan="2" align="left" valign="bottom"></td>
    </tr><tr><td height="15" align="left" valign="top">&nbsp;</td>
      <td height="15" align="left" valign="top" class="12"><table width="100%" height="20" border="0" cellpadding="0" cellspacing="0"><tr><td height="20" align="center"><div class="right_proaducts">
        <div align="left">我的位置&gt;&gt;科技项目申报&gt;单位信息</div>
      </div>
      <form action="unitDoUpdateE" method="post" id="form" onsubmit="return checkUnitInfromation(this)">
	  <DIV class=padding><DIV id=middlebody>
	  <jsp:include page="top_nav.jsp"></jsp:include>
                <table width="70%" border="0" cellpadding="0" cellspacing="1">
                  <tbody>
                    <tr>
                      <td width="30%" height="31" align="middle" bgcolor="#f3f3f3">单位名称</td>
                      <td width="70%" align="left" bgcolor="#f3f3f3"><div align="left">
                        <input id="unitname" value="${u.unitname}" name="unitname" />
                      </div></td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">单位地址</td>
                      <td width="70%" align="left" bgcolor="#f3f3f3"><input id="address" value="${u.address}" name="address" />
                      </td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">单位法人</td>
                      <td align="left" bgcolor="#f3f3f3"><input id="corporation" value="${u.corporation}" name="corporation" />
                      </td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">注册资金</td>
                      <td align="left" bgcolor="#f3f3f3"><input id="investment" value="${u.investment}" name="investment" />
                      </td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">单位性质</td>
                      <td align="left" bgcolor="#f3f3f3"><input id="type" value="${u.type}" name="type" />
                      </td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">单位电话</td>
                      <td align="left" bgcolor="#f3f3f3"><input id="tel" value="${u.tel}" name="tel" />
                      </td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">单位邮箱</td>
                      <td align="left" bgcolor="#f3f3f3"><input id="email" value="${u.email}" name="email" />
                      </td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">单位传真</td>
                      <td align="left" bgcolor="#f3f3f3"><input id="fax" value="${u.fax}" name="fax" />
                      </td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">单位邮编</td>
                      <td align="left" bgcolor="#f3f3f3"><input id="zipcode" value="${u.zipcode}" name="zipcode" />
                      </td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">单位简介</td>
                      <td align="left" bgcolor="#f3f3f3"><textarea id="introduction" name="introduction" rows="3" cols="50">${u.introduction}</textarea>
                      </td>
                    </tr>
                    <tr>
                      <td align="middle" bgcolor="#f3f3f3">&nbsp;</td>
                      <td align="left" bgcolor="#f3f3f3"><input id="submit" type="submit" value="修改" name="submit2" />
                          <input id="button2" type="reset" value="取消" name="button2" /></td>
                    </tr>
                  </tbody>
                </table>
                <div></div>
              </form></td>
        </tr></table>
        <br/><div class="table_wz"></div></td>
    </tr></table>
</div>
</div>
<div id="container" >
  <div id="footer">
<p><a href="http://www.ascenttech.com.cn/" target="_blank">版权所有：北京亚思晟商务科技有限公司 &copy;2004-2008|京ICP备05005681</a></p>
</div>

</div>
</body>
</html>