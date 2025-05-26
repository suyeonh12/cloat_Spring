<%@include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<section class="content join">
		<div class="inner inner_500">
			<h2 class="page_name2">아이디/비밀번호 찾기</h2>
			<ul class="tabTit">
				<li onClick="tabOpen('findId')">아이디 찾기</li>
				<li onClick="tabOpen('findPw')">비밀번호 찾기</li>
			</ul>
			<div class="tabCont tabCont_id">
				<ul class="">
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
									<input type="text" name="phone" placeholder="연락처를 입력해주세요" class="ipt_tt" required>					
								</li>							
								<li>
									<input type="submit" value="아이디 찾기" class="bttn bttn_sbm2">
								</li>
							</ul>
						</form>
					</li>
					<li>
						<form action="" method="post">
							<ul class="form_ul">
								<li>
									<p>회원정보에 등록된 이메일로 찾기</p>
								</li>
								<li>
									<span class="form_label">이름</span>
									<input type="text" name="name" placeholder="이름을 입력해주세요" class="ipt_tt" required>
								</li>
								<li>
									<span class="form_label">이메일</span>
									<input type="text" name="email" placeholder="이메일을 입력해주세요" class="ipt_tt" required>					
								</li>							
								<li>
									<input type="submit" value="아이디 찾기" class="bttn bttn_sbm2">
								</li>
							</ul>
						</form>
					</li>
				</ul>			
			</div>
			<div class="tabCont tabCont_pw">
				<form action="" method="post">
					<ul class="form_ul">
						<li>
							<span class="form_label">아이디</span>
							<input type="text" name="id" placeholder="아이디를 입력해주세요" class="ipt_tt" required>
						</li>
						<li>
							<span class="form_label">이름</span>
							<input type="text" name="name" placeholder="이름을 입력해주세요" class="ipt_tt" required>
						</li>								
						<li>
							<span class="form_label">비밀번호 질문</span>
							<select name="pw_question" class="sel" required>
								<option value="비밀번호 질문 1" selected>비밀번호 질문 1</option>
								<option value="비밀번호 질문 2">비밀번호 질문 2</option>
								<option value="비밀번호 질문 3">비밀번호 질문 3</option>
								<option value="비밀번호 질문 4">비밀번호 질문 4</option>
							</select>					
						</li>	
						<li>
							<span class="form_label">비밀번호 답변</span>
							<input type="text" name="pw_answer" placeholder="비밀번호 답변을 입력해주세요" class="ipt_tt" required>					
						</li>														
						<li>
							<input type="submit" value="비밀번호 찾기" class="bttn bttn_sbm2">
						</li>
					</ul>
				</form>
			</div>
		</div>
	</section>
	
	<script>
	function tabOpen(tab){
		$('.'+tab)
	}
	</script>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>