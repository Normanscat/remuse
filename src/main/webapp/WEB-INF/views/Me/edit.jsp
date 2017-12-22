<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<div class="edit-panel-header">
	<button type="button" class="close" data-dismiss="edit-panel"
		aria-label="Close">
		<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
	</button>
	<h4 class="edit-panel-title">关于我</h4>
</div>
<c:forEach var="me" items="${me }" varStatus="status">
	<div class="edit-panel-body">
		<div class="edit-panel-body row">
			<form id="aboutMe" name="aboutMe" action="${ctx }/me/update"
				method="post">
				<input id="id" name="id" type="hidden" value="${me.id }">
				<div class="form-group col-md-4">
					<!-- 姓名 -->
					<label for="name">姓名：</label> <input id="name" name="name"
						placeholder="..." autofocus="autofocus" class="form-control"
						required="required" type="text" value="${me.name }"
						maxlength="100">
				</div>
				<div class="form-group col-md-4">
					<!-- 性别 -->
					<label>性别：</label>
					<div>
						<input name="genders" type="hidden" value="${me.gender }">
						<label class="radio-inline"> <input id="gender1"
							name="gender" type="radio" value="男"> 男
						</label> <label class="radio-inline"> <input id="gender2"
							name="gender" type="radio" value="女"> 女
						</label>
					</div>
				</div>
				<div class="form-group col-md-4 date">
					<!-- 生日 -->
					<label for="birthday">生日：</label> <input id="birthday"
						name="birthday" placeholder="..." class="form-control date-picker"
						required="required" readonly="readonly" type="text"
						data-language="zh" value="${me.birthday }" maxlength="100">
				</div>
				<div class="form-group col-md-4">
					<!-- 教育程度 -->
					<label for="educationDegreeId">学历：</label> <select
						id="educationDegreeId" name="edu.name" class="form-control">
						<c:forEach var="edu" items="${edu }">
							<option value="${edu.id }"
								<c:if test="${edu.name == me.edu.name }">selected</c:if>>${edu.name }</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group col-md-4">
					<!-- 工作年限 -->
					<label for="workingYears">工作年限：</label> <input id="workingYears"
						name="worktime" placeholder="..." class="form-control"
						required="required" type="text" value="${me.worktime }"
						maxlength="100">
				</div>
				<div class="form-group col-md-4">
					<!-- 工作状态 -->
					<label for="workingStatusId">工作状态：</label> <select
						id="workingStatusId" name="workstate.name" class="form-control">
						<c:forEach var="workstate" items="${workstate }">
							<option value="${workstate.id }"
								<c:if test="${workstate.name == me.workstate.name }">selected</c:if>>${workstate.name }</option>
						</c:forEach>

					</select>
				</div>
				<div class="form-group col-md-4">
					<!-- 居住地 -->
					<label for="residence">居住地：</label> <input id="residence"
						name="address" placeholder="..." class="form-control"
						required="required" type="text" value="${me.address }"
						maxlength="200">
				</div>
				<div class="form-group col-md-4">
					<!-- 邮件 -->
					<label for="email">邮件：</label> <input id="email" name="email"
						placeholder="..." class="form-control" required="required"
						type="text" value="${me.email }" maxlength="100">
				</div>
				<div class="form-group col-md-4">
					<!-- 手机 -->
					<label for="mobile">手机：</label> <input id="mobile" name="iphone"
						placeholder="..." class="form-control" required="required"
						type="text" value="${me.iphone }" maxlength="50">
				</div>
				<div class="form-group col-md-12">
					<!-- 人生格言 -->
					<label for="motto">人生格言：</label> <input id="motto" name="life"
						placeholder="..." class="form-control" required="required"
						type="text" value="${me.life }" maxlength="300">
				</div>
				<div class="edit-panel-footer col-md-12">
					<!-- 保存 -->
					<button type="button" class="btn btn-primary save-btn">
						<i class="fa fa-floppy-o"></i> 保存
					</button>
					<!-- 取消 -->
					<button type="button" class="btn btn-default cancel-btn">
						<i class="fa fa-times"></i> 取消
					</button>
				</div>
			</form>
		</div>
	</div>
</c:forEach>
<script>
	$(function() {
		//初始化日期生日选择
		$("#birthday").datepicker({
			dateFormat : "yyyy-mm-dd",
			autoClose : true
		});

		//
		var gender = $("input[name=genders][type=hidden]").val();

		$("input[type=radio][value='" + gender + "']").prop("checked",true);

		//ajaxform表单提交
		formsubmit();

		//关闭编辑窗口
		closeeditPanel();
	})
</script>

