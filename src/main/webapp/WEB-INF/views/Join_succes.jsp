<%@include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<section class="content">
		<div id="Update" class="inner inner_500">	
			<ul class="form_ul">
				<li><h1>환영합니다!</h1></li>
				<li><%=request.getParameter("name") %>님 회원가입을 축하합니다.</li>
				<!-- request영역에 저장된 회원정보 중 이메일을 출력하시오. -->
				<li><a href="/">시작하기</a></li>
			</ul>
		</div>			
	</section>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>