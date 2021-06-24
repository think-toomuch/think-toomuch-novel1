<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/24
  Time: 1:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>${nType}_好看的${nType}_2021${nType}排行榜_想太会会累</title>
</head>
<body>

<jsp:include page="../../includes/front/head.jsp"/>
<div class="container">
    <div class="row">
        <div class="layout layout-col2 layout-col3">
            <c:forEach items="${noveitems}" var="novel">
                <div class="item">
                    <div class="image">
                        <a href="/front/fdetail?id=${novel.id}">
                            <img style="min-height:120px;" onerror="src='../../../static/assets/img/img.png'" src="${novel.nphoto}" alt="${novel.nname}"></a>
                    </div>
                    <dl>
                        <dt><span>${novel.nauthor} </span><a href="/front/fdetail?id=${novel.id}">${novel.nname} </a></dt>
                        <dd><a href="/front/fdetail?id=${novel.id}" style="color: #555">${fn:substring(novel.description,0,47)}...</a></dd>
                    </dl>
                </div>
            </c:forEach>

        </div>
    </div>
    <div class="row">
        <div class="layout layout2 layout-col1 fr">
            <h2 class="layout-tit">${nType}最新入库小说</h2>
            <ul class="txt-list txt-list-row3">
                <c:forEach items="${latestnoveitems}" var="novel">
                    <li>
                        <span class="s1">[${novel.ntype}]</span>
                        <span class="s2"><a href="/front/fdetail?id=${novel.id}">${fn:substring(novel.nname,0,7)}</a></span>
                        <span class="s5">${novel.nauthor}</span>
                    </li>
                </c:forEach>
            </ul>
        </div>

        <div class="layout layout2 layout-col2 fl">
            <h2 class="layout-tit">${nType}最近更新小说列表</h2>
            <ul class="txt-list txt-list-row5">
                <c:forEach items="${latestupdatenoveitems}" var="novel">
                    <li>
                        <span class="s1">[${novel.ntype}]</span>
                        <span class="s2">
                                    <a href="/front/fdetail?id=${novel.id}">${novel.nname}</a>
                                </span>
                        <span class="s3"><a href="/front/fcontent?id=${novel.latestchapter.id}">${novel.latestchapter.cname}</a></span>
                        <span class="s4">${novel.nauthor}</span><span class="s5"> <fmt:formatDate type="date" value="${novel.updatetime}"/></span>
                    </li>
                </c:forEach>
            </ul>
        </div>

    </div>

</div>
</div>
<jsp:include page="../../includes/front/footer.jsp"/>
</body>
</html>


