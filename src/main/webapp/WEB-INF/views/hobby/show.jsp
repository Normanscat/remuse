<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>
<style>
.panel-default>.panel-heading {
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

.panel-default {
	border-color: #bce8f1;
}
</style>
<div class="edit-panel-header">
	<button type="button" class="close" data-dismiss="edit-panel"
		aria-label="Close">
		<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
	</button>
	<h4 class="edit-panel-title">爱好</h4>
</div>
<div class="edit-panel-body">
	<div class="edit-panel-body row">
		<!-- 爱好管理表单 -->
		<form id="hobbyForm" name="hobbby" action="${ctx }/hobby/update"
			method="post">
			<c:forEach var="hobby" items="${hobby }" varStatus="status">
				<div class="col-md-2">
					<div class="panel panel-default">
						<div class="panel-heading text-center">爱好 ${status.count }</div>
						<div class="panel-body">
							<input type="hidden" name="id" class="id" value="${hobby.id }">
							<div class="form-group">
								<div class="hobby-imagea"></div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<input type="text" class="form-control validate[required]"
										name="name" value="${hobby.name }" placeholder="名称...">
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="edit-panel-footer col-md-12">
				<button type="button" class="btn btn-primary save-btn" id="save"
					data-url="${ctx }/hobby/update">
					<i class="fa fa-floppy-o"></i> 保存
				</button>
				<button type="button" class="btn btn-default cancel-btn">
					<i class="fa fa-times"></i> 取消
				</button>
			</div>
		</form>
	</div>
</div>
<script>
	$(function() {

		$("#save").on("click", function() {
			var $this = $(this);
			var url = $this.data("url");
			var name = $("input[type=text][name=name]");
			var id = $("input[type=hidden][name=id]");
			var names = new Array();
			var ids = new Array();
			var i = 0;
			var j = 0;
			name.each(function() {
				names[i] = $(this).val();
				i = i + 1;
			});
			id.each(function() {
				ids[j] = $(this).val();
				j = j + 1;
			});
			$("#hobby").load(url, {
				names : names,
				ids : ids 
			});
			list();
		})

		//关闭编辑窗口
		closeeditPanel();
	})
</script>
