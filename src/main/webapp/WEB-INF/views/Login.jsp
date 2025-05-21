<%@include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="content join login">
	<div class="inner inner_500">
		<h2 class="page_name2">로그인</h2>
		<form action="login_do" method="post">
			<ul class="form_ul">
				<li>
					<span class="form_label">ID</span>
					<input type="text" name="id" placeholder="ID를 입력해주세요" class="ipt_tt" required>
				</li>
				<li>
					<span class="form_label">PW</span>
					<input type="password" name="pw" placeholder="PW를 입력해주세요" class="ipt_tt" required>
					<div class="chkbox_div">
						<input type="checkbox" name="id_save" id="id_save">
						<label for="id_save" class="chk_btn"></label>
						<label for="id_save" class="chk_txt">아이디 저장</label>
						<a href="" class="ml-auto">아이디/비밀번호 찾기</a>
					</div>						
				</li>
				<li>
					<input type="submit" value="LogIn" class="bttn bttn_sbm2">
				</li>
			</ul>
		</form>
	</div>
</section>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>