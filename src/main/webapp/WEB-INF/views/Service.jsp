<%@include file="/WEB-INF/views/includes/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
					integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
					crossorigin="anonymous"></script>
					
<section class="main content">
	<div class="inner inner_500">
		<h2 class="page_name2">업로드</h2>
			<ul class="form_ul">
				<li class="profile"><small class="s_info c_main">* 선택</small> 
				<span dclass="form_label">프로필 이미지 등록</span>
					<div class="filebox preview-image">
						<label for="profile_img" class="label_hidden"></label>
						<div class="upload-display">
							<img src="resources/images/user.png" alt="">
						</div>
						<input class="upload-name" value="파일선택" disabled="disabled">
						<input type="file" name="file" id="profile_img"
							class="upload-hidden" accept="image/*">
					</div></li>
				<li><button class="bttn bttn_sbm2" id="change">변환</button>
				</li>
			</ul>
	</div>
	<div class="zzz">
		<h1>변환전</h1>
		<img src="data:image/jpeg;base64,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">
	</div>
</section>



<script>
//이미지 업로드 로직
let fileTarget = $('.filebox .upload-hidden');
let filename = "";

fileTarget.on('change', function() {
    if (window.FileReader) {
        filename = $(this)[0].files[0]?.name;
    } else {
        filename = $(this).val().split('/').pop().split('\\').pop();
    }

    $(this).siblings('.upload-name').val(filename);
});

// 이미지 미리보기 및 유효성 검사 (확장자 & 용량)
let imgTarget = $('.preview-image .upload-hidden');

imgTarget.on('change', function() {
    let file = $(this)[0].files[0];

    if (!file) return;

    // 이미지 MIME 타입 허용 리스트
    let validTypes = ['image/jpeg', 'image/png', 'image/gif', 'image/webp', 'image/bmp'];
    let maxSize = 5 * 1024 * 1024; // 5MB

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

    let parent = $(this).parent();
    let uploadDisplay = parent.find('.upload-display');
    let imgTag = uploadDisplay.find('.upload-thumb');

    if (window.FileReader) {
        let reader = new FileReader();
        reader.onload = function(e) {
            let src = e.target.result;

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
        let imgSrc = document.selection.createRange().text;

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




</script>

<script>
						$('#change').on("click",function(){
							
							$('.zzz h1').text('변환 중');
							// input[type=file]에서 파일 가져오기
						    let fileInput = document.getElementById("profile_img");
						    let file = fileInput.files[0];

						    if (!file) {
						        alert("업로드할 이미지를 선택해주세요.");
						        return;
						    }

						    let formData = new FormData();
						    formData.append('file', file);
							
							$.ajax({                                                              
								data : formData,
								type : "POST",
								// url은 자신의 이미지 업로드 처리 컨트롤러 경로로 설정해주세요.
								url : 'change',  
								contentType : false,
								processData : false,
								enctype : 'multipart/form-data',                                  
								success : function(data) {   										
									console.log(data);
									
									// contextPath를 JSP에서 자바스크립트 변수로 받음
						            let contextPath = "${pageContext.request.contextPath}";
						            let fullPath = contextPath + data;
									console.log(fullPath);
						            // .zzz 클래스 내부 img 태그의 src 속성 변경
						            $(".zzz img").attr("src", fullPath);
						            
						            $('.zzz h1').text('변환 완료');
								}
							});
					
						});
</script>					


<%@include file="/WEB-INF/views/includes/footer.jsp"%>