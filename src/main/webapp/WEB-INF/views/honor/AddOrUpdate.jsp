<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>
<div class="modal fade in" tabindex="-1"
	style="display: block; padding-right: 17px;">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- 荣誉管理表单 -->
			<form id="honorForm" name="honor" action="${ctx }/honor/addorupdate"
				method="post">
				<input id="id" name="id" type="hidden" value="${honor.id }">
				<div class="modal-header">
					<button type="button" class="closeedit" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">荣誉&amp;证书</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="name" class="control-label">名称：</label> <input
									id="name" name="name" placeholder="..."
									class="form-control validate[required]" type="text"
									value="${honor.name }" maxlength="100" autofocus>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="brief" class="control-label">简介：</label>
						<textarea id="brief" name="description" maxlength="200"
							class="form-control validate[required]">${honor.description }</textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default cancel-btn"
						data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary save-btn">保存
					</button>
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
					$('#editPanel').load("${ctx }/honor/show");
					$('.addorupdate').hide();
					list();
				}
			})
		});
	})
</script>