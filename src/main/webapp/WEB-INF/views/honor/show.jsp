<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>
<div class="addorupdate" style="display: none"></div>
<div class="edit-panel-header">
	<button type="button" class="close" data-dismiss="edit-panel"
		aria-label="Close">
		<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
	</button>
	<h4 class="edit-panel-title">荣誉证书</h4>
</div>
<div class="edit-panel-body">
	<div class="edit-panel-body row">
		<!-- 荣誉管理页面 -->
		<div id="honorMainPanel" class="form-group col-md-12">
			<!-- 保存当前页数（第几页） -->
			<input type="hidden" class="current-page" value="1">
			<!-- 新增教育经历按钮 -->
			<a class="btn btn-success btn-sm" data-url="/honor/add"> <i
				class="fa fa-plus"></i> 新增
			</a>
			<div id="honorList">
				<!-- 列表显示所有荣誉数据 -->
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>名称</th>
							<th>简介</th>
							<th width="10%">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="honor" items="${honor }" varStatus="status">
							<tr>
								<th scope="row">${status.count }</th>
								<td style="display: none" class="id">${honor.id }</td>
								<td>${honor.name }</td>
								<td>${honor.description }</td>
								<td>
									<button type="button" class="btn btn-primary btn-xs edit"
										data-url="/honor/edit" data-id="${honor.id }">
										<i class="fa fa-pencil fa-fw"></i> 编辑
									</button>
									<button type="button" class="btn btn-danger btn-xs delete"
										data-url="/honor/delete" data-id="${honor.id }">
										<i class="fa fa-trash-o fa-fw"></i> 删除
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {

		addorupdate();

		remove();
	})
</script>

