<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/22
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>${chapter.cname}</title>
</head>
<body id="reader-m-fix">
<jsp:include page="../../includes/front/head.jsp"/>

<script type="text/javascript" src="../../../static/assets/js/novel1.js"></script>
<script language="javascript">
  getset()
</script>
<script language="javascript">
  getset1()
</script>
<script>
  createApp()
</script>
<div class="m-setting">
  <div class="font-box">
    <span>字:</span>
    <span id="fontbig" onclick="nr_setbg('big')">大</span>
    <span id="fontmiddle" onclick="nr_setbg('middle')">中</span>
    <span id="fontsmall" onclick="nr_setbg('small')">小</span>
  </div>
  <a onclick="nr_setbg('light')" class="btn-setbg" id="bgmode-light">关灯</a>
  <a onclick="nr_setbg('huyan')" class="btn-setbg" id="bgmode-huyan">护眼</a>
</div>

<div class="container" id="container">
  <div class="row row-detail row-reader">
    <div class="layout layout-col1">
      <div class="layout-tit xs-hidden">
        <a href="index.html">想太会会累</a> > <a href="/front/fdetail?id=${novel.id}" title="${novel.nname}">${novel.nname}</a> &gt; ${chapter.cname}
        <div class="reader-fun">
          <select class="select select-font">
            <option value="宋体,STSong">字体</option>
            <option value="方正启体简体,Apple LiGothic Medium">默认</option>
            <option value="黑体,STHeiti">黑体</option>
            <option value="楷体_GB2312,STKaiti">楷体</option>
            <option value="微软雅黑,STXihei">雅黑</option>
            <option value="方正启体简体,Apple LiGothic Medium">启体</option>
            <option value="宋体,STSong">宋体</option>
          </select>
          <select class="select select-color">
            <option value="#555555">颜色</option>
            <option value="#555555">默认</option>
            <option value="#9370DB">暗紫</option>
            <option value="#2E8B57">藻绿</option>
            <option value="#2F4F4F">深灰</option>
            <option value="#778899">青灰</option>
            <option value="#800000">栗色</option>
            <option value="#6A5ACD">青蓝</option>
            <option value="#BC8F8F">玫褐</option>
            <option value="#F4A460">黄褐</option>
            <option value="#F5F5DC">米色</option>
            <option value="#F5F5F5">雾白</option>
          </select>
          <select class="select select-size">
            <option value="#E9FAFF">大小</option>
            <option value="24px">默认</option>
            <option value="16px">16px</option>
            <option value="18px">18px</option>
            <option value="20px">20px</option>
            <option value="22px">22px</option>
            <option value="24px">24px</option>
            <option value="26px">26px</option>
            <option value="28px">28px</option>
            <option value="30px">30px</option>
            <option value="32px">32px</option>
          </select>
          <select class="select select-bg">
            <option value="#E9FAFF">背景</option>
            <option value="#E9FAFF">默认</option>
            <option value="#FFFFFF">白雪</option>
            <option value="#111111">漆黑</option>
            <option value="#FFFFED">明黄</option>
            <option value="#EEFAEE">淡绿</option>
            <option value="#CCE8CF">草绿</option>
            <option value="#FCEFFF">红粉</option>
            <option value="#EFEFEF">深灰</option>
            <option value="#F5F5DC">米色</option>
            <option value="#D2B48C">茶色</option>
            <option value="#C0C0C0">银色</option>
          </select>
          <span>
								<label for="readermode">夜间模式</label>
								<input type="checkbox" name="readermode" id="readermode">
          </span>
        </div>
      </div>
      <div class="reader-main">
        <h1 class="title">${chapter.cname}</h1>
        <div class="section-opt">

          <a href="/front/fcontentnext?id=${chaptercontent.id-1}">上一章</a>

          <span class="xs-hidden">← </span>
          <a href="/front/fdetail?id=${novel.id}">章节列表</a>
          <span class="xs-hidden">→</span>

          <a href="/front/fcontentnext?id=${chaptercontent.id+1}">下一章</a>

          <a href="/front/dowtxt?nid=${chaptercontent.nid}">TXT下载</a>
        </div>

        <div class="content" id="content">
              ${chaptercontent.ccontent}
          <script language="javascript">
            sjwzl("${chapter.cname}");
          </script>
        </div>
        <div class="section-opt m-bottom-opt" style="margin: 0px; top: 0">

          <a href="/front/fcontentnext?id=${chaptercontent.id-1}">上一章</a>

          <span class="xs-hidden">← </span>
          <a href="/front/fdetail?id=${novel.id}">章节列表</a>
          <span class="xs-hidden">→</span>

          <a href="${chaptercontent.id+1}">下一章</a>

          <a href=/front/dowtxt?nid=${chaptercontent.nid}>TXT下载</a>

        </div>
      </div>
    </div>
  </div>
</div>

<jsp:include page="../../includes/front/footer.jsp"/>
<div class="xs-hidden">
  <script type="text/javascript" src="../../../static/assets/js/pc-novel.js"></script>
</div>
<script>
  function postError() {
    var bookId = 56715;
    var chapterId = 2998586;
    var chapterName = "第1845章 魔祖意志";
    $.post("/post.php", {
              action: "error",
              bookId: bookId,
              chapterId: chapterId,
              chapterName: chapterName
            },
            function(data) {
              var data = JSON.parse(data);
              swal({
                title: "提示",
                text: data.info,
                timer: 1000,
              });
            })
  }


  function addHit(bookid) {
    $.post("/post.php", {
      action: "addhit",
      bookid: bookid
    });
  }

  if (typeof addHit != 'undefined' && addHit instanceof Function)
    addHit(56715);

  if (typeof addBookMarkByJs != 'undefined' && addBookMarkByJs instanceof Function)
    addBookMarkByJs(2998586, 56715, '第1845章 魔祖意志');

  $(window).resize(function() {
    var winWidth = $(window).width()
    if (winWidth < 980 && $('.m-setting').length) {
      $('body').attr('id', 'reader-m-fix');
    } else {
      $('body').attr('id', '');
    }
  }).resize()
</script>
<script language="javascript">
  document.onkeydown = keypage
  var prevpage = "/book/56715/2998585.html"

  var nextpage = '2998586_2.html'

  var index_page = "./"

  function keypage() {
    if (event.keyCode == 37) location = prevpage
    if (event.keyCode == 39) location = nextpage
    if (event.keyCode == 13) document.location = index_page
  }
</script>
<script language="javascript" type="text/javascript" src="../../../static/assets/js/true.js"></script>
<script>
  getSuiji0Lunbo("《重生之神帝归来》", "笔趣阁", 1);
</script>
</body>
</html>