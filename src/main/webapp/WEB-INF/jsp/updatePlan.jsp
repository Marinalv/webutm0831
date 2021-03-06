<%--
  Created by IntelliJ IDEA.
  User: HDPC
  Date: 2017/8/17
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>修改飞行计划</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Table.css"/>
    <script type="text/javascript" src="/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="content-wrap " >
    <div class="content" id="change">
        <section class="content-header">
            <h3>修改飞行计划
                <ul class="toplist">
                    <li class="topnav">
                        <a href="">Home /</a>
                    </li>
                    <li>
                        <a href="">修改飞行计划</a>
                    </li>
                </ul>
            </h3>
        </section>
        <section class="content ">
            <div class="panel panel-default">
                <div class="panel-heading">
                    修改飞行计划
                </div>
                <div class="panel-body">
                    <div class="table-responsive box-default form-inline no-footer scoller">

                        <div class="table-responsive box-default form-inline no-footer adduser">
                            <div class="adduser" id="content">
                                <form action="${pageContext.request.contextPath}/flightPlan/updateFlightPlan" method="post">
                                    <table style="margin:0 auto;width:40%;">
                                        <tr>
                                            <td>开始日期</td>
                                            <td><input type="text" class="form"  name="startDate" value="<fmt:formatDate value='${flightPlan.startDate}' pattern='yyyy-MM-dd'/>"></td>
                                        </tr>
                                        <tr>
                                            <td>结束日期</td>
                                            <td><input type="text" class="form" name="endDate" value="<fmt:formatDate value='${flightPlan.endDate}' pattern='yyyy-MM-dd'/>"></td>
                                        </tr>
                                        <tr>
                                            <td>开始地点</td>
                                            <td><input type="text"  class="form" name="startPoint" value="${flightPlan.startPoint}"></td>
                                        </tr>
                                        <tr>
                                            <td>结束地点</td>
                                            <td><input type="text"  class="form" name="endPoint" value="${flightPlan.endPoint}"></td>
                                        </tr>
                                        <tr>
                                            <td>飞行高度</td>
                                            <td><input type="number"  class="form" name="flightHeight" value="${flightPlan.flightHeight}"></td>
                                        </tr>
                                        <tr>
                                            <td>飞行描述</td>
                                            <td><textarea  name="description" cols="30" rows="10" value="">${flightPlan.description}</textarea></td>
                                        </tr>
                                        <tr>
                                            <td>申请日期</td>
                                            <td><input type="text"  class="form" name="applyDate" value="<fmt:formatDate value='${flightPlan.applyDate}' pattern='yyyy-MM-dd'/>"></td>
                                        </tr>
                                        <tr>
                                            <td>飞机品牌</td>
                                            <td>
                                                <select  class="form" name="uavId" id="">
                                                    <option value="1" selected="selected">大疆无人机1</option>
                                                    <option value="2">大疆无人机2</option>
                                                    <option value="3">大疆无人机3</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><input type="hidden" value="2" name="userId" value="${flight.userId}"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="1"><input type="submit" value="修改" class="layui-btn"></td>
                                            <td colspan="1"><input type="button" value="返回" class="layui-btn"  onClick="javascript :history.back(-1);"></td>

                                        </tr>
                                    </table>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/classie.js"></script>
<script src="${pageContext.request.contextPath}/js/snap.svg-min.js"></script>
<script src="${pageContext.request.contextPath}/js/toggleMenu.js"></script>
<script src="${pageContext.request.contextPath}/js/menu.js"></script>
<%--<script src="${pageContext.request.contextPath}/js/page.js"></script>--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/flightPlan.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/nav.js"></script>
<script>
    // Copyright 2014-2015 Twitter, Inc.
    // Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
    if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
        var msViewportStyle = document.createElement('style');
        msViewportStyle.appendChild(
            document.createTextNode(
                '@-ms-viewport{width:auto!important}'
            )
        );
        document.querySelector('head').appendChild(msViewportStyle)
    }
    $(document).ready(function(){

        $('.menu-button').toggle(function(){
            $('.content').css('width','93%');
        },function(){
            $('.content').css('width','100%');
        });
    });
</script>
</body>
</html>
