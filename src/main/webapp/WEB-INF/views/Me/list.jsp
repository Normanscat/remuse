<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html>
<div class="container">
	<h3 class="text-center">关于我</h3>
	<div class="strip text-center">
		<img src="images/about.png" alt=" " class="edit-btn"
			data-url="/me/edit" />
	</div>
	<c:forEach var="me" items="${me }" varStatus="status">
		<div class="container row">
			<div class="about-grids">
				<div class="col-md-4 ">
					<h4>姓名：${me.name }</h4>
				</div>
				<div class="col-md-4 ">
					<h4>性别：${me.gender }</h4>
				</div>
				<div class="col-md-4 ">
					<h4>生日：${me.birthday }</h4>
				</div>
			</div>
			<div class="about-grids">
				<div class="col-md-4 ">
					<h4>学历：${me.edu.name }</h4>
				</div>
				<div class="col-md-4 ">
					<h4>工作年限：${me.worktime }</h4>
				</div>
				<div class="col-md-4 ">
					<h4>工作状态：${me.workstate.name }</h4>
				</div>
			</div>
			<div class="about-grids">
				<div class="col-md-4 ">
					<h4>居住地：${me.address }</h4>
				</div>
				<div class="col-md-4 ">
					<h4>邮件：${me.email }</h4>
				</div>
				<div class="col-md-4 ">
					<h4>手机：${me.iphone }</h4>
				</div>
			</div>
		</div>
	</c:forEach>
</div>