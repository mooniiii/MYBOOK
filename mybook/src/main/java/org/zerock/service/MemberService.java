package org.zerock.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.zerock.domain.MemberDTO;


public interface MemberService {
	
	// 회원가입 insert
	public void member(MemberDTO mdto);
	
	// 로그인 select
	public MemberDTO loginPost(MemberDTO mdto);
	
	// 회원 목록 리스트 select
	public ArrayList<MemberDTO> list();
	
	// 화면 상세 내용 select
	public MemberDTO detail(MemberDTO mdto);
	
	// 회원 정보 수정 update
	public void modify(MemberDTO mdto);
	
	// 회원 탈퇴 delete
	public void remove(MemberDTO mdto);
}
