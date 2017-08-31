<%--
  Created by IntelliJ IDEA.
  Versions: v0.1
  User: HDPC
  Date: 2017/8/10
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>找飞机首页</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <%--用以声明当前页面用chrome内核来渲染。谷歌做了个外挂：Google Chrome Frame(谷歌内嵌浏览器框架GCF)。这个插件可以让用户的IE浏览器外不变，
    但用户在浏览网页时，实际上使用的是Google Chrome浏览器内核，而且支持IE6、7、8等多个版本的IE浏览器--%>

    <meta name="description" content="找飞机首页，一张图片做背景" />
    <meta name="keywords" content="首页" />
    <meta name="author" content="Marina" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Table.css"/>
</head>
<body>
<div class="wrapper">
    <jsp:include page="WEB-INF/jsp/nav.jsp"/>
    <div class="content-wrap " >
        <div class="content"id="change">
            <section class="content-header">
                <h3>
                    首页
                    <small>首页| <a href="javascript :;" onClick="javascript :history.back(-1);">向前一页</a></small>
                </h3>
            </section>
            <sectionn class="content container-fluid">
                <img src="image/1.png" alt=""  width="100%" height="100%"/>
            </sectionn>
        </div>
    </div>
</div>

<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/snap.svg-min.js"></script>
<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/toggleMenu.js"></script>
<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/classie.js"></script>
<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>

</body>
</html>
