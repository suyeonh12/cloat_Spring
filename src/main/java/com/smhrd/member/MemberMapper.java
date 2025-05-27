package com.smhrd.member;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	public MemberVO login(MemberVO vo);
	public void join(MemberVO vo);	
	public int IdCheck(String id);
	public int update(MemberVO vo);
	public String findPw(MemberVO vo);
	public String findId1(MemberVO vo);
	public String findId2(MemberVO vo);
	
	@Delete("DELETE FROM tb_user WHERE id=#{id}")
	public int delete(String id);	
}