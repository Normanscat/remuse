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
	<h4 class="edit-panel-title">教育经历</h4>
</div>
<div class="edit-panel-body">
	<div class="edit-panel-body row">
		<!-- 教育经历管理页面 -->
		<div id="educationMainPanel" class="form-group col-md-12">
			<!-- 保存当前页数（第几页） -->
			<input type="hidden" class="current-page" value="1">
			<!-- 新增教育经历按钮 -->
			<a class="btn btn-success btn-sm" data-url="/education/add"> <i
				class="fa fa-plus"></i> 新增
			</a>
			<div id="educationList">
				<!-- 教育经历数据列表 -->
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>日期</th>
							<th>标题</th>
							<th>简介</th>
							<th width="10%">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="education" items="${education }"
							varStatus="status">
							<tr>
								<th scope="row">${status.count }</th>
								<td>${education.time }</td>
								<td>${education.school }</td>
								<td>${education.description }</td>
								<td>
									<button type="button" class="btn btn-primary btn-xs edit"
										data-url="/education/edit" data-id="${education.id }">
										<i class="fa fa-pencil fa-fw"></i> 编辑
									</button>
									<button type="button" class="btn btn-danger btn-xs delete"
										data-url="/education/delete" data-id="${education.id }">
										<i class="fa fa-trash-o fa-fw"></i> 删除
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- 数据分页区 -->
			<div class="pagination-wrapper">
				<div class="inner clearfix">
					<section id="main-content">
						<div class="text-center">
							<ul class="pagination-control pagination">
								<li class="first disabled"><a href="#">首页</a></li>
								<li class="prev disabled"><a href="#">上一页</a></li>
								<li class="page active" data-index="1" data-url="${ctx }/education/page"><a>1</a></li>
								<li class="page active" data-index="2" data-url="${ctx }/education/page"><a>2</a></li>
								<li class="page active"><a href="#">3</a></li>
								<li class="next"><a href="#">下一页</a></li>
								<li class="last"><a href="#">尾页</a></li>
							</ul>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {

		addorupdate();

		remove();
		
		$(".active").on("click",function(){
			var $this=$(this);
			var id =$this.data("index");
			var url=$this.data("url");
			alert(id+url)
			$("#educationList").load(url,{
				index : id
			})
		})
	})
</script>