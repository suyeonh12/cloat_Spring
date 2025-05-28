<%@include file="/WEB-INF/views/includes/header.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<section class="content">
   <div class="about">
      <!--
      1. 왜 CLOAT인가? (Why CLOAT) 
      - 딥페이크 문제 현황
      - 뉴스, 통계, 사회적 위험 강조
      - “우리는 왜 이 서비스를 만들었는가”에 대한 답변         -->
      <div id="why" class="ab_why">
         <div class="about_head">
            <div class="inner">
               <div class="tit1">Why CLOAT?</div>
               <div class="tit2">왜 필요한가요?</div>
            </div>
         </div>
         <div class="inner">
            <p>보셨나요?</p>
            <p>쏟아지는 딥페이크 관련 범죄 기사들..</p>
            <ul class="news_ul">
                  <li>
                     <div class="news_h">“딥페이크 영상 유포, 피해자는 10대 여학생”</div> <!--headline : 기사 제목-->
                     <div class="news_s">2024.12.13 | 연합뉴스</div> <!--source : 기사 출처-->
                  </li>
                  <li>
                     <div class="news_h">“딥페이크 범죄 2022년 대비 245% 증가”</div>
                     <div class="news_s">2024.12.13 | 연합뉴스</div>
                  </li>
                  <li>
                     <div class="news_h">“여성 10명 중 7명, ‘내 얼굴이 도용될까 두렵다’ 응답”</div>
                     <div class="news_s">2024.12.13 | 연합뉴스</div>
                  </li>
                  <li>
                     <div class="news_h">“AI 이미지 생성 도구 수백 개… 누구나 쉽게 조작 가능”</div>
                     <div class="news_s">2024.12.13 | 연합뉴스</div>
                  </li>                                                
            </ul>
            <div>날로 증가하는 딥페이크 범죄</div>
            <p>23년 대비 00% <span class="c_red">증가</span></p>
         </div>
      </div>

      <!--
      2. CLOAT는 무엇인가? (What is CLOAT) 
      - 클로킹 기술 개요
      - Fawkes 기술 소개 + 개선 필요성 or 우리의 차별점
      - 사용 흐름(사진 → 업로드 → 변환 → 다운로드)        
      -->
      <div id="what" class="ab_what">
            <div class="about_head">
               <div class="inner">
                  <div class="tit1">What is CLOAT?</div>
                  <div class="tit2">어떤 서비스인가요?</div>
               </div>
            </div>
            <div class="inner">
               - CLOAT는~~ Clarity & Locking Of Authentic Teens <br>
               - 클로킹이란~~~<br>
               - Fawkes란 무엇인가~~<br>
               <div class="thumb">
                  Fawkes 모델 구조도 이미지?
               </div>
            </div>
      </div>

      <!--
      3. 어떻게 동작하는가? (How It Works) 
      - 이미지 한 장으로 간단한 흐름도
      - 기술적 개요 (ex. 노이즈 삽입, 딥러닝 모델 대응)
      - 예: "Before vs After" 이미지 예시         -->
      <div id="how" class="ab_how">
            <div class="about_head">
               <div class="inner">
                  <div class="tit1">How CLOAT Works?</div>
                  <div class="tit2">어떻게 얼굴을 보호하나요?</div>                  
               </div>
            </div>
            <div class="inner">
               <p>
               CLOAT는 AI 학습 모델이 얼굴을 인식하지 못하도록 하는 <b>방어적 노이즈 삽입</b> 기술을 사용합니다. <br>
               이는 이미지의 픽셀에 사람 눈에는 보이지 않는 작은 변화(perturbation)를 가해, 딥러닝 모델의 탐지를 방해합니다.
               </p>
               <!-- 사용 플로우 (How to use) 간단한 3단계 이미지로 구성 추천:
               1.이미지 업로드
               2.클로킹 적용 (1초~3초)
               3.다운로드 및 안전한 공유 -->
               <div class="service_flow">
                  서비스 플로우 이미지 있으면 좋을듯
               </div>
            </div>
      </div>

      <!--  
      4. CLOAT 팀을 소개합니다 (About the Team) 
      - 팀원별 역할 / 기여 기능 (더 구체화)
      - 누구든 궁금한 점이 있으면 연락할 수 있게       
      -->
      <div id="team" class="ab_team">
         <div class="about_head">
            <div class="inner">
               <div class="tit1">About the Team</div>
               <div class="tit2">우리 팀을 소개합니다</div>                
            </div>
         </div>
         <div class="inner">
            <p>팀 CLOAT는 스마트인재개발원에서 'sw엔지니어블라블라' 과정에서 배워서 어쩌고..?</p>
            <ul class="team_ul">
               <li>
                  <div class="thumb"><img src="resources/images/team_yj.png"></div>
                  <div class="name">주연진</div>
                  <div class="position">팀장 · Backend</div>
                  <div class="role">전체 기획 총괄, DB 설계</div>
                  <a href="https://github.com/yeonjinju" target="_blank" class="git">https://github.com/yeonjinjuT</a>
               </li>
               <li>
                  <div class="thumb"><img src="resources/images/team_bh.png"></div>
                  <div class="name">정병호</div>
                  <div class="position">BackEnd</div>
                  <div class="role">클로킹 기능 구현, 암호화 담당, 보안책임자</div>
                  <a href="https://github.com/jbh6357" target="_blank" class="git">https://github.com/jbh6357</a>
               </li>
               <li>
                  <div class="thumb"><img src="resources/images/team_gm.png"></div>
                  <div class="name">나규민</div>
                  <div class="position">BackEnd</div>
                  <div class="role">회원관리기능 개발, 개인정보책임자</div>
                  <a href="https://github.com/suyeonh12" target="_blank" class="git">https://github.com/suyeonh12</a>
               </li>
               <li>
                  <div class="thumb"><img src="resources/images/team_sy.png"></div>
                  <div class="name">한수연</div>
                  <div class="position">FrontEnd</div>
                  <div class="role">화면구현, 고객서비스 담당</div>
                  <a href="https://github.com/gyuminna" target="_blank" class="git">https://github.com/gyuminna</a>
               </li>												
            </ul>
         </div>
      </div>

      <!--
      5. 앞으로의 목표 / 비전 (Our Vision)
      - 현재 MVP 기반
      - 확장 방향 (앱 개발 / API 제공 / 글로벌 서비스 등)
      - 사회적 임팩트와 기술적 확장 가능성      
      -->      
      <div id="vision" class="ab_vision">
         <div class="about_head">
            <div class="inner">
               <div class="tit1">Our Vision</div>
               <div class="tit2">우리가 그리는 미래</div>                 
            </div>
         </div>
         <div class="inner">
            <p>우리는 누구나 디지털 세상에서 얼굴과 신원을 안전하게 <span class="c_main">보호</span>받을 수 있어야 한다고 믿습니다. <br>
            CLOAT는 기술을 통해 사용자에게 프라이버시와 명예를 되돌려주는 ‘디지털 신뢰의 기준’이 되는 것을 목표로 합니다.</p>
            <p>우리는 얼굴을 지키는 기술로, 세상에 더 많은 <span class="c_main">안전</span>을, 더 많은 <span class="c_main">자유</span>를 만들어갑니다.</p>
         </div>
      </div>	
      
      <!--
      6. 사용자의 목소리 (선택적) 
      - 직접 테스트해본 유저 후기나 멘션
      - “내 얼굴이 안전해지는 느낌이에요!” 등 짧은 카피      
      -->      
      <!-- <div id="review" class="ab_rv">
         <div class="about_head">wow! 실제 후기</div>
         <p>실제 CLOAT 서비스 사용자들이 남긴 후기입니다</p>
         <ul class="user_riview">
            <li>
               <p>"내 얼굴이 가려졌다는 느낌보다, 보호받고 있다는 안정감이 더 컸어요!"</p>
               <span>- 베타테스터 김ㅇㅇ</span>
            </li>
            <li>
               <p>"늘 불안했는데 어쩌구저쩌구"</p>
               <span>- 베타테스터 김ㅇㅇ</span>
            </li>            
         </ul>
      </div>	 -->
   </div>

   <script>
      $(document).ready(function () {
         if (window.location.pathname.endsWith('about') && window.location.hash) {
            let h_height = $('.header').outerHeight();
            let target = $(window.location.hash);
            if (target.length) {
                  setTimeout(function () {
                     $('html, body').scrollTop(target.offset().top - h_height);
                  }, 50);
            }
         }
      });
   </script>

</section>
   
<%@include file="/WEB-INF/views/includes/footer.jsp" %>