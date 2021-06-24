<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/10
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>我的小说 | 章节详情</title>
    <jsp:include page="../../includes/header.jsp"/>
</head>

<div class="card-body">
    <table id="dataTable" class="table table-hover">
        <tbody>
        <tr>
            <td>ID:</td>
            <td>${chapter.id}</td>
        </tr>
        <tr>
            <td>CID:</td>
            <td>${chapter.cid}</td>
        </tr><tr>
            <td>NID:</td>
            <td>${chapter.nid}</td>
        </tr>
        <tr>
            <td>章节名:</td>
            <td>${chapter.cname}</td>
        </tr>
        <tr>
            <td style="word-break: keep-all;white-space:nowrap;">更新时间:</td>
            <td><fmt:formatDate value="${chapter.createtime}" type="both"/></td>
        </tr>
        </tbody>
    </table>
</div>

</html>
