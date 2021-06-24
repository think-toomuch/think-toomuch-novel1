<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/8
  Time: 8:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>我的小说 | 分类详情</title>
    <jsp:include page="../../includes/header.jsp"/>
</head>

<div class="card-body">
    <table id="dataTable" class="table table-hover">
        <tbody>
        <tr>
            <td>ID:</td>
            <td>${novelType.id}</td>
        </tr>
        <tr>
            <td>所属分类:</td>
            <td>${novelType.ntype}</td>
        </tr>
        </tbody>
    </table>
</div>

</html>

