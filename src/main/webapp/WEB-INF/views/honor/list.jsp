<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>
<div class="container">
	<div class="honor-info">
		<h3>荣誉&证书</h3>
	</div>
	<div class="strip text-center">
		<img src="images/honor.png" alt=" " class="edit-btn"
			data-url="/honor/show" />
	</div>
	<div class="honor-grids">
		<c:forEach var="honor" items="${honor }" varStatus="status">
			<div class="col-md-3 col-sm-6 honor-grid">
				<h3>${honor.name }</h3>
				<p>${honor.description }</p>
			</div>
		</c:forEach>
		<div class="clearfix"></div>
	</div>
</div>