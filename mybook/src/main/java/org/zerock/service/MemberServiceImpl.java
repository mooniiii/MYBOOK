package org.zerock.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.MemberDTO;
import org.zerock.mapper.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{

	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private MemberDAO mdao;
	
	// 로그인 select
	public MemberDTO loginPost(MemberDTO mdto) {
		logger.info("login......" + mdto);
		
		return mdao.loginPost(mdto);
	}
	
	public ArrayList<MemberDTO> list() {
		return mdao.list();
	}
	
	public MemberDTO detail(MemberDTO mdto) {
		return mdao.detail(mdto);
	}
	
	// 회원 정보 수정 update
	public void modify(MemberDTO mdto) {
		mdao.modify(mdto);
	}
	
	// 회원 탈퇴 delete
	public void remove(MemberDTO mdto) {
		mdao.remove(mdto);
	}
	
	// 회원가입 insert
	public void member(MemberDTO mdto) {
		mdao.member(mdto);
	}
}
