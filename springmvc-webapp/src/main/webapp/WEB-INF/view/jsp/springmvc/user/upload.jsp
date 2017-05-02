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
                <input type="file" id="id-input-file-2" />
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
<script type="text/javascript">
    $(function () {
        $('#id-input-file-1 , #id-input-file-2').ace_file_input({
            no_file:'No File ...',
            btn_choose:'Choose',
            btn_change:'Change',
            droppable:false,
            onchange:null,
            thumbnail:false
        });
    });
</script>