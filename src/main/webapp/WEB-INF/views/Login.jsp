<%@include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="content">
	<div class="inner inner_500">
		<h2 class="page_name2">로그인</h2>
		<form action="login" method="post">
			<ul class="form_ul">
				<li><input type="text" name="id" placeholder="ID를 입력해주세요"></li>
				<li><input type="password" name="pw" placeholder="PW를 입력해주세요"></li>
				<li><input type="submit" value="LogIn" class="button fit"></li>
			</ul>
		</form>
	</div>
</section>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>