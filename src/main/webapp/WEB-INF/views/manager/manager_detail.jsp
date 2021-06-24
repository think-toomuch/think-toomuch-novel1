<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/5
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>我的小说 | 用户详情</title>
    <jsp:include page="../../includes/header.jsp"/>
</head>

<div class="card-body">
    <table id="dataTable" class="table table-hover">
        <tbody>
        <tr>
            <td>ID:</td>
            <td>${manager.id}</td>
        </tr>
        <tr>
            <td>邮箱:</td>
            <td>${manager.memail}</td>
        </tr>
        <tr>
            <td>用户名:</td>
            <td>${manager.mname}</td>
        </tr>
        </tbody>
    </table>
</div>

</html>

