<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/20
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../../../static/assets/css/sweet-alert.css"/>
<link rel="stylesheet" href="../../../static/assets/css/style.css">
<script src="../../../static/assets/js/jquery.min.js"></script>
<script src="../../../static/assets/js/novel.js"></script>
<script src="../../../static/assets/js/apps.js"></script>
<%--<div class="topbar">--%>
<%--    <div class="topbar-con">--%>
<%--        <div class="topbar-sethome">--%>
<%--            <a href="javascript:winSetHP();">将本站设为首页</a>--%>
<%--        </div>--%>
<%--        <div class="topbar-addfavorite">--%>
<%--            <a href="javascript:winAddFav()">收藏想太多会累</a>--%>
<%--        </div>--%>
<%--        <div class="topbar-right">--%>
<%--            <script>PCLogin()</script>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<div class="header">
    <h1 class="logo"><a href="">想太多会累</a></h1>
    <form action="/front/search" class="search-form" id="form">
        <input class="input-text input-key" id="keyWord" name="keyWord" type="text" maxlength="30" placeholder="可搜书名和作者，请您少字也别输错字。">
        <input type="button" class="btn-tosearch" value="搜索" title="搜索" onclick="check()">
    </form>
<%--    <div class="m-user" style="color:#fff">--%>
<%--        <script>MLogin()</script>--%>
<%--    </div>--%>
</div>

<ul class="nav">
    <li><a href="/front/index">首页</a></li>
    <li><a href="/front/typeindex?nType=玄幻">玄幻小说</a></li>
    <li><a href="/front/typeindex?nType=网游">网游小说</a></li>
    <li><a href="/front/typeindex?nType=都市言情">都市言情</a></li>
    <li><a href="/front/typeindex?nType=历史军事">历史军事</a></li>
    <li><a href="/front/typeindex?nType=武侠仙侠">武侠仙侠</a></li>
    <li><a href="/front/typeindex?nType=游戏竞技">游戏竞技</a></li>
    <li><a href="/front/typeindex?nType=其他">其他小说</a></li>
    <li><a href="/front/rankindex">排行榜单</a></li>
</ul>
<ul class="m-nav">
    <li><a href="index8.html">排行</a></li>
    <li><a href="index9.html">收藏</a></li>
    <li><a href="index10.html">完本</a></li>
    <li><a href="case.html">阅读记录</a></li>
    <li><a href="case.html" rel="nofollow">书架</a></li>
</ul>
<script>createApp()</script>