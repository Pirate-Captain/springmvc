<%@page pageEncoding="utf-8" language="java" contentType="text/html;UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<div class="page-content">
    <div class="page-header">
        <h1>
            Tables
            <small>
                <i class="icon-double-angle-right"></i>
                User &amp; Add User
            </small>
        </h1>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <spring:form cssClass="form-horizontal" modelAttribute="user" method="post" role="form" enctype="multipart/form-data">
                <div class="ace-file-input">
                    <input id="id-input-file-2" name="attach" type="file">
                    <label class="file-label" data-title="Choose">
                        <span class="file-name" data-title="No File ...">
                            <i class="icon-upload-alt"></i>
                        </span>
                    </label>
                    <a class="remove" href="#"><i class="icon-remove"></i></a>
                </div>
                <div class="clearfix form-actions">
                    <div class="col-md-offset-3 col-md-9">
                        <spring:button class="btn btn-info">
                            <i class="icon-ok bigger-110"></i>Submit
                        </spring:button>
                    </div>
                </div>
            </spring:form>
        </div>
    </div>
</div>