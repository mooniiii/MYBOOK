# 학원 자리 예약 시스템 : MYBOOK

## 소개

 대형 학원이나 인기 강사들의 경우 수업 시작 전 자리 경쟁이 치열합니다. 실제 기획자가 직접 경험한 바를 단편적으로 이야기 해보자면, 아침 9시에 시작하는 유명 강사의 강의를 강단 가까이에서 듣기 위해서 전날 밤 11시부터 강의실 앞에서 줄을 서서 밤새 기다려야만 했습니다. 학원 규모도 상당했기에 자리 예약 시스템을 자체적으로 구축하고 있었지만 중복예약과 같은 오류들이 너무 많았고, 수백 명의 학생이 일시에 몰리는 시스템의 특성상 서버 또한 상당히 불안정하였기에 사실상 무용지물에 가까웠고, 학원 측에서도 실제로는 사용하지 않았습니다.
 현재 전세계적으로 코로나와의 전쟁이 한창이고, 개인들의 위생관념은 코로나 전과는 비교도 할 수 없을 정도로 상향평준화 되어가고 있습니다. 허나, 자신의 꿈을 이루기 위해 등원하는 학생들에게 서로 밀착하여 서있어야 하는 이른바 ‘줄서기 경쟁’은 위생적인 면에서 취약할 수밖에 없습니다.
 또한, 우리나라에서 학원 사업은 매우 큰 사업의 한 영역으로 오래 동안 자리 잡고 있습니다. 기획자가 구축하려 하는 ‘학원 통합 자리 예약 시스템’은 이렇게 지속적으로 생존하며 운영될 수 있는 명확하고 합당한 이유들이 있습니다.
 웹사이트를 개설하고 스마트폰용 어플리케이션을 개발하여 사용자들이 편리하게 사용할 수 있는 환경을 구축한다면, 아직은 미비한 ‘자리 예약 시스템’ 영역을 개척하여 선점할 수 있을 것이며, 이는 비록 국내에서 뿐만이 아니라 국외로까지 영역을 확대하여 훨씬 더 범용적인 시스템으로 뻗어나갈 수 있을 것입니다.
 
 ## 개발 환경
 
 * 개발 언어 : Java
 * 개발 환경 : JDK 1.8, Tomcat v9.0
 * 데이터베이스 : MySQL 8.0.6
 * 개발도구 : Eclipse 2021-09, Visual Studio Code 1.55.2
 
 ## 화면
 
![슬라이드2](https://user-images.githubusercontent.com/92083313/141031901-d9499b0e-c2f0-42ad-9fcd-786c1687743d.jpeg)
![슬라이드3](https://user-images.githubusercontent.com/92083313/141031913-d3f482e1-5614-462b-ad4b-c51946fd9a28.jpeg)
![슬라이드4](https://user-images.githubusercontent.com/92083313/141031920-708a9116-d679-4489-bb80-b05e3d375453.jpeg)
![슬라이드5](https://user-images.githubusercontent.com/92083313/141032378-196ecc94-14d3-4c1d-9b10-094d1932b882.jpeg)
![슬라이드6](https://user-images.githubusercontent.com/92083313/141032318-426c0b57-b799-4cc3-9455-e33911417a47.jpeg)
![슬라이드7](https://user-images.githubusercontent.com/92083313/141031935-db872b55-020b-42e2-92aa-21f038a1d7e8.jpeg)
![슬라이드8](https://user-images.githubusercontent.com/92083313/141031936-6c320ce7-e611-4c50-82a7-3fbce1c2f972.jpeg)
![슬라이드9](https://user-images.githubusercontent.com/92083313/141031941-62ce42bc-dedd-454e-8351-d3e1eee817e6.jpeg)

## 사용 기술

```java
package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	
	// 공지사항 게시판에 대한 Controller
	
	// 게시판
	@GetMapping("mb_notice/list")
	public void noList(Model model, Criteria cri) {
		
		cri.setBoard_name("no");
		log.info("@@@@@@@@@@ list good @@@@@@@@@@");
		model.addAttribute("list", service.getList(cri));
		
		int total=service.getTotalCount(cri);	
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	// 게시글 상세 페이지
	@GetMapping("mb_notice/read")
	public void noRead(int bno, Model model) {
		
		log.info("@@@@@@@@@@ read : " + bno + " @@@@@@@@@@");
		model.addAttribute("read", service.get(bno));
	}
	
	// 게시글 등록 페이지
	@GetMapping("mb_notice/register")
	public void noRegisterGet() {
		
		log.info("@@@@@@@@@@ register good @@@@@@@@@@");
	}
	// 게시글 등록
	@PostMapping("mb_notice/register")
	public String noRegisterPost(BoardVO board, RedirectAttributes rttr) {
		
		log.info("registerPost insert 전 : " + board + " @@@@@@@@@@");
		service.register(board);
		log.info("registerPost insert 후 : " + board + " @@@@@@@@@@");
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/mb_notice/read";
	}
	
	// 게시판 수정 페이지
	@GetMapping("mb_notice/modify")
	public void noModifyGet(int bno, Model model) {
		log.info("@@@@@@@@@@ modify good bno : " + bno +" @@@@@@@@@@");
		model.addAttribute("modify", service.get(bno));
	}
	// 게시판 수정
	@PostMapping("mb_notice/modify")
	public String noModifyPost(BoardVO board, RedirectAttributes rttr, Model model) {
		model.addAttribute("result", service.modify(board));
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/mb_notice/read";
	}
	
	// 게시글 삭제
	@GetMapping("mb_notice/remove")
	public String noRemove(int bno) {
		log.info("@@@@@@@@@@ remove good bno : " + bno + " @@@@@@@@@@");
		service.remove(bno);
		return "redirect:/board/mb_notice/list";
	}

	
	// 이벤트 게시판에 대한 Controller
	
	// 게시판
	@GetMapping("mb_event/list")
	public void evList(Model model, Criteria cri) {
		
		cri.setBoard_name("ev");
		log.info("@@@@@@@@@@ list good @@@@@@@@@@");
		model.addAttribute("list", service.getList(cri));
		
		int total=service.getTotalCount(cri);	
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	// 게시글 페이지
	@GetMapping("mb_event/read")
	public void evRead(int bno, Model model) {
		
		log.info("@@@@@@@@@@ read : " + bno + " @@@@@@@@@@");
		model.addAttribute("read", service.get(bno));
	}
	
	// 게시글 등록 페이지
	@GetMapping("mb_event/register")
	public void evRegisterGet() {
		
		log.info("@@@@@@@@@@ register good @@@@@@@@@@");
	}
	// 게시글 등록
	@PostMapping("mb_event/register")
	public String evRegisterPost(BoardVO board, RedirectAttributes rttr) {
		
		log.info("registerPost insert 전 : " + board + " @@@@@@@@@@");
		service.register(board);
		log.info("registerPost insert 후 : " + board + " @@@@@@@@@@");
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/mb_event/read";
	}
	
	// 게시글 수정 페이지
	@GetMapping("mb_event/modify")
	public void evModifyGet(int bno, Model model) {
		log.info("@@@@@@@@@@ modify good bno : " + bno +" @@@@@@@@@@");
		model.addAttribute("modify", service.get(bno));
	}
	// 게시글 수정
	@PostMapping("mb_event/modify")
	public String evModifyPost(BoardVO board, RedirectAttributes rttr, Model model) {
		model.addAttribute("result", service.modify(board));
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/mb_event/read";
	}
	
	// 게시글 삭제
	@GetMapping("mb_event/remove")
	public String evRemove(int bno) {
		log.info("@@@@@@@@@@ remove good bno : " + bno + " @@@@@@@@@@");
		service.remove(bno);
		return "redirect:/board/mb_event/list";
	}
}

```


