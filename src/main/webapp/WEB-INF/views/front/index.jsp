<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/19
  Time: 16:13
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
        <div class="layout layout-col2">
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
        <div class="layout layout-col1">
            <h2 class="layout-tit">经典推荐</h2>
            <ul class="txt-list txt-list-row3">
                <c:forEach items="${classicnoveitems}" var="novel">
                    <li>
                        <span class="s1">[${novel.ntype}]</span>
                        <span class="s2"><a href="/front/fdetail?id=${novel.id}">${fn:substring(novel.nname,0,7)}</a></span>
                        <span class="s5">${novel.nauthor}</span>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
        <div class="row">
            <div class="layout">
                <div class="tp-box">
                    <h2>玄幻小说</h2>
                    <div class="top">
                        <div class="image">
                            <a href="/front/fdetail?id=${fantasynoveitems.get(0).id}"><img src="${fantasynoveitems.get(0).nphoto}" onerror="src='../../../static/assets/img/img.png'" alt="${fantasynoveitems.get(0).nname}"></a>
                        </div>
                        <dl>
                            <dt><a href="/front/fdetail?id=${fantasynoveitems.get(0).id}">${fantasynoveitems.get(0).nname}</a></dt>
                            <dd><a href="/front/fdetail?id=${fantasynoveitems.get(0).id}" style="color: #555">${fn:substring(fantasynoveitems.get(0).description,0,47)}...</a></dd>
                        </dl>
                    </div>
                    <ul>
                    <c:forEach items="${fantasynoveitems}" var="novel">
                        <li><a href="/front/fdetail?id=${novel.id}">${novel.nname}</a>/${novel.nauthor}</li>
                    </c:forEach>

                    </ul>
                </div>
                <div class="tp-box">
                    <h2>历史军事</h2>

                    <div class="top">
                        <div class="image">
                            <a href="/front/fdetail?id=${historynoveitems.get(0).id}"><img src="${historynoveitems.get(0).nphoto}" onerror="src='../../../static/assets/img/img.png'" alt="${historynoveitems.get(0).nname}"></a>
                        </div>
                        <dl>
                            <dt><a href="/front/fdetail?id=${historynoveitems.get(0).id}">${historynoveitems.get(0).nname}</a></dt>
                            <dd><a href="/front/fdetail?id=${historynoveitems.get(0).id}" style="color: #555">${fn:substring(historynoveitems.get(0).description,0,47)}...</a></dd>
                        </dl>
                    </div>
                    <ul>
                        <c:forEach items="${historynoveitems}" var="novel">
                            <li><a href="/front/fdetail?id=${novel.id}">${novel.nname}</a>/${novel.nauthor}</li>
                        </c:forEach>
                    </ul>
                </div>

                <div class="tp-box">
                    <h2>都市言情</h2>
                    <div class="top">
                        <div class="image">
                            <a href="/front/fdetail?id=${citynoveitems.get(0).id}"><img src="${citynoveitems.get(0).nphoto}" onerror="src='../../../static/assets/img/img.png'" alt="${citynoveitems.get(0).nname}"></a>
                        </div>
                        <dl>
                            <dt><a href="/front/fdetail?id=${citynoveitems.get(0).id}">${citynoveitems.get(0).nname}</a></dt>
                            <dd><a href="/front/fdetail?id=${citynoveitems.get(0).id}" style="color: #555">${fn:substring(citynoveitems.get(0).description,0,47)}...</a></dd>
                        </dl>
                    </div>
                    <ul>
                        <c:forEach items="${citynoveitems}" var="novel">
                            <li><a href="/front/fdetail?id=${novel.id}">${novel.nname}</a>/${novel.nauthor}</li>
                        </c:forEach>
                    </ul>
                </div>

                <div class="tp-box">
                    <h2>游戏竞技</h2>
                    <div class="top">
                        <div class="image">
                            <a href="/front/fdetail?id=${gamernoveitems.get(0).id}"><img src="${gamernoveitems.get(0).nphoto}" onerror="src='../../../static/assets/img/img.png'" alt="${gamernoveitems.get(0).nname}"></a>
                        </div>
                        <dl>
                            <dt><a href="/front/fdetail?id=${gamernoveitems.get(0).id}">${gamernoveitems.get(0).nname}</a></dt>
                            <dd><a href="/front/fdetail?id=${gamernoveitems.get(0).id}" style="color: #555">${fn:substring(gamernoveitems.get(0).description,0,47)}...</a></dd>
                        </dl>
                    </div>
                    <ul>
                        <c:forEach items="${gamernoveitems}" var="novel">
                            <li><a href="/front/fdetail?id=${novel.id}">${novel.nname}</a>/${novel.nauthor}</li>
                        </c:forEach>
                    </ul>
                </div>

                <div class="tp-box">
                    <h2>网游小说</h2>
                    <div class="top">
                        <div class="image">
                            <a href="/front/fdetail?id=${onlinegamenoveitems.get(0).id}"><img src="${onlinegamenoveitems.get(0).nphoto}" onerror="src='../../../static/assets/img/img.png'" alt="${onlinegamenoveitems.get(0).nname}"></a>
                        </div>
                        <dl>
                            <dt><a href="/front/fdetail?id=${onlinegamenoveitems.get(0).id}">${onlinegamenoveitems.get(0).nname}</a></dt>
                            <dd><a href="/front/fdetail?id=${onlinegamenoveitems.get(0).id}" style="color: #555">${fn:substring(onlinegamenoveitems.get(0).description,0,47)}...</a></dd>
                        </dl>
                    </div>
                    <ul>
                        <c:forEach items="${onlinegamenoveitems}" var="novel">
                            <li><a href="/front/fdetail?id=${novel.id}">${novel.nname}</a>/${novel.nauthor}</li>
                        </c:forEach>
                    </ul>
                </div>

                <div class="tp-box">
                    <h2>武侠仙侠</h2>
                    <div class="top">
                        <div class="image">
                            <a href="/front/fdetail?id=${sciencenoveitems.get(0).id}"><img src="${sciencenoveitems.get(0).nphoto}" onerror="src='../../../static/assets/img/img.png'" alt="${sciencenoveitems.get(0).nname}"></a>
                        </div>
                        <dl>
                            <dt><a href="/front/fdetail?id=${sciencenoveitems.get(0).id}">${sciencenoveitems.get(0).nname}</a></dt>
                            <dd><a href="/front/fdetail?id=${sciencenoveitems.get(0).id}" style="color: #555">${fn:substring(sciencenoveitems.get(0).description,0,47)}...</a></dd>
                        </dl>
                    </div>
                    <ul>
                        <c:forEach items="${sciencenoveitems}" var="novel">
                            <li><a href="/front/fdetail?id=${novel.id}">${novel.nname}</a>/${novel.nauthor}</li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="layout layout2 layout-col1 fr">
                <h2 class="layout-tit">最新入库小说</h2>
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
                <h2 class="layout-tit">最近更新小说列表</h2>
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

