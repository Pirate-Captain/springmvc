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
            <spring:form cssClass="form-horizontal" modelAttribute="user" method="post" role="form">
                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="name"> name： </label>

                    <div class="col-xs-12 col-sm-9">
                        <div class="clearfix">
                            <spring:input path="name" placeholder="name" id="name" cssClass="col-xs-12 col-sm-4"/>
                        </div>
                        <div class="help-block" style="color:#d16e6c;" for="name"><spring:errors path="name"/></div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="sex"> sex： </label>

                    <div class="col-xs-12 col-sm-9">
                        <div class="clearfix">
                            <spring:input path="sex" id="sex" placeholder="sex" cssClass="col-xs-12 col-sm-4"/>
                        </div>
                        <div class="help-block" style="color:#d16e6c;" for="sex"><spring:errors path="sex"/></div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="age"> age： </label>

                    <div class="col-xs-12 col-sm-9">
                        <div class="clearfix">
                            <spring:input path="age" id="age" placeholder="age" cssClass="col-xs-12 col-sm-4"/>
                        </div>
                        <div class="help-block" style="color:#d16e6c;" for="age"><spring:errors path="age"/></div>
                    </div>
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