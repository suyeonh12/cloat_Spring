<%@include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="content">
	<div class="page_top">
		<div class="inner">
			<h2 class="pageName">마이페이지</h2>
		</div>		
	</div>
	<div class="inner pdx">
		<div class="mypage">
			<div class="mp_nav">
				<div class="mp_profile">
					<div class="thumb">
						<img src="/resources/images/user.png" alt="">
					</div>
					<ul class="txt">
						<!-- 이름 -->
						<p>홍길동</p>
						<!-- 아이디 -->
						<small>test1234</small>
					</ul>
				</div>
				<ul class="mp_menu">
					<li>
						<a href="">내 갤러리</a>
					</li>					
					<li>
						<!-- 들어가면 후기/문의로 분기? -->
						<a href="">내 게시글</a>					
					</li>
					<li>
						<a href="">회원정보수정</a>
					</li>
				</ul>
			</div>
			<div class="mp_cont">
				<div class="no_content">
					<p>아직 클로킹한 이미지가 없습니다.</p>
				</div>
			</div>
		</div>
	</div>
</section>    
<%@include file="/WEB-INF/views/includes/footer.jsp" %>