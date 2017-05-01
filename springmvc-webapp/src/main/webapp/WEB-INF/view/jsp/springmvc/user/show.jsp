<%@page pageEncoding="utf-8" language="java" contentType="text/html;UTF-8" %>
<%@include file="/WEB-INF/view/jsp/springmvc/common/common.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-content">
    <div class="page-header">
        <h1>
            Tables
            <small>
                <i class="icon-double-angle-right"></i>
                User &amp; Show User
            </small>
        </h1>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <c:choose>
                <c:when test="${null == user} || ${null == user.name}">
                    <div class="alert alert-danger">
                        <strong>用户信息不存在!</strong><a href="/user/list">返回用户列表</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name"> Username </div>

                            <div class="profile-info-value">
                                <span class="editable editable-click" id="name">${user.name}</span>
                            </div>
                        </div>

                        <div class="profile-info-row">
                            <div class="profile-info-name"> Sex </div>

                            <div class="profile-info-value">
                                <span class="editable editable-click" id="sex">${user.sex}</span>
                            </div>
                        </div>

                        <div class="profile-info-row">
                            <div class="profile-info-name"> Age </div>

                            <div class="profile-info-value">
                                <span class="editable editable-click" id="age">${user.age}</span>
                            </div>
                        </div>
                        <div class="center">
                            <a href="<%=springMvcBaseUrl%>/user/list" class="btn btn-sm btn-primary">
                                <span class="bigger-110">返回</span>
                                <i class="icon-on-right icon-arrow-left"></i>
                            </a>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>