<%@include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<section class="content join">
		<div class="inner inner_500">
			<h2 class="page_name2">아이디/비밀번호 찾기</h2>
			<ul class="tabTit">
				<li>아이디 찾기</li>
				<li>비밀번호 찾기</li>
			</ul>
			<ul class="tabCont">
				<li>
					<form action="" method="post">
						<ul class="form_ul">
							<li>
								<p>회원정보에 등록된 연락처로 찾기</p>
							</li>
							<li>
								<span class="form_label">이름</span>
								<input type="text" name="name" placeholder="이름을 입력해주세요" class="ipt_tt" required>
							</li>
							<li>
								<span class="form_label">연락처</span>
								<input type="text" name="pw" placeholder="01012345678" class="ipt_tt" required>					
							</li>							
							<li>
								<input type="submit" value="아이디 찾기" class="bttn bttn_sbm2">
							</li>
						</ul>
					</form>
				</li>
				<li>

				</li>
			</ul>
		</div>
	</section>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>