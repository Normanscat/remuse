<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>
<div class="container">
	<div class="edu-info text-center">
		<h3>教育经历</h3>
	</div>
	<div class="strip text-center">
		<img src="images/edu.png" alt=" " class="edit-btn"
			data-url="/education/show">
	</div>
	<c:forEach var="education" items="${education }" varStatus="status">
		<div class="edu-grid">
			<div class="col-md-6 edu-grid-left">
				<h4>${education.time }</h4>
			</div>
			<div class="col-md-6 edu-grid-right">
				<h5>${education.school }</h5>
				<p>${education.description }</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</c:forEach>
</div>