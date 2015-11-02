<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<c:if test="${crudMode == 1}">
	<button type="submit" class="btn" name="list"
		value="<la:message key="labels.crud_button_back" />">
		<la:message key="labels.crud_button_back" />
	</button>
	<button type="submit" class="btn btn-success" name="create"
		value="<la:message key="labels.crud_button_create" />">
		<la:message key="labels.crud_button_create" />
	</button>
</c:if>
<c:if test="${crudMode == 2}">
	<button type="submit" class="btn" name="edit" value="back">
		<la:message key="labels.crud_button_back" />
	</button>
	<button type="submit" class="btn btn-warning" name="update"
		value="<la:message key="labels.crud_button_update" />">
		<la:message key="labels.crud_button_update" />
	</button>
</c:if>
<c:if test="${crudMode == 4}">
	<button type="submit" class="btn" name="list" value="back">
		<la:message key="labels.crud_button_back" />
	</button>
	<button type="submit" class="btn btn-warning" name="edit"
		value="<la:message key="labels.crud_button_edit" />">
		<la:message key="labels.crud_button_edit" />
	</button>
	<button type="button" class="btn btn-danger" name="delete"
		data-toggle="modal" data-target="#confirmToDelete"
		value="<la:message key="labels.crud_button_delete" />">
		<la:message key="labels.crud_button_delete" />
	</button>
	<div class="modal modal-danger fade" id="confirmToDelete" tabindex="-1"
		role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title">
						<la:message key="labels.crud_title_delete" />
					</h4>
				</div>
				<div class="modal-body">
					<p>
						<la:message key="labels.crud_delete_confirmation" />
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline pull-left"
						data-dismiss="modal">
						<la:message key="labels.crud_button_cancel" />
					</button>
					<button type="submit" class="btn btn-outline btn-danger"
						name="delete"
						value="<la:message key="labels.crud_button_delete" />">
						<la:message key="labels.crud_button_delete" />
					</button>
				</div>
			</div>
		</div>
	</div>
</c:if>