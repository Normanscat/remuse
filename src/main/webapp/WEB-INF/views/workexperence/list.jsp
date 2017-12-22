<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>
<div class="container">
	<div class="work-info">
		<h3>工作经验</h3>
	</div>
	<div class="strip text-center">
		<img src="images/work.png" alt=" " class="edit-btn"
			data-url="/workexperence/show" />
	</div>
	<div class="work-grids">
		<c:forEach var="workExoerience" items="${workExoerience }"
			varStatus="status">
			<div class="col-md-4 w-grid">
				<div class="work-grid">
					<h3>${workExoerience.time }</h3>
					<div class="work-grid-info">
						<h4>${workExoerience.title }</h4>
						<p>${workExoerience.description }</p>
					</div>
				</div>
			</div>
		</c:forEach>
		<div class="clearfix"></div>
	</div>
</div>