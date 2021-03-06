<%--
  Created by IntelliJ IDEA.
  Versions: v0.1
  User: HDPC
  Date: 2017/8/10
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <title>添加飞行计划</title>

    <meta name="description" content="找飞机:添加飞行计划 内含导航栏、form表单、保存和返回按钮" />
    <meta name="keywords" content="form表单、按钮" />
    <meta name="author" content="Marina" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Table.css"/>

</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="content-wrap " >
    <div class="content" id="change">
        <section class="content-header">
            <h3>添加飞行计划
                <ul class="toplist">
                    <li class="topnav">
                        <a href="">Home /</a>
                    </li>
                    <li>
                        <a href="">添加飞行计划</a>
                    </li>
                </ul>
            </h3>
        </section>
        <section class="content ">
            <div class="panel panel-default">
                <div class="panel-heading">
                    添加飞行计划
                </div>
                <div class="panel-body">
                    <div class="table-responsive box-default form-inline no-footer scoller">
                        <div class="table-responsive box-default form-inline no-footer adduser">
                            <div class="adduser" id="content">
                                <form action="${pageContext.request.contextPath}/flightPlan/addFlightPlan" method="post">
                                    <table style="margin:0 auto;width:40%;">
                                        <tr>
                                            <td>开始日期</td>
                                            <td><input type="text" readonly="readonly" class="form" name="startDate" onfocus="WdatePicker()"></td>
                                        </tr>
                                        <tr>
                                            <td>结束日期</td>
                                            <td><input type="text" readonly="readonly" class="form" name="endDate" onfocus="WdatePicker()"></td>
                                        </tr>
                                        <tr>
                                            <td>开始地点</td>
                                            <td><input type="text" name="startPoint" class="form"></td>
                                        </tr>
                                        <tr>
                                            <td>结束地点</td>
                                            <td><input type="text" name="endPoint" class="form"></td>
                                        </tr>
                                        <tr>
                                            <td>飞行高度</td>
                                            <td><input type="number" name="flightHeight" class="form"></td>
                                        </tr>
                                        <tr>
                                            <td>飞行描述</td>
                                            <td><textarea  name="description" cols="30" rows="10"></textarea></td>
                                        </tr>
                                        <tr>
                                            <td>申请日期</td>
                                            <td><input type="text" readonly="readonly" class="form" name="applyDate" onfocus="WdatePicker()"></td>
                                        </tr>
                                        <tr>
                                            <td>飞机品牌</td>
                                            <td>
                                                <select name="uavId" id="" class="form">
                                                    <option value="1" selected="selected">大疆无人机1</option>
                                                    <option value="2">大疆无人机2</option>
                                                    <option value="3">大疆无人机3</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><input type="hidden" value="2" name="userId"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="1"><input type="submit" value="保存" class="layui-btn"></td>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/classie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/snap.svg-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/toggleMenu.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/flightPlan.js"></script>

</body>
</html>
