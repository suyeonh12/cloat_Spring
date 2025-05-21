package com.smhrd.member;

import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MemberController {

	@Autowired
	MemberMapper mapper;
	
   @Autowired
   ServletContext context;	

	@RequestMapping("/")
	public String main() {
		return "Main";
	}

	@RequestMapping("/login")
	public String login() {
		return "Login";
	}

	@PostMapping("/login_do")
	public String login(MemberVO vo, HttpSession session) {

		MemberVO mvo = mapper.login(vo);

		session.setAttribute("mvo", mvo);
		if (mvo != null) {
			// 로그인 성공 - 세션에 사용자 정보 저장

			session.setAttribute("mvo", mvo);
			return "redirect:/"; // 홈 페이지로 이동
		} else {
			// 로그인 실패 - 로그인 페이지로 되돌아가기
			return "redirect:/login";
		}

	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "Main";
	}

	@RequestMapping("join")
	public String join() {
		return "Join";
	}

	@RequestMapping("/join_us")
	   public String join_us(@RequestParam(value= "file", required = false)MultipartFile file, MemberVO vo, Model model) {
	      String loc = context.getRealPath("/resources/file/");
	      FileOutputStream fos;
	      String fileDemo = "null";
	      if (file != null && !file.isEmpty()) {
	         fileDemo = file.getOriginalFilename();
	         if(fileDemo.length() > 0) {
	            try {
	               String baseName = fileDemo.substring(0, fileDemo.lastIndexOf(".")); //4
	               String extension = fileDemo.substring(fileDemo.lastIndexOf("."));   //.jpg
	               fileDemo = baseName + '_' + UUID.randomUUID().toString() + extension;
	               File targetFile = new File(loc, fileDemo);
	               fos = new FileOutputStream(targetFile); // 파일저장경로 + 파일저장명
	               fos.write(file.getBytes());  // 우리가 진짜 가져온 파일로 쓰기
	               fos.close();  // 이건 안써줘도 되는 코드지만 용량 절약을 습관화
	            } catch (Exception e) {
	               e.printStackTrace();
	            }
	         }
	      }
	      
	      vo.setProfile_img(fileDemo);
	      
	      mapper.join(vo);
	      model.addAttribute("id",vo.getId());
	      return "Join_success";
	   }

	@GetMapping("/join_success")
	public String join_success() {
		return "Join_success";
	}

}