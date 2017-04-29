<%@page pageEncoding="utf-8" language="java" contentType="text/html;UTF-8" %>
<%
    String requestSchema = request.getScheme();
    String requestServerName = request.getServerName();
    int requestPort = request.getServerPort();
    String requestContext = request.getContextPath();

    //基本的url地址
    String springMvcBaseUrl = requestSchema + "://" + requestServerName + ":" + requestPort + requestContext;
%>