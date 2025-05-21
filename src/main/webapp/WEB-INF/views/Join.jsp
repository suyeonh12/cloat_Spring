<%@include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="content join">
	<div class="inner inner_500">
		<h2 class="page_name2">회원가입</h2>
		<form action="join_us" method="post" enctype="multipart/form-data">
			<ul class="form_ul">
				<li>
					<small class="s_info c_red">* 필수</small>
					<div class="agree_box">
						<div class="agree_top">
							<div class="chkbox_div">
								<input type="checkbox" name="chk_1" id="chk_1" required>
								<label for="chk_1" class="chk_btn"></label>
								<label for="chk_1" class="chk_txt">이용약관 동의 <span class="c_main">(필수)</span></label>
							</div>
							<div class="view_term" onClick="viewTerms(this)">
								<span>약관 보기</span>
								<img src="resources/images/play_arrow.svg">
							</div>						
						</div>
						<div class="agree_txt">
							<!-- 이용약관 파일 가져오기 -->
							<jsp:include page="/WEB-INF/views/includes/terms_of_use.jsp" />							
						</div>
					</div>
					<div class="agree_box">
						<div class="agree_top">
							<div class="chkbox_div">
								<input type="checkbox" name="chk_2" id="chk_2" required>
								<label for="chk_2" class="chk_btn"></label>
								<label for="chk_2" class="chk_txt">개인정보처리방침 동의 <span class="c_main">(필수)</span></label>
							</div>
							<div class="view_term" onClick="viewTerms(this)">
								<span>약관 보기</span>
								<img src="resources/images/play_arrow.svg">
							</div>						
						</div>							
						<div class="agree_txt">
							<!-- 개인정보처리방침 파일 가져오기 -->		
							<jsp:include page="/WEB-INF/views/includes/privacy_policy.jsp" />												
						</div>
					</div>
				</li>			
				<li>
					<input type="hidden" name="user_type" value="NORMAL" placeholder="">
					<span class="form_label">아이디</span>
					<input id="inputId" type="text" name="id" placeholder="ID를 입력하세요" class="ipt_tt" required>
					<small id="idCheckMsg"></small>
				</li>
				<li>
					<span class="form_label">비밀번호</span>
					<input id="inputPw" type="password" name="pw" placeholder="영문/숫자/특수문자 조합 8자 이상" class="ipt_tt" required>
					<small id="pwCheckMsg"></small>
				</li>
				<li>
					<span class="form_label">비밀번호 확인</span>
					<input id="inputPwChk" type="password" placeholder="비밀번호를 다시 한 번 입력해주세요" class="ipt_tt">
					<small id="pwMatchMsg"></small>
				</li>				
				<li>
					<span class="form_label">이름</span>
					<input type="text" name="name" placeholder="이름을 입력하세요" class="ipt_tt" required>
				</li>
				<li>
					<span class="form_label">이메일</span>
					<input type="text" name="email" placeholder="이메일을 입력하세요" class="ipt_tt">
				</li>
				<li>
					<span class="form_label">연락처</span>
					<input type="text" name="phone" placeholder="전화번호를 입력하세요" class="ipt_tt">
				</li>
				<li class="profile">
					<small class="s_info c_main">* 선택</small>
					<span class="form_label">프로필 이미지 등록</span>
					<div class="filebox preview-image">
						<label for="profile_img" class="label_hidden"></label>
						<div class="upload-display">
							<img src="resources/images/user.png" alt="">
						</div>
						<input class="upload-name" value="파일선택" disabled="disabled">
						<input type="file" name="file" id="profile_img" class="upload-hidden" accept="image/*">
					</div>
				</li>								
				<li>
					<input type="submit" value="JoinUs" class="bttn bttn_sbm2">
				</li>	
			</ul>	
		</form>		
	</div>
</section>		
<script>
function viewTerms(el){
	$(el).closest(".agree_box").toggleClass("on");
}

$(document).ready(function() {
	
	//비밀번호 유효성 체크
	$("#inputPw").on("keyup", function() {
		var pw = $("#inputPw").val();
		var num = pw.search(/[0-9]/g);
		var eng = pw.search(/[a-z]/ig);
		var spe = pw.search(/[!@#$%^&*(),.?":{}|<>]/g); // 특수문자 재정비
		var msg = "";
		
		if(pw.length < 8 || pw.length > 20){
			msg = "8~20자리 이내로 입력해주세요.";
		} else if(num < 0 || eng < 0 || spe < 0){
			msg = "영문, 숫자, 특수문자를 모두 포함해주세요.";		  
		} else if(pw.search(/\s/) != -1){
			msg = "공백 없이 입력해주세요.";
		} else {
			msg = "사용 가능한 비밀번호입니다.";
			$("#pwCheckMsg").css("color", "green");
			$("#pwCheckMsg").text(msg);
			return true;
		}
		$("#pwCheckMsg").css("color", "red");
		$("#pwCheckMsg").text(msg);
		return false;
	});	
	
	// 확인 비밀번호 키 입력 시 일치 여부 확인
	$("#inputPwChk").on("keyup", function () {
		const pw = $("#inputPw").val();
		const pwConfirm = $("#inputPwChk").val();
		const msg = $("#pwMatchMsg");
		
		if (!pwConfirm) {
		  msg.text("");
		  return;
		}
		
		if (pw === pwConfirm) {
		  msg.text("비밀번호가 일치합니다.").css("color", "green");
		} else {
		  msg.text("비밀번호가 일치하지 않습니다.").css("color", "red");
		}
	});	
	
	//이미지 업로드 로직
    var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function() {
        if (window.FileReader) {
            var filename = $(this)[0].files[0]?.name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }

        $(this).siblings('.upload-name').val(filename);
    });

    // 이미지 미리보기 및 유효성 검사 (확장자 & 용량)
    var imgTarget = $('.preview-image .upload-hidden');

    imgTarget.on('change', function() {
        var file = $(this)[0].files[0];

        if (!file) return;

        // 이미지 MIME 타입 허용 리스트
        var validTypes = ['image/jpeg', 'image/png', 'image/gif', 'image/webp', 'image/bmp'];
        var maxSize = 5 * 1024 * 1024; // 5MB

        // MIME 타입 검사
        if (!validTypes.includes(file.type)) {
            alert('이미지 파일만 업로드할 수 있습니다. (jpg, png, gif, webp 등)');
            $(this).val('');
            $(this).siblings('.upload-name').val(''); // 파일명 초기화
            return;
        }

        // 파일 용량 검사
        if (file.size > maxSize) {
            alert('5MB 이하의 이미지만 업로드할 수 있습니다.');
            $(this).val('');
            $(this).siblings('.upload-name').val('');
            return;
        }

        var parent = $(this).parent();
        var uploadDisplay = parent.find('.upload-display');
        var imgTag = uploadDisplay.find('.upload-thumb');

        if (window.FileReader) {
            var reader = new FileReader();
            reader.onload = function(e) {
                var src = e.target.result;

                if (imgTag.length > 0) {
                    imgTag.attr('src', src);
                } else {
                    uploadDisplay.html(
                        '<div class="upload-thumb-wrap"><img src="' + src + '" class="upload-thumb"></div>'
                    );
                }
            }
            reader.readAsDataURL(file);
        } else {
            // 구형 브라우저 (IE 대응)
            $(this)[0].select();
            $(this)[0].blur();
            var imgSrc = document.selection.createRange().text;

            if (imgTag.length > 0) {
                imgTag[0].style.filter =
                    "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\"" +
                    imgSrc +
                    "\")";
            } else {
                uploadDisplay.html('<div class="upload-thumb-wrap"><img class="upload-thumb"></div>');
                uploadDisplay.find('.upload-thumb')[0].style.filter =
                    "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\"" +
                    imgSrc +
                    "\")";
            }
        }
    });
});
</script>

<%@include file="/WEB-INF/views/includes/footer.jsp" %>