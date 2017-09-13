<%--
  Created by IntelliJ IDEA.
  User: wsylp
  Date: 2017/9/9
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link href="resources/bootstrap-3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resources/css/index.css" rel="stylesheet" />
    <script src="resources/js/jquery-3.2.1.min.js"></script>
    <script src="resources/bootstrap-3.7/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">博客之声</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页</a></li>
                <li><a href="#about">相关</a></li>
                <li><a href="#contact">联系</a></li>
                <li  class="dropdown ">
                    <a data-toggle="collapse" data-parent="#accordion"
                       href="#collapseOne">
                        音乐 <b class="caret"></b>
                    </a>
                </li>
            </ul>
        </div>
        <div>
            <ul id="collapseOne" class="panel-collapse collapse">
                <li><a href="#">排行榜</a></li>
                <li><a href="#">新歌榜</a></li>
            </ul>
        </div>
    </div>
</nav>

<script>
</script>

</body>
</html>
