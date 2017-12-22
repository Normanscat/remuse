<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>
<div class="modal fade in" tabindex="-1"
	style="display: block; padding-right: 17px;">
	<div class="modal-dialog">
		<div class="modal-content">
			<form id="experienceForm" name="experience"
				action="${ctx }/workexperence/addorupdate" method="post">
				<div class="modal-header">
					<button type="button" class="closeedit" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">工作经验</h4>
				</div>
				<input id="id" name="id" type="hidden" value="${workexperence.id }">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="period" class="control-label">日期：</label> <input
									id="period" name="time" placeholder="..."
									class="form-control validate[required]" type="text"
									value="${workexperence.time }" maxlength="100">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="control-label">标题：</label> <input
							id="title" name="title" placeholder="..."
							class="form-control validate[required]" type="text"
							value="${workexperence.title }" maxlength="100">
					</div>
					<div class="form-group">
						<label for="brief" class="control-label">简介：</label>
						<textarea id="brief" name="description" maxlength="200"
							class="form-control validate[required]">${workexperence.description }</textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default cancel-btn"
						data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary save-btn">保存</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
	$(function() {

		hideAndSumbit();

		$("form").on("submit", function(e) {
			e.preventDefault();
			var $this = $(this);
			// jquery-form的异步提交方式
			$this.ajaxSubmit({
				beforeSubmit : function(data) {
				},
				success : function() {
					$('#editPanel').load("${ctx }/workexperence/show");
					$('.addorupdate').hide();
					list();
				}
			})
		});
	})
</script>