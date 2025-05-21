<%@include file="/WEB-INF/views/includes/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section class="content join">
	<div class="inner inner_500">
		<h2 class="page_name2">회원가입</h2>
		<form action="join_us" method="post">
			<ul class="form_ul">
				<li>
					<small class="s_info c_red">* 필수입력</small>
					<!-- 기본 회원등급 value 값으로 지정 ? -->
					<input type="hidden" name="user_type" value="2" placeholder="">
					<span class="form_label">ID</span>
					<input id="inputid" type="text" name="id" placeholder="ID를 입력하세요" class="ipt_tt" required>
					<span id="idCheckMsg"></span>
				</li>
				<li>
					<span class="form_label">PW</span>
					<input type="password" name="pw" placeholder="영문/숫자/특수문자 조합 8자 이상" class="ipt_tt" required>
				</li>
				<li>
					<span class="form_label">이름</span>
					<input type="text" name="name" placeholder="이름을 입력하세요" class="ipt_tt" required>
				</li>
				<li>
					<small class="s_info c_main">* 선택입력</small>
					<span class="form_label">이메일</span>
					<input type="text" name="email" placeholder="이메일을 입력하세요" class="ipt_tt">
				</li>
				<li>
					<span class="form_label">연락처</span>
					<input type="text" name="phone" placeholder="전화번호를 입력하세요" class="ipt_tt">
				</li>
				<li class="profile">
					<span class="form_label">프로필 이미지 등록</span>
					<div class="filebox preview-image">
						<label for="profile_img" class="label_hidden"></label>
						<div class="upload-display">
							<img src="${pageContext.request.contextPath}/resources/images/user.png" alt="">
						</div>
						<input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">
						<input type="file" id="profile_img" class="upload-hidden">
					</div>						
				</li>	
				<li>
					<input type="submit" value="회원가입" class="bttn bttn_sbm2">
				</li>	
			</ul>	
		</form>		
	</div>
</section>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>