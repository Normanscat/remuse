<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/commons/taglibs.jsp"%>

<div class="edit-panel-header">
	<button type="button" class="close" data-dismiss="edit-panel"
		aria-label="Close">
		<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
	</button>
	<h4 class="edit-panel-title">专业技能</h4>
</div>
<div class="edit-panel-body">
	<div class="edit-panel-body row">
		<!-- 专业技能管理表单 -->
		<form id="skillForm" name="skill"
			<%-- action="${ctx }/skill/update" --%>
			method="post">
			<c:forEach var="skill" items="${skill }" varStatus="status">
				<div class="col-md-2">
					<div class="panel panel-default">
						<div class="panel-heading text-center">技能 ${status.count }</div>
						<div class="panel-body">
							<input type="hidden" name="id" value="${skill.id }">
							<div class="form-group">
								<input type="text" class="form-control validate[required]"
									name="name" value="${skill.name }" placeholder="名称...">
							</div>
							<div class="form-group">
								<input type="number"
									class="form-control validate[required] number" step="5"
									min="10" max="100" name="level" value="${skill.level }"
									placeholder="掌握程度...">
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="edit-panel-footer col-md-12">
				<button type="submit" class="btn btn-primary save-btn">
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
		closeeditPanel();

		$(".save-btn").on("click", function() {

			var skill = new Array();

			var id = $("input[type=hidden][name=id]");
			var name = $("input[type=text][name=name]");
			var level = $("input[type=number][name=level]");

			var names = new Array();
			var ids = new Array();
			var levels = new Array();
			var i = 0;
			var j = 0;
			var p = 0;
			name.each(function() {
				names[i] = $(this).val();
				i = i + 1;
			});
			id.each(function() {
				ids[j] = $(this).val();
				j = j + 1;
			});
			level.each(function() {
				levels[p] = $(this).val();
				p = p + 1;
			});

			var t = 0;
			do {
				skill.push({
					id : ids[t],
					name : names[t],
					level : levels[t]
				});
				t++;
			} while (t < ids.length)

			$.ajax({
				url : "${ctx }/skill/update",
				type : "post",
				contentType : 'application/json;charset=utf-8',
				dataType : "json",
				data : JSON.stringify(skill),
				success : function(data) {
				},
			})
			list();
		})
	})
</script>
