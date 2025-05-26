package com.smhrd.qna;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class QnaController {

   @Autowired
   QnaMapper mapper;

   @Autowired
   private QnaService qnaService;

   @Autowired
   ServletContext context;

   // 공지사항 상세보기 + 조회수 증가
   @RequestMapping("/qnaview")
   public String qnaView(@RequestParam("no") int qnaIdx,
         @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model) {
      qnaService.increaseViews(qnaIdx);
      QnaVO qna = mapper.getQna(qnaIdx);
      QnaVO answer = qnaService.getAnswer(qnaIdx);

      model.addAttribute("qna", qna);
      model.addAttribute("answer", answer);
      model.addAttribute("pageNum", pageNum);
      return "qna/QnaView";
   }

   // Answer 작성
   @RequestMapping(value = "/writeQnaAnswer", method = RequestMethod.POST)
   public String writeQnaAnswer(QnaVO vo, HttpSession session, @RequestParam String id) {

      System.out.println("loginId : " + id);
      System.out.println("Qna_idx : " + vo.getQna_idx());

      vo.setAdmin_id(id);
      System.out.println(vo);
      int result = qnaService.writeQnaAnswer(vo);

      if (result > 0) {
         System.out.println("댓글 작성 성공");
      } else {
         System.out.println("댓글 작성 실패");
      }

      return "redirect:/qnaview?no=" + vo.getQna_idx();
   }

   // Answer 수정
   @RequestMapping("/updateQnaAnswer")
   public String updateQnaAnswer(QnaVO vo, HttpSession session, @RequestParam String id) {

      System.out.println("loginId : " + id);
      System.out.println("Qna_idx : " + vo.getQna_idx());

      vo.setAdmin_id(id);
      System.out.println(vo);

      int result = qnaService.updateQnaAnswer(vo);

      if (result > 0) {
         System.out.println("댓글 수정 성공");
      } else {
         System.out.println("댓글 수정 실패");
      }
      return "redirect:/qnaview?no=" + vo.getQna_idx();
   }

   // Answer 삭제
   @RequestMapping("/deleteQnaAnswer")
   public String deleteQnaAnswer(QnaVO vo, HttpSession session, @RequestParam String id) {
      
      System.out.println("loginId : " + id);
      System.out.println("Qna_idx : " + vo.getQna_idx());

      vo.setAdmin_id(id);
      System.out.println(vo);
      
      int result = qnaService.deleteQnaAnswer(vo);

      if (result > 0) {
         System.out.println("댓글 삭제 성공");
      } else {
         System.out.println("댓글 삭제 실패");
      }

      return "redirect:/qnaview?no=" + vo.getQna_idx();
   }
   
   @RequestMapping("/qnacommentlist")
   public String qnacommentlist() {
      return null;
   }

   
   // 공지사항 목록 + 페이징 처리
   @RequestMapping("/QnaList")
   public String qnaList(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model) {
      int pageSize = 10;
      int startRow = (pageNum - 1) * pageSize + 1;
      int endRow = pageNum * pageSize;

      int totalCount = mapper.getTotalCount();
      int totalPageCount = (totalCount + pageSize - 1) / pageSize;

      List<QnaVO> list = mapper.getQnasByPage(startRow, endRow);
      if (list == null)
         list = new ArrayList<>();

      int pageBlock = 10;
      int startPageNum = ((pageNum - 1) / pageBlock) * pageBlock + 1;
      int endPageNum = Math.min(startPageNum + pageBlock - 1, totalPageCount);

      model.addAttribute("list", list);
      model.addAttribute("pageNum", pageNum);
      model.addAttribute("totalPageCount", totalPageCount);
      model.addAttribute("startPageNum", startPageNum);
      model.addAttribute("endPageNum", endPageNum);

      return "qna/Qna";
   }

   // 게시글 상세보기 (예: 리뷰 형식, 쿼리 파라미터로 reNum 받음)
   @RequestMapping("/qnadetailreview")
   public ModelAndView detail(@RequestParam("reNum") String reNum) throws Exception {
      return new ModelAndView("detail", "detail1", qnaService.getQnaDetail(reNum));
   }

   // 검색기능
   @RequestMapping("/QnaSearch")
   public String QnaSearch(@RequestParam String searchValue, @RequestParam String searchContent, Model model) {

      List<QnaVO> list = mapper.QnaSearch(searchValue, searchContent);
      System.out.println(searchValue + " " + searchContent);
      model.addAttribute("list", list);
      return "qna/Qna";
   }

   @RequestMapping("/QnaWrite")
   public String QnaWrite() {
      return "qna/QnaWrite";
   }

   // 글쓰기 기능
   @RequestMapping("/QnaUpload")
   public String QnaUpload(QnaVO vo, @RequestParam(value = "file", required = false) MultipartFile file) {
      String loc = context.getRealPath("/resources/file/");
      FileOutputStream fos;
      String fileDemo = "null";
      if (file != null && !file.isEmpty()) {
         fileDemo = file.getOriginalFilename();
         if (fileDemo.length() > 0) {
            try {
               String baseName = fileDemo.substring(0, fileDemo.lastIndexOf("."));
               String extension = fileDemo.substring(fileDemo.lastIndexOf("."));
               fileDemo = baseName + '_' + UUID.randomUUID().toString() + extension;
               File targetFile = new File(loc, fileDemo);
               fos = new FileOutputStream(targetFile);
               fos.write(file.getBytes());
               fos.close();
            } catch (Exception e) {
               e.printStackTrace();
            }
         }
      }

      vo.setQna_file(fileDemo);
      vo.setQna_views(0);

      int result = mapper.write(vo);

      if (result > 0) {
         System.out.println("성공");
      } else {
         System.out.println("실패");
      }
      return "redirect:/QnaList";
   }

   // 마이페이지 - 내가 쓴 QNA보기
   @RequestMapping("/MyQna")
   public String MyQna(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, 
   					@RequestParam(value ="id") String id,
   					Model model) {
       int pageSize = 10;
       int startRow = (pageNum - 1) * pageSize + 1;
       int endRow = pageNum * pageSize;
       
       int totalCount = mapper.getTotalCount();
       int totalPageCount = (totalCount + pageSize - 1) / pageSize;

       List<QnaVO> list = mapper.MyQna(startRow, endRow, id);
       if (list == null) list = new ArrayList<>();

       int pageBlock = 10;
       int startPageNum = ((pageNum - 1) / pageBlock) * pageBlock + 1;
       int endPageNum = Math.min(startPageNum + pageBlock - 1, totalPageCount);

       model.addAttribute("list", list);
       model.addAttribute("pageNum", pageNum);
       model.addAttribute("totalPageCount", totalPageCount);
       model.addAttribute("startPageNum", startPageNum);
       model.addAttribute("endPageNum", endPageNum);

       return "mypage/MyQna";
   }
   
   
}