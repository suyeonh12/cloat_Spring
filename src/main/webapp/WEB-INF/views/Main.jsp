<%@include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

   <section class="main content">
	<div class="inner">
	
		<!-- 메인 배너 -->
        <div class="main_banner">
        	<h2 calss="tit">내 얼굴, 더는 노출되지 않게</h2>
        	<p class="desc">딥페이크로부터 나를 지키는 가장 쉬운 방법</p>
        	<a href="service" class="bttn">서비스 바로가기</a>
        </div>

		
		<!-- 장점 나열 -->
		<ul class="main_good">
			<li>
				<p class="tit">걱정없이 안전하게</p>
				<p class="cont">클로킹 서비스로 딥페이크에서 벗어나 안전한 디지털 라이프를 누려보세요!</p>
			</li>		
			<li>
				<p class="tit">금전부담 전혀없는</p>
				<p class="cont">CLOAT는 공익을 위해 모든 서비스를 무료로 제공합니다</p>
			</li>				
			<li>
				<p class="tit">어디서나 편안하게</p>
				<p class="cont">휴대폰으로도 문제 없어요. 어느 기기에서나 편리하게 이용하세요</p>
			</li>	
			<li>
				<p class="tit">헤매지말고 한번에</p>
				<p class="cont">딥페이크 관련 예방 컨텐츠 제공, 딥페이크 방지 이미지 클로킹 서비스, 유관센터 지도 등 전반적인 딥페이크 대응 관련 서비스를 제공합니다</p>
			</li>				
			<!--<li>
				<p class="tit">언제든지 상관없이</p>
				<p class="cont">고객님께 실시간 대응을 할 수 있도록 24시간 고객센터가 대기중입니다</p>
			</li>-->
		</ul>
		
		<!-- 게시판 최신글 -->
        <div class="main_board">
            <div>
            	<!-- 공지사항 최신글 5개 -->
                <h3>📢 공지사항 <a href="NoticeList">더보기</a></h3>
                <ul>
                
                    <li>
                    	<a href="#">정식 서비스 오픈 안내 <span class="bd_date">2025.05.28</span></a>
                    </li>
                    <!-- li 반복 -->
                    <li>
                    	<a href="#">정식 서비스 오픈 안내 <span class="bd_date">2025.05.28</span></a>
                    </li>
                    <li>
                    	<a href="#">정식 서비스 오픈 안내 <span class="bd_date">2025.05.28</span></a>
                    </li>
                    <li>
                    	<a href="#">정식 서비스 오픈 안내 <span class="bd_date">2025.05.28</span></a>
                    </li>
                    <li>
                    	<a href="#">정식 서비스 오픈 안내 <span class="bd_date">2025.05.28</span></a>
                    </li>
                                                                                
                </ul>
            </div>
            <div>
            	<!-- 후기 최신글 5개 -->
                <h3>💬 이용 후기 <a href="ReviewList">더보기</a></h3>
                <ul>
                	
                	<!-- li 반복 -->
                    <li>
                    	<a href="#">내 얼굴이 보호받는다는 느낌이 들어요 <span class="bd_date">2025.05.27</span></a> 
                    </li>
                    
                </ul>
            </div>
        </div>

	</div>
   </section>
   
<%@include file="/WEB-INF/views/includes/footer.jsp" %>