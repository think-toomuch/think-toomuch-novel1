<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/22
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${novel.nname}最新章节列表_${novel.nname}全文免费阅读(尘山)小说_想太会会累</title>
</head>
<body>
<jsp:include page="../../includes/front/head.jsp"/>
<div class="container">
    <div class="row row-detail">
        <div class="layout layout-col1">
            <h2 class="layout-tit"><a href="index.html">想太多会累</a> > ${novel.nname}最新章节列表</h2>
            <div class="detail-box">
                <div class="imgbox">
                    <img alt="${novel.nname}" src="${novel.nphoto}">
                    <i class="flag flag-over xs-hidden"></i>
                </div>

                <div class="info">
                    <div class="top">
                        <h1>${novel.nname}</h1>
                        <div class="fix">
                            <p>${novel.nauthor}</p>
                            <p class="xs-show">类别：${novel.ntype}</p>
                            <p class="xs-show">状态：完本</p>
                            <p class="opt"> <span class="xs-hidden"> 动作：</span>
                                <a href="javascript:;" class="xs-show btn-read">开始阅读</a>
                                <a rel="nofollow" href="javascript:;" onclick="addBookCase();">加入书架</a> <i class="xs-hidden">、</i>
                                <a rel="nofollow" href="#footer" class="btn-tobtm">直达底部</a> <i class="xs-hidden">、</i>
                            </p>
                            <p>最后更新：<fmt:formatDate type="date" value="${novel.updatetime}"/> </p>
                            <p>到APP阅读：<a href="javascript:;" rel="nofollow">点击安装</a></p>
                        </div>
                    </div>
                    <div class="desc xs-hidden">
                       　${novel.description}
                    </div>
                </div>
                <div class="m-desc xs-show">
                    <strong>简介:</strong>
                    ${novel.description}
                </div>
            </div>
        </div>
    </div>
    <div class="row row-section">
        <div class="layout layout-col1">
            <h2 class="layout-tit">《${novel.nname}》最新章节</h2>
            <div class="section-box">
                <ul class="section-list fix">
                <c:forEach items="${latestChapters}" var="chapter">
                    <li><a href="/front/fcontent?id=${chapter.id}">${chapter.cname}</a></li>
                </c:forEach>
                </ul>
            </div>
            <h2 class="layout-tit">《${novel.nname}》正文</h2>
            <div class="section-box">
                <ul class="section-list fix">
                    <c:forEach items="${chapters}" var="chapter">
                    <li><a href="/front/fcontent?id=${chapter.id}">${chapter.cname}</a></li>
                    </c:forEach>
                </ul>
            </div>

        </div>
    </div>
</div>
<jsp:include page="../../includes/front/footer.jsp"/>
</body>
</html>
