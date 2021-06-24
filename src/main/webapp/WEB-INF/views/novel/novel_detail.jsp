<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/8
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>我的小说 | 小说详情</title>
    <jsp:include page="../../includes/header.jsp"/>
</head>

<div class="card-body">
    <table id="dataTable" class="table table-hover">
        <tbody>
        <tr>
            <td>ID:</td>
            <td>${novel.id}</td>
        </tr>
        <tr>
            <td>小说名:</td>
            <td>${novel.nname}</td>
        </tr>
        <tr>
            <td style="word-break: keep-all;white-space:nowrap;">所属分类:</td>
            <td>${novel.ntype}</td>
        </tr>
        <tr>
            <td>作者:</td>
            <td>${novel.nauthor}</td>
        </tr>
        <tr>
            <td>封面:</td>
            <td><img id="${novel.id}" src="${novel.nphoto}" width="62" height="69"></td>
        </tr>
        <tr>
            <td>描述:</td>
            <td>${novel.description}</td>
        </tr>
        <tr>
            <td style="word-break: keep-all;white-space:nowrap;">更新时间:</td>
            <td><fmt:formatDate value="${novel.updatetime}" type="both"/></td>
        </tr>
        </tbody>
    </table>
</div>

</html>