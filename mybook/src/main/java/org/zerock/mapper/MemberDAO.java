package org.zerock.mapper;

import java.util.ArrayList;
import org.zerock.domain.MemberDTO;


public interface MemberDAO {
	
	// 로그인 select
	public MemberDTO loginPost(MemberDTO mdto);
	
	// 회원가입 insert
	public void member(MemberDTO mdto);
	
	// 회원 목록 리스트 select
	public ArrayList<MemberDTO> list();
	
	// 회원 상세 내용 select
	public MemberDTO detail(MemberDTO mdto);
	
	// 회원 정보 수정 update
	public void modify(MemberDTO mdto);
	
	// 회원 탈퇴 delete
	public void remove(MemberDTO mdto);

}
