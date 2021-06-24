<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/23
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sys" tagdir="/WEB-INF/tags/sys" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>我的小说 | 内容管理</title>
    <jsp:include page="../../includes/header.jsp"/>
    <link href="../../../static/assets/select/css/select2.min.css" rel="stylesheet" />
</head>
<!--
`body` tag options:
  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- navbar -->
    <jsp:include page="../../includes/nav.jsp"/>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <jsp:include page="../../includes/menu.jsp"/>
    <!-- ./Main Sidebar Container -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">内容管理</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">首页</a></li>
                            <li class="breadcrumb-item active">控制面板</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">

                <!-- Horizontal Form -->
                <div class="card card-info">

                    <div class="card-header">
                        <h3 class="card-title">${chapterContent.id==null?"新增":"编辑"}内容</h3>
                    </div>

                    <c:if test="${baseResult!=null}">
                        <div class="alert alert-${baseResult.status==200? "success":"danger"} alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                ${baseResult.message}
                        </div>
                    </c:if>

                    <!-- /.card-header -->
                    <form:form id="inputForm" cssClass="form-horizontal" action="/chaptcontent/save" method="post" modelAttribute="chapterContent">
                        <form:hidden path="id"/>
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="cid" class="col-sm-2 col-form-label">CID</label>
                                <div class="col-sm-10">
                                    <form:input path="cid" type="text" cssClass="form-control" placeholder="请输入章节检索ID"/>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="nid" class="col-sm-2 col-form-label">NID</label>
                                <div class="col-sm-10">
                                    <form:input path="nid" type="text" cssClass="form-control" placeholder="请输入小说NID（检索章节）"/>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label  class="col-sm-2 col-form-label">章节</label>
                                <div class="col-sm-10" id="div2">

                                </div>
                            </div>
                        </div>

                        <!-- /.card-body -->
                        <div class="card-footer">
                            <button type="button" onclick="test()" class="btn btn-info">提交</button>
                            <button type="button" class="btn btn-default float-right" onclick="history.go(-1)">返回</button>
                        </div>
                        <!-- /.card-footer -->
                    </form:form>
                    <!-- form end -->
                </div>
                <!-- /.card -->

            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /.content -->

    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <jsp:include page="../../includes/copyright.jsp"/>

</div>
<!-- ./wrapper -->
<jsp:include page="../../includes/footer.jsp"/>
<sys:modal/>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/wangeditor@latest/dist/wangEditor.min.js"></script>
<!-- 引入 wangEditor.min.js -->
<script type="text/javascript">
    const E = window.wangEditor
    const editor = new E('#div2')
    editor.config.uploadImgServer = '/chaptercontent/upload-img';
    editor.config.uploadFileName = 'editorFile';
    editor.create();
    function test(){
        const text=editor.txt.html();
        var formData = new FormData();
        var  id= $("#id").val();
        var  cid= $("#cid").val();
        var  nid= $("#nid").val();
        formData.append("id", id);
        formData.append("cid", cid);
        formData.append("nid", nid);
        formData.append("ccontent", text);
        $.ajax({
            url: '/chaptercontent/save',
            data : formData,
            processData : false,
            contentType : false,
            async : false,
            type: "post",
            datatype: "json",
            success:function (data){
                window.location.href="http://localhost:8888/chaptercontent/list";
            }
        });

    }
</script>
</body>
</html>




