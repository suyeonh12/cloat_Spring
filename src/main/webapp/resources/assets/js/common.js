// 스크롤시 헤더 고정
$(window).on('scroll load', function() {
	if ($(window).scrollTop() > 5) {
		$('.header').addClass('scrl');
	} else {
		$('.header').removeClass('scrl');
	}
});

// 클릭하면 페이지 상단으로 이동
function pageTop() {
	$('html, body').animate({ scrollTop: '0' }, 600);
}	

// 사진 업로드 스크립트
$(document).ready(function() {
	var fileTarget = $('.filebox .upload-hidden');

	fileTarget.on('change', function() {
		if (window.FileReader) {
			// 파일명 추출
			var filename = $(this)[0].files[0].name;
		}

		else {
			// Old IE 파일명 추출
			var filename = $(this).val().split('/').pop().split('\\').pop();
		};

		$(this).siblings('.upload-name').val(filename);
	});

	// 이미지 미리보기
	var imgTarget = $('.preview-image .upload-hidden');

	imgTarget.on('change', function() {
		var parent = $(this).parent();
		var uploadDisplay = parent.find('.upload-display');

		// upload-display 내부에 upload-thumb 이미지 요소가 있는지 확인
		var imgTag = uploadDisplay.find('.upload-thumb');

		if (window.FileReader) {
			// image 파일만 처리
			if (!$(this)[0].files[0].type.match(/image\//)) return;

			var reader = new FileReader();
			reader.onload = function(e) {
				var src = e.target.result;

				if (imgTag.length > 0) {
					// 이미지 태그가 있으면 src만 교체
					imgTag.attr('src', src);
				} else {
					// 없으면 새로 추가
					uploadDisplay.html('<div class="upload-thumb-wrap"><img src="' + src + '" class="upload-thumb"></div>');
				}
			}
			reader.readAsDataURL($(this)[0].files[0]);
		} else {
			// 구형 IE 대응 (FileReader 없는 경우)
			$(this)[0].select();
			$(this)[0].blur();
			var imgSrc = document.selection.createRange().text;

			if (imgTag.length > 0) {
				imgTag[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\"" + imgSrc + "\")";
			} else {
				uploadDisplay.html('<div class="upload-thumb-wrap"><img class="upload-thumb"></div>');
				uploadDisplay.find('.upload-thumb')[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\"" + imgSrc + "\")";
			}
		}
	});
});	