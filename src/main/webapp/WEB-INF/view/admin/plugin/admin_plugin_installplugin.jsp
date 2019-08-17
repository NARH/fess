<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><la:message key="labels.admin_brand_title" /> | <la:message
            key="labels.plugin_install_title" /></title>
    <jsp:include page="/WEB-INF/view/common/admin/head.jsp"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="/WEB-INF/view/common/admin/header.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/view/common/admin/sidebar.jsp">
        <jsp:param name="menuCategoryType" value="system" />
        <jsp:param name="menuType" value="plugin" />
    </jsp:include>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                <la:message key="labels.plugin_install_title" />
            </h1>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <la:info id="msg" message="true">
                        <div class="alert alert-info">${msg}</div>
                    </la:info>
                    <la:errors property="_global" />
                </div>
                <div class="col-md-6">
                    <div class="box box-primary">
                        <la:form action="/admin/plugin/">
                            <div class="box-header with-border">
                                <h3 class="box-title">
                                    <la:message key="labels.plugin_install" />
                                </h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="form-group">
                                    <la:errors property="selectedArtifact" />
                                    <la:select styleId="TODO" property="selectedArtifact" styleClass="form-control">
                                        <c:forEach var="item" varStatus="s"
                                                   items="${availableArtifactItems}">
                                            <la:option value="${f:h(item.name)}|${f:h(item.version)}|${f:h(item.url)}">${f:h(item.name)}-${f:h(item.version)}</la:option>
                                        </c:forEach>
                                    </la:select>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" class="btn btn-default"
                                        name="back"
                                        value="<la:message key="labels.crud_button_back" />">
                                    <em class="fa fa-arrow-circle-left"></em>
                                    <la:message key="labels.crud_button_back" />
                                </button>
                                <button type="submit" class="btn btn-warning"
                                        name="install"
                                        value="<la:message key="labels.crud_button_install" />">
                                    <em class="fa fa-plus"></em>
                                    <la:message key="labels.crud_button_install" />
                                </button>
                            </div>
                            <!-- /.box-footer -->
                        </la:form>
                    </div>
                        <!-- /.box -->
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="/WEB-INF/view/common/admin/footer.jsp"></jsp:include>
</div>
<jsp:include page="/WEB-INF/view/common/admin/foot.jsp"></jsp:include>
</body>
</html>
