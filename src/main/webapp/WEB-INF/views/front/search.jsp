<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/20
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>想太多会累_无弹窗书友最值得收藏的网络小说阅读网</title>
</head>
<body>

<jsp:include page="../../includes/front/head.jsp"/>
<div class="container">
    <div class="row">
        <div class="layout layout2 layout-co18">
            <h2 class="layout-tit">搜索"${keyWord}"相关小说</h2>
            <ul class="txt-list txt-list-row5">
                <li><span class="s1"><b>作品分类</b></span>
                    <span class="s2"><b>作品名称</b></span>
                    <span class="s3"><b>最新章节</b></span>
                    <span class="s4"><b>作者</b></span>
                    <span class="s5"><b>更新时间</b></span>
                </li>
                <c:forEach items="${novels}" var="novel">
                    <li>
                        <span class="s1">[${novel.ntype}]</span>
                        <span class="s2">
                    <a href="/front/fdetail?id=${novel.id}">${novel.nname}</a>
                </span>
                        <span class="s3"><a href="/front/fcontentnext?id=${novel.latestchapter.id}">${novel.latestchapter.cname}</a></span>
                        <span class="s4">${novel.nauthor}</span>
                        <span class="s5"><fmt:formatDate type="date" value="${novel.createtime}"/></span>
                    </li>
                </c:forEach>


            </ul>
            <ul class="txt-list txt-list-row5">
            </ul>
        </div>
    </div>
</div>
<jsp:include page="../../includes/front/footer.jsp"/>
</body>
</html>

