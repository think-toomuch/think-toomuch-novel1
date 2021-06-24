<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/8
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sys" tagdir="/WEB-INF/tags/sys" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>我的小说 | 小说管理</title>
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
                        <h1 class="m-0">小说管理</h1>
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
                        <h3 class="card-title">${novel.id==null?"新增":"编辑"}小说</h3>
                    </div>

                    <c:if test="${baseResult!=null}">
                        <div class="alert alert-${baseResult.status==200? "success":"danger"} alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                ${baseResult.message}
                        </div>
                    </c:if>

                    <!-- /.card-header -->
                    <form:form id="inputForm" cssClass="form-horizontal" action="/novel/save" method="post" modelAttribute="novel">
                        <form:hidden path="id"/>
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
                                <label for="nname" class="col-sm-2 col-form-label">小说名</label>
                                <div class="col-sm-10">
                                    <form:input path="nname" type="text" cssClass="form-control" placeholder="请输入小说名"/>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="ntype" class="col-sm-2 col-form-label">分类</label>
                                <div class="col-sm-10">
                                    <!-- select -->
                                    <div class="form-group">
                                        <from:select class="form-control singleSelect" placeholder="请选择分类名字" path="ntype">
                                            <c:forEach items="${novelTypes}" var="novelType">
                                             <form:option value="${novelType.ntype}">${novelType.ntype}</form:option>
                                            </c:forEach>
                                        </from:select>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="nauthor" class="col-sm-2 col-form-label">作者</label>
                                <div class="col-sm-10">
                                    <form:input path="nauthor" type="text" cssClass="form-control" placeholder="请输入小说作者"/>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="description" class="col-sm-2 col-form-label">描述</label>
                                <div class="col-sm-10">
                                    <form:textarea path="description" type="text" cssClass="form-control" placeholder="请输入对小说的描述"/>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">
                            <div class="form-group row">
                                <label for="nphoto" class="col-sm-2 col-form-label">小说封面</label>

                                <div class="col-sm-10">
                                    <img src="${novel.nphoto}" id="nimg" style="width: 200px;height:200px;object-fit:cover;">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="photoFile" name="photoFile"/>
                                        <label class="custom-file-label" for="photoFile">选择要上传的图片</label>
                                    </div>
                                    <form:input path="nphoto" type="text" readonly="true" cssClass="form-control" placeholder="上传小说封面"/>
                                    <button type="button"  class="btn btn-info" onclick="uploadFile('/novel/upload');">上传图片</button>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">
                            <button type="submit" class="btn btn-info">提交</button>
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
</body>
<!-- bs-custom-file-input -->
<script src="../../../static/assets/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="../../../static/assets/select/js/select2.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {//加载页面时执行select2
        $('.singleSelect').select2();
    });
</script>
<script>
    $(function () {
        bsCustomFileInput.init();
    });
    //图片校验上传
    const uploadFile=function (url) {
        var file = $("#photoFile").val();
        file = file.substring(file.lastIndexOf('.'), file.length);
        //确定按钮事件绑定为隐藏模态框
        $("#btnModalOk").bind("click",function () {
            $("#modal-default").modal("hide");
        });
        if (file == '') {
            $("#modal-message").html("上传文件不能为空！");
            $("#modal-default").modal("show");
        } else if (file != '.jpg' && file != '.png'&& file != '.jpeg') {
            $("#modal-message").html("请选择正确的图片类型文件！");
            $("#modal-default").modal("show");
        } else {
            ajaxFileUpload(url);
        }

    }
    const ajaxFileUpload=function (url) {
        var formData = new FormData();
        formData.append("photoFile", $("#photoFile")[0].files[0]);
        $.ajax({
            url : url,
            type : "POST",
            async : false,
            data : formData,
            processData : false,
            contentType : false,
            dataType : "json",
            success : function(data) {
                if (data.status == "200") {
                    $("#modal-message").html("上传成功");
                    $("#modal-default").modal("show");
                    //图片回显并将新的链接填入框中
                    $("#nimg").attr("src",data.message);
                    $("#nphoto").val(data.message);
                } else {
                    $("#modal-message").html("上传失败1");
                    $("#modal-default").modal("show");
                }
            },
            error : function(data){
                $("#modal-message").html("上传失败2");
                $("#modal-default").modal("show");
            }
        });
    }
</script>
</html>



