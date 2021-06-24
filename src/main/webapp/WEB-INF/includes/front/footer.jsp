<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/20
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>createApp()</script>
<div class="footer" id="footer">
    <div class="pc-footer">
        <p>本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。</p>
    </div>
    <div class="m-footer">
        <a href="">首页</a>
        <a href="case.html" rel="nofollow">我的书架</a>
        <a href="case.html" rel="nofollow">阅读记录</a>
        <a href="javascript:;">客户端</a>
        <a href="#">顶部↑</a>
    </div>
</div>

<script src="../../../static/assets/js/iconfont.js"></script>
<script src="../../../static/assets/js/jquery.min.js"></script>
<script src="../../../static/assets/js/sweet-alert.min.js"></script>
<script>
    function check() {
        var keyWord = $("#keyWord").val().trim();
        if (keyWord == "" || keyWord == null || keyWord == undefined) {
            swal({
                title: "请输入正确的信息！",
                type: "warning",
            });
        } else {
            $("#form").submit();
        }
    }
    function winSetHP() {
        var name = document.title;
        if (document.all) {
            document.body.style.behavior = 'url(#default#homepage)';
            document.body.setHomePage(name);
        } else {
            swal({
                title: "提示",
                text: '浏览器不支持此操作, 请手动设为首页'
            });
        }
    }
    function winAddFav() {
        var domain = window.location.href;
        var name = document.title;
        try {
            window.external.addFavorite(domain, name);
        } catch (e) {
            try {
                window.sidebar.addPanel(name, domain, '');
            } catch (e) {
                swal({
                    title: "提示",
                    text: '加入收藏失败，请使用Ctrl+D进行添加,或手动在浏览器里进行设置'
                });
            }
        }
    }
    function loginbtn() {
        var domain = window.location.href;
        $.post("/MemberAction.php", { action: 'login', username: $("#small-username").val(), password: $("#small-password").val(), usecookie: "720" },
            function (result) {
                if (result != []) {
                    if (result.status == 1) {
                        swal({
                            title: "提示",
                            text: result.info
                        });
                        setTimeout(function () {
                            if(domain.indexOf("login.php") >= 0 ) {
                                location.href = "/";
                            }else{
                                location.href = domain;
                            }
                        }, 1500);
                    } else {
                        swal({
                            title: "提示",
                            text: result.info
                        });
                    }
                }
            })
    }
</script>
<div style="display:none;">
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?1178a65c6e06652b52745ae1c757aa87";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <script type="text/javascript" src="../../../static/assets/js/z_stat-1278951145_1278951145.js"></script>
</div>
<div class="pc-footer">
    <a href="https://www.baidu.com/">想太会会累？？？？？？</a>
</div>

