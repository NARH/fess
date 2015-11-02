<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><la:message key="labels.admin_brand_title" /> | <la:message
		key="labels.web_authentication_configuration" /></title>
<jsp:include page="/WEB-INF/view/common/admin/head.jsp"></jsp:include>
</head>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="/WEB-INF/view/common/admin/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/common/admin/sidebar.jsp">
			<jsp:param name="menuCategoryType" value="crawl" />
			<jsp:param name="menuType" value="webAuthentication" />
		</jsp:include>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					<la:message key="labels.web_authentication_title_details" />
				</h1>
				<jsp:include page="/WEB-INF/view/common/admin/crud/breadcrumb.jsp"></jsp:include>
			</section>
			<section class="content">
				<la:form styleClass="form-horizontal">
					<la:hidden property="crudMode" />
					<c:if test="${crudMode==2}">
						<la:hidden property="id" />
						<la:hidden property="versionNo" />
					</c:if>
					<la:hidden property="createdBy" />
					<la:hidden property="createdTime" />
					<div class="row">
						<div class="col-md-12">
							<div
								class="box <c:if test="${crudMode == 1}">box-success</c:if><c:if test="${crudMode == 2}">box-warning</c:if>">
								<%-- Box Header --%>
								<div class="box-header with-border">
									<jsp:include page="/WEB-INF/view/common/admin/crud/header.jsp"></jsp:include>
								</div>
								<%-- Box Body --%>
								<div class="box-body">
									<%-- Message --%>
									<div>
										<la:info id="msg" message="true">
											<div class="alert alert-info">${msg}</div>
										</la:info>
										<la:errors />
									</div>
									<%-- Form Fields --%>
									<div class="form-group">
										<label for="hostname" class="col-sm-3 control-label"><la:message
												key="labels.web_authentication_hostname" /></label>
										<div class="col-sm-9">
											<la:text property="hostname" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="port" class="col-sm-3 control-label"><la:message
												key="labels.web_authentication_port" /></label>
										<div class="col-sm-9">
											<la:text property="port" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="authRealm" class="col-sm-3 control-label"><la:message
												key="labels.web_authentication_realm" /></label>
										<div class="col-sm-9">
											<la:text property="authRealm" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="protocolScheme" class="col-sm-3 control-label"><la:message
												key="labels.web_authentication_scheme" /></label>
										<div class="col-sm-9">
											<la:select property="protocolScheme"
												styleClass="form-control">
												<c:forEach var="item" items="${protocolSchemeItems}">
													<la:option value="${f:u(item.value)}">${f:h(item.label)}</la:option>
												</c:forEach>
											</la:select>
										</div>
									</div>
									<div class="form-group">
										<label for="username" class="col-sm-3 control-label"><la:message
												key="labels.web_authentication_username" /></label>
										<div class="col-sm-9">
											<la:text property="username" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="password" class="col-sm-3 control-label"><la:message
												key="labels.web_authentication_password" /></label>
										<div class="col-sm-9">
											<la:password property="password" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="parameters" class="col-sm-3 control-label"><la:message
												key="labels.web_authentication_parameters" /></label>
										<div class="col-sm-9">
											<la:textarea property="parameters" styleClass="form-control"
												rows="5" />
										</div>
									</div>
									<div class="form-group">
										<label for="webConfigId" class="col-sm-3 control-label"><la:message
												key="labels.web_authentication_web_crawling_config" /></label>
										<div class="col-sm-9">
											<la:select property="webConfigId" styleClass="form-control">
												<c:forEach var="item" items="${webConfigItems}">
													<la:option value="${f:u(item.value)}">${f:h(item.label)}</la:option>
												</c:forEach>
											</la:select>
										</div>
									</div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<jsp:include page="/WEB-INF/view/common/admin/crud/buttons.jsp"></jsp:include>
								</div>
								<!-- /.box-footer -->
							</div>
							<!-- /.box -->
						</div>
					</div>
				</la:form>
			</section>
		</div>
		<jsp:include page="/WEB-INF/view/common/admin/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="/WEB-INF/view/common/admin/foot.jsp"></jsp:include>
</body>
</html>
