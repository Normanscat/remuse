<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE htmt>
<div class="container">
	<h3>爱好</h3>
	<div class="strip text-center">
		<img src="images/pro.png" alt=" " class="edit-btn"
			data-url="/hobby/show" />
	</div>
	<div class="hobby-girds">
		<c:forEach var="hobby" items="${hobby }" varStatus="status">
			<div class="col-md-2 col-sm-4 col-xs-6 hobby-pad">
				<div class="hobby-gird">
					<div class="hobby-image-${status.count-1 }"></div>
					<p>${hobby.name }</p>
				</div>
			</div>
		</c:forEach>
		<div class="clearfix"></div>
	</div>
</div>
