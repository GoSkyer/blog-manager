<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Title</title>

    <script type="text/javascript" src="${ctx}/static/js/jquery-3.1.1.js"></script>

    <link rel="stylesheet" type="text/css" href="${ctx}/static/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/bootstrap/css/bootstrap-theme.css"/>
    <script type="text/javascript" src="${ctx}/static/bootstrap/js/bootstrap.js"></script>

</head>
<body style="background-color: #ac2925">

<div class="container" style="position: absolute;top:50%;left:50%;transform:translate(-50%, -50%);">

    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">博客管理系统</h3>
                </div>
                <div class="panel-body">

                    <form role="form" method="get">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="E-mail" name="el" type="email">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="pd" type="password">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input name="remember" type="checkbox" value="0">记住我
                                </label>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <button type="submit" href="index.html" value="" class="btn btn-lg btn-success btn-block">登录</button>
                        </fieldset>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
