<%@page pageEncoding="utf-8" language="java" contentType="text/html;UTF-8" %>
<%@include file="/WEB-INF/view/jsp/springmvc/common/common.jsp" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- basic styles -->
        <link href="<%=springMvcBaseUrl%>/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="<%=springMvcBaseUrl%>/css/ace/font-awesome.min.css" />

        <!--[if IE 7]>
            <link rel="stylesheet" href="<%=springMvcBaseUrl%>/css/ace/font-awesome-ie7.min.css" />
        <![endif]-->

        <!-- ace styles -->
        <link rel="stylesheet" href="<%=springMvcBaseUrl%>/css/ace/ace.min.css" />
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="<%=springMvcBaseUrl%>/css/ace/ace-ie.min.css" />
        <![endif]-->

        <!-- ace settings handler -->
        <script src="<%=springMvcBaseUrl%>/js/ace/ace-extra.min.js"></script>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

        <!--[if lt IE 9]>
            <script src="<%=springMvcBaseUrl%>/js/ace/html5shiv.js"></script>
            <script src="<%=springMvcBaseUrl%>/js/ace/respond.min.js"></script>
        <![endif]-->


        <!--[if !IE]> -->

        <script type="text/javascript">
            window.jQuery || document.write("<script src='<%=springMvcBaseUrl%>/js/jquery/jquery-2.0.3.min.js'>"+"<"+"/script>");
        </script>

        <!-- <![endif]-->

        <!--[if IE]>
        <script type="text/javascript">
            window.jQuery || document.write("<script src='<%=springMvcBaseUrl%>/js/jquery/jquery-1.10.2.min.js'>"+"<"+"/script>");
        </script>
        <![endif]-->

        <script src="<%=springMvcBaseUrl%>/js/bootstrap/bootstrap.min.js"></script>
        <script src="<%=springMvcBaseUrl%>/js/ace/typeahead-bs2.min.js"></script>

        <!-- ace scripts -->
        <script src="<%=springMvcBaseUrl%>/js/ace/ace-elements.min.js"></script>
        <script src="<%=springMvcBaseUrl%>/js/ace/ace.min.js"></script>
    </head>
    <body>
        <div class="navbar navbar-default" id="navbar">
            <script type="text/javascript">
                try{ace.settings.check('navbar' , 'fixed')}catch(e){}
            </script>
            <tiles:insertAttribute name="header"/>
        </div>
        <div class="main-container" id="main-container">
            <script type="text/javascript">
                try{ace.settings.check('main-container' , 'fixed')}catch(e){}
            </script>
            <div class="main-container-inner">
                <a class="menu-toggler" id="menu-toggler" href="#">
                    <span class="menu-text"></span>
                </a>
                <div class="sidebar" id="sidebar">
                    <script type="text/javascript">
                        try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
                    </script>
                    <tiles:insertAttribute name="left"/>
                </div>
                <div class="main-content">
                    <tiles:insertAttribute name="content"/>
                </div>
            </div>
        </div>
    </body>
</html>