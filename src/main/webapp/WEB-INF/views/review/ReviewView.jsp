<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="content board view list">
    <div class="page_top">
        <div class="inner">
            <!-- 리뷰 제목을 상단에 출력 -->
            <h2 id="pageName">리뷰</h2>
        </div>
    </div>			
    <div class="inner">
        <div class="view_wrap">
            <div class="view_top">
                <h3 class="view_title">${review.review_title}</h3>
                <div class="view_info">
                    <div class="view_info_lt">
                        <p><span>작성자</span> ${review.id}</p>
                        <p><span>조회수</span> ${review.review_views}</p>
                    </div>
                    <div class="view_info_rt">
                        <p><span>작성날짜</span> ${review.created_at}</p>
                    </div>
                </div>
            </div>
            <div class="view_btm">
                ${review.review_content}
                
                <!-- 첨부파일이 있을 경우 표시 -->
                <c:if test="${not empty review.review_file}">
                    <div class="view_file">
                        <a href="${pageContext.request.contextPath}/resources/file/${review.review_file}" download>${review.review_file}</a>
                    </div>
                </c:if>
            </div>
        </div>				
        <div class="bttn_wrap">
            <!-- 해당 글 작성자 또는 관리자일 경우 버튼 표시 -->
         
			<c:if test="${mvo.id eq review.id or mvo.user_type eq 'ADMIN'}">            
			<div>
				<a href="ReviewWrite" class="bttn ipt_sbm">글쓰기</a>
				<!-- 해당 글 작성자 / admin 만 보임 -->
				<button onClick="location.href='ReviewEdit.jsp?no=${review.review_idx}'" class="bttn">수정</button>
				<button onClick="location.href='ReviewDelete.jsp?no=${review.review_idx}'" class="bttn">삭제</button>
			</div>
			</c:if>
			<div>
				<a href="${pageContext.request.contextPath}/ReviewList?pageNum=${pageNum}" class="bttn ipt_sbm">목록</a>
				<button class="bttn" onClick="pageTop()">
					<img src="resources/images/bk_arr_top.png" alt="">TOP
				</button>
			</div>            
        </div>				
    </div>	
</section>

</body>
</html>
