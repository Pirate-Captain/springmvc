<%@page pageEncoding="utf-8" language="java" contentType="text/html;UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/jsp/springmvc/common/common.jsp" %>
<div class="page-content">
    <div class="page-header">
        <h1>
            Tables
            <small>
                <i class="icon-double-angle-right"></i>
                Static &amp; Dynamic Tables
            </small>
        </h1>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="row">
                <div class="col-xs-12">
                    <div class="table-responsive">
                        <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Sex</th>
                                    <th class="hidden-480">Age</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${user}" var="userVar">
                                    <tr>
                                        <td>${userVar.value.name}</td>
                                        <td class="center">${userVar.value.sex}</td>
                                        <td class="center">${userVar.value.age}</td>
                                        <td>
                                            <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                                                <a class="blue" href="<%=springMvcBaseUrl%>/user/${userVar.value.name}">
                                                    <i class="icon-zoom-in bigger-130"></i>
                                                </a>

                                                <a class="green" href="<%=springMvcBaseUrl%>/user/${userVar.value.name}/update">
                                                    <i class="icon-pencil bigger-130"></i>
                                                </a>

                                                <a class="red" href="<%=springMvcBaseUrl%>/user/delete/${userVar.value.name}">
                                                    <i class="icon-trash bigger-130"></i>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="center">
                        <a href="<%=springMvcBaseUrl%>/user/add" class="btn btn-sm btn-primary">
                            <span class="bigger-110">添加</span>
                        </a>
                        <a href="<%=springMvcBaseUrl%>/user/upload" class="btn btn-sm btn-primary">
                            <span class="bigger-110">上传</span>
                        </a>
                        <a href="<%=springMvcBaseUrl%>/user/mupload" class="btn btn-sm btn-primary">
                            <span class="bigger-110">多个上传</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>