<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>

<div class="container">
	<h3>专业技能</h3>
	<div class="strip text-center">
		<img src="images/skill.png" alt=" " class="edit-btn"
			data-url="/skill/edit" />
	</div>
	<div class="skill-grids">
		<c:forEach var="skill" items="${skill }" varStatus="status">
			<div class="col-md-2 col-sm-4 col-xs-6 skills-grid text-center">
				<div class="circle" id="circles-${status.count-1 }" data-level="${skill.level }"></div>
				<p>${skill.name }</p>
			</div>
		</c:forEach>
		<div class="clearfix"></div>
	</div>
</div>
<script type="text/javascript">
	//基于SVG的轻量级js圆形进度条插件
	$('#skills .circle').each(function(index, el) {
		var percentage = $(this).data('level');
		Circles.create({
			id : 'circles-' + index,
			percentage : percentage,
			radius : 80,
			width : 10,
			number : percentage / 1,
			text : '%',
			colors : [ '#ffffff', '#a2e0aa' ]
		});
	});
</script>
