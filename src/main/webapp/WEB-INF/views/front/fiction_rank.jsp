<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/24
  Time: 1:35
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
    <title>小说排行榜_2021完结小说排行榜_想太会会累</title>
</head>
<body>
<jsp:include page="../../includes/front/head.jsp"/>
<div class="container">
    <div class="row row-rank">
        <div>
            <div class="layout layout-col1">
                <div class="layout-tit">
                    <strong>玄幻奇幻排行</strong>
                    <ul class="tab-hd">
                        <li class="active">总</li>
                        <li>月</li>
                        <li>周</li>
                    </ul>
                </div>
                <div class="tab-bd">
                    <ul class="txt-list txt-list-row3">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index11.html">乾坤剑神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">逆天邪神</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="index13.html">从斗罗开始打卡</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="index17.html">万古神帝</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="index18.html">九转道经</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">全职法师</a></span>
                            <span class="s5">12-05</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">完美世界</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">伏天氏</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">三寸人间</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">斗罗大陆IV终极斗罗</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">至尊神殿</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">斗罗大陆II绝世唐门</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">武炼巅峰</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">至尊武灵</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">大梦主</a></span>
                            <span class="s5">12-10</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index11.html">乾坤剑神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">逆天邪神</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="index13.html">从斗罗开始打卡</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="index18.html">九转道经</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">全职法师</a></span>
                            <span class="s5">12-05</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="index17.html">万古神帝</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">伏天氏</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">斗罗大陆IV终极斗罗</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">史上最狂老祖</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">斗罗大陆II绝世唐门</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">完美世界</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">三寸人间</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">武炼巅峰</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">至尊神殿</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">诡秘之主</a></span>
                            <span class="s5">12-10</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index11.html">乾坤剑神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">逆天邪神</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="index13.html">从斗罗开始打卡</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">全职法师</a></span>
                            <span class="s5">12-05</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="index17.html">万古神帝</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="index18.html">九转道经</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">伏天氏</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">斗罗大陆IV终极斗罗</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">史上最狂老祖</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">斗罗大陆II绝世唐门</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">完美世界</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">武炼巅峰</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">三寸人间</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">诡秘之主</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">至尊神殿</a></span>
                            <span class="s5">12-10</span>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="layout layout-col1">
                <div class="layout-tit">
                    <strong>武侠仙侠排行</strong>
                    <ul class="tab-hd">
                        <li class="active">总</li>
                        <li>月</li>
                        <li>周</li>
                    </ul>
                </div>
                <div class="tab-bd">
                    <ul class="txt-list txt-list-row3">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index15.html">重生西游之天篷妖尊</a></span>
                            <span class="s5">11-29</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">蛊真人</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">我欲封天</a></span>
                            <span class="s5">11-07</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">大奉打更人</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">九仙图</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">我师兄实在太稳健了</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">一念永恒</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">武谪仙</a></span>
                            <span class="s5">12-07</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">遮天</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="index35.html">修仙狂徒</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">凡人修仙之仙界篇</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">拜师九叔</a></span>
                            <span class="s5">11-07</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">仙逆</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">掠天记</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="index40.html">少年医仙</a></span>
                            <span class="s5">12-03</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index15.html">重生西游之天篷妖尊</a></span>
                            <span class="s5">11-29</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">蛊真人</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">大奉打更人</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">九仙图</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">一念永恒</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">掠天记</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">遮天</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">我师兄实在太稳健了</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">武谪仙</a></span>
                            <span class="s5">12-07</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="index35.html">修仙狂徒</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">凡人修仙之仙界篇</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">灵鼎</a></span>
                            <span class="s5">09-02</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="index40.html">少年医仙</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">仙逆</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">仙子请自重</a></span>
                            <span class="s5">10-18</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index15.html">重生西游之天篷妖尊</a></span>
                            <span class="s5">11-29</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">蛊真人</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">大奉打更人</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">九仙图</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">一念永恒</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">掠天记</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">我师兄实在太稳健了</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">武谪仙</a></span>
                            <span class="s5">12-07</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">遮天</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">凡人修仙之仙界篇</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="index35.html">修仙狂徒</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="index40.html">少年医仙</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">我欲封天</a></span>
                            <span class="s5">11-07</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">仙逆</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">灵鼎</a></span>
                            <span class="s5">09-02</span>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="layout layout-col1">
                <div class="layout-tit">
                    <strong>都市言情排行</strong>
                    <ul class="tab-hd">
                        <li class="active">总</li>
                        <li>月</li>
                        <li>周</li>
                    </ul>
                </div>
                <div class="tab-bd">
                    <ul class="txt-list txt-list-row3">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index12.html">叶君临李子柒</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">我只有两千五百岁</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="index14.html">叶辰夏若雪</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="index16.html">医道狂尊</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">万族之劫</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">乡村透视仙医</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="index54.html">校花的贴身高手</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">超级红包神仙群</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">第一序列</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">都市超级公子</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">史上最强炼气期</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">校花之贴身高手</a></span>
                            <span class="s5">12-04</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">大王饶命</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">超品相师</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">江南林若兰</a></span>
                            <span class="s5">12-10</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">我只有两千五百岁</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="index16.html">医道狂尊</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">万族之劫</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">乡村透视仙医</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="index14.html">叶辰夏若雪</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="index54.html">校花的贴身高手</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">第一序列</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">超品相师</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">超级红包神仙群</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="index12.html">叶君临李子柒</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">大王饶命</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">都市超级公子</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">史上最强炼气期</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">校花之贴身高手</a></span>
                            <span class="s5">12-04</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">我的微信连三界</a></span>
                            <span class="s5">09-07</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">我只有两千五百岁</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">万族之劫</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="index16.html">医道狂尊</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">乡村透视仙医</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="index14.html">叶辰夏若雪</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="index54.html">校花的贴身高手</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">超品相师</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">第一序列</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="index12.html">叶君临李子柒</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">超级红包神仙群</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">大王饶命</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">都市超级公子</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">我的微信连三界</a></span>
                            <span class="s5">09-07</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">全球高武</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">史上最强炼气期</a></span>
                            <span class="s5">12-09</span>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="layout layout-col1 mr0">
                <div class="layout-tit">
                    <strong>历史军事排行</strong>
                    <ul class="tab-hd">
                        <li class="active">总</li>
                        <li>月</li>
                        <li>周</li>
                    </ul>
                </div>
                <div class="tab-bd">
                    <ul class="txt-list txt-list-row3">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index19.html">重生之战神吕布</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">贞观贤王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">逍遥小书生</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">不让江山</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">钢铁皇朝</a></span>
                            <span class="s5">09-01</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">大明之崇祯大帝</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="index62.html">最强兵王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">大唐神级驸马</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">天唐锦绣</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="index63.html">超神特种兵王</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">赘婿</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">寒门崛起</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="index59.html">神话版三国</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">秀才无双</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">唐砖</a></span>
                            <span class="s5">12-10</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index19.html">重生之战神吕布</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">逍遥小书生</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">贞观贤王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">钢铁皇朝</a></span>
                            <span class="s5">09-01</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">不让江山</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">大明之崇祯大帝</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">唐砖</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">天唐锦绣</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="index63.html">超神特种兵王</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">大唐神级驸马</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="index59.html">神话版三国</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="index62.html">最强兵王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">秀才无双</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">龙魂特种兵</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">赘婿</a></span>
                            <span class="s5">12-09</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index19.html">重生之战神吕布</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">逍遥小书生</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">贞观贤王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">不让江山</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">钢铁皇朝</a></span>
                            <span class="s5">09-01</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">天唐锦绣</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">唐砖</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">大唐神级驸马</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">大明之崇祯大帝</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="index59.html">神话版三国</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="index62.html">最强兵王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="index63.html">超神特种兵王</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">龙魂特种兵</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">秀才无双</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="index67.html">卧龙</a></span>
                            <span class="s5">10-18</span>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <div style="float:left;">
            <div class="layout layout-col1">
                <div class="layout-tit">
                    <strong>科幻灵异排行</strong>
                    <ul class="tab-hd">
                        <li class="active">总</li>
                        <li>月</li>
                        <li>周</li>
                    </ul>
                </div>
                <div class="tab-bd">
                    <ul class="txt-list txt-list-row3">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">我在绝地求生捡碎片</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">重启末世</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">末日生存大师</a></span>
                            <span class="s5">11-07</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">吞噬星空</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">末世之全能大师</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">九星毒奶</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">我的细胞监狱</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">我有一座恐怖屋</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">学霸的黑科技系统</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">科技之全球垄断</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="index73.html">驭房有术</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="index75.html">我是一具尸体</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">麻衣神婿</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">神级反派</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">修真四万年</a></span>
                            <span class="s5">11-07</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">吞噬星空</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">重启末世</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">我在绝地求生捡碎片</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">末世之全能大师</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">末日生存大师</a></span>
                            <span class="s5">11-07</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">我的细胞监狱</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">九星毒奶</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">学霸的黑科技系统</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">我有一座恐怖屋</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">麻衣神婿</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="index77.html">快穿女配冷静点</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="index73.html">驭房有术</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">第九特区</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="index75.html">我是一具尸体</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">末世无限吞噬</a></span>
                            <span class="s5">11-06</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">吞噬星空</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">重启末世</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">末世之全能大师</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">我在绝地求生捡碎片</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">末日生存大师</a></span>
                            <span class="s5">11-07</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">我的细胞监狱</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">我有一座恐怖屋</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">麻衣神婿</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="index77.html">快穿女配冷静点</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">九星毒奶</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">学霸的黑科技系统</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">科技帝国</a></span>
                            <span class="s5">09-15</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="index73.html">驭房有术</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">第九特区</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">末世无限吞噬</a></span>
                            <span class="s5">11-06</span>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="layout layout-col1">
                <div class="layout-tit">
                    <strong>网游竞技排行</strong>
                    <ul class="tab-hd">
                        <li class="active">总</li>
                        <li>月</li>
                        <li>周</li>
                    </ul>
                </div>
                <div class="tab-bd">
                    <ul class="txt-list txt-list-row3">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">网游之奴役众神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">网游之逆天戒指</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">超神机械师</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">文明之万界领主</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">网游之倒行逆施</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">惊悚乐园</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">领主之兵伐天下</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">网游之诡影盗贼</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">英雄联盟之七百年后</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">网游之锦衣卫</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">快穿之花式逆袭男神方案</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">王者荣耀之无敌逆天外挂</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">英雄联盟之决胜巅峰</a></span>
                            <span class="s5">12-08</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">重生之贼行天下</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">从零开始</a></span>
                            <span class="s5">08-04</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">网游之逆天戒指</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">超神机械师</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">网游之奴役众神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">文明之万界领主</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">惊悚乐园</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">网游之倒行逆施</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">斩月</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">重生之最强剑神</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">快穿之花式逆袭男神方案</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">网游之诡影盗贼</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">穿越火线之生化枪神</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">亏成首富从游戏开始</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">我有一座末日城</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">领主之兵伐天下</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">王者荣耀之无敌逆天外挂</a></span>
                            <span class="s5">12-10</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">网游之逆天戒指</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">超神机械师</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">网游之奴役众神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">文明之万界领主</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">惊悚乐园</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">网游之倒行逆施</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">斩月</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">王者荣耀之无敌逆天外挂</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">英雄联盟之七百年后</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">快穿之花式逆袭男神方案</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">亏成首富从游戏开始</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">领主之兵伐天下</a></span>
                            <span class="s5">12-09</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">穿越火线之生化枪神</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">重生之贼行天下</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">网游之诡影盗贼</a></span>
                            <span class="s5">12-03</span>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="layout layout-col1">
                <div class="layout-tit">
                    <strong>女生频道排行</strong>
                    <ul class="tab-hd">
                        <li class="active">总</li>
                        <li>月</li>
                        <li>周</li>
                    </ul>
                </div>
                <div class="tab-bd">
                    <ul class="txt-list txt-list-row3">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">报告首长，我重生啦！</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">恰似寒光遇骄阳</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">医妃惊世</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">许你万丈光芒好</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">拒嫁豪门：少夫人99次出逃</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">重生八零锦绣军婚</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">神医娘子手下留针</a></span>
                            <span class="s5">12-04</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">农女致富：山里汉宠妻无度</a></span>
                            <span class="s5">09-06</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">军少的神医辣妻</a></span>
                            <span class="s5">11-07</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">穿越全能网红</a></span>
                            <span class="s5">10-17</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">邪王追妻</a></span>
                            <span class="s5">09-23</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">重生之将门毒后</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">都市奇门医圣</a></span>
                            <span class="s5">12-04</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">惊世医妃</a></span>
                            <span class="s5">11-07</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">天官赐福</a></span>
                            <span class="s5">12-10</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">报告首长，我重生啦！</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">恰似寒光遇骄阳</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">神医娘子手下留针</a></span>
                            <span class="s5">12-04</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">拒嫁豪门：少夫人99次出逃</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">许你万丈光芒好</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">穿越全能网红</a></span>
                            <span class="s5">10-17</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">农女致富：山里汉宠妻无度</a></span>
                            <span class="s5">09-06</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">当满级大佬翻车以后</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">医妃惊世</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">重生八零锦绣军婚</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">重生之将门毒后</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">别闹，薄先生！</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">掌珠</a></span>
                            <span class="s5">10-11</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">亿万老公太危险</a></span>
                            <span class="s5">08-05</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">夫人你马甲又掉了</a></span>
                            <span class="s5">11-07</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="javascript:;">报告首长，我重生啦！</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">恰似寒光遇骄阳</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">神医娘子手下留针</a></span>
                            <span class="s5">12-04</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">拒嫁豪门：少夫人99次出逃</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">农女致富：山里汉宠妻无度</a></span>
                            <span class="s5">09-06</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">穿越全能网红</a></span>
                            <span class="s5">10-17</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">当满级大佬翻车以后</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">许你万丈光芒好</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">重生八零锦绣军婚</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">重生之将门毒后</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">医妃惊世</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">别闹，薄先生！</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">大财阀的隐婚甜妻</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">重生空间：首席神瞳商女</a></span>
                            <span class="s5">12-10</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">亿万老公太危险</a></span>
                            <span class="s5">08-05</span>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="layout layout-col1 mr0">
                <div class="layout-tit">
                    <strong>完本小说排行</strong>
                    <ul class="tab-hd">
                        <li class="active">总</li>
                        <li>月</li>
                        <li>周</li>
                    </ul>
                </div>
                <div class="tab-bd">
                    <ul class="txt-list txt-list-row3">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index11.html">乾坤剑神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="index18.html">九转道经</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">乡村透视仙医</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">报告首长，我重生啦！</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">贞观贤王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">超级红包神仙群</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">逍遥小书生</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">九仙图</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">重启末世</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">斗罗大陆II绝世唐门</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">恰似寒光遇骄阳</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">至尊武灵</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">网游之奴役众神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">都市超级公子</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">太古神王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index11.html">乾坤剑神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="index18.html">九转道经</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="javascript:;">乡村透视仙医</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">报告首长，我重生啦！</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">逍遥小书生</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">重启末世</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">恰似寒光遇骄阳</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">贞观贤王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">九仙图</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">斗罗大陆II绝世唐门</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">超品相师</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">钢铁皇朝</a></span>
                            <span class="s5">09-01</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">掠天记</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">至尊武灵</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">网游之逆天戒指</a></span>
                            <span class="s5">12-03</span>
                        </li>

                    </ul>
                    <ul class="txt-list txt-list-row3 none">

                        <li>
                            <span class="s1">1</span>
                            <span class="s2"><a href="index11.html">乾坤剑神</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">2</span>
                            <span class="s2"><a href="javascript:;">乡村透视仙医</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">3</span>
                            <span class="s2"><a href="index18.html">九转道经</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">4</span>
                            <span class="s2"><a href="javascript:;">报告首长，我重生啦！</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">5</span>
                            <span class="s2"><a href="javascript:;">重启末世</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">6</span>
                            <span class="s2"><a href="javascript:;">恰似寒光遇骄阳</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">7</span>
                            <span class="s2"><a href="javascript:;">逍遥小书生</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">8</span>
                            <span class="s2"><a href="javascript:;">九仙图</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">9</span>
                            <span class="s2"><a href="javascript:;">贞观贤王</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">10</span>
                            <span class="s2"><a href="javascript:;">斗罗大陆II绝世唐门</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">11</span>
                            <span class="s2"><a href="javascript:;">超品相师</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">12</span>
                            <span class="s2"><a href="javascript:;">网游之逆天戒指</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">13</span>
                            <span class="s2"><a href="javascript:;">末世之全能大师</a></span>
                            <span class="s5">12-03</span>
                        </li>

                        <li>
                            <span class="s1">14</span>
                            <span class="s2"><a href="javascript:;">超级红包神仙群</a></span>
                            <span class="s5">08-04</span>
                        </li>

                        <li>
                            <span class="s1">15</span>
                            <span class="s2"><a href="javascript:;">掠天记</a></span>
                            <span class="s5">08-04</span>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../includes/front/footer.jsp"/>
</body>
</html>


