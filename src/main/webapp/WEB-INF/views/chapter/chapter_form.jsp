<%--
  Created by IntelliJ IDEA.
  User: l1957
  Date: 2021/6/10
  Time: 12:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sys" tagdir="/WEB-INF/tags/sys" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>我的小说 | 章节管理</title>
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
                    <form:form id="inputForm" cssClass="form-horizontal" action="/chapter/save" method="post" modelAttribute="chapter">
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
                                <label for="cname" class="col-sm-2 col-form-label">章节</label>
                                <div class="col-sm-10">
                                    <form:input path="cname" type="text" cssClass="form-control" placeholder="请输入章节名"/>
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
<script src="../../../static/assets/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="../../../static/assets/select/js/select2.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {//加载页面时执行select2
        $('.singleSelect').select2();
    });
</script>
</body>
</html>



