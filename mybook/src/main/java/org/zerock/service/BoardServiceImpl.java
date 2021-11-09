package org.zerock.service;

import java.util.List;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

//import lombok.Setter;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
	
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("getList(paging).....");
		return mapper.getListWithPaging(cri);	// 'business영역'과 'persistence영역'을 연결
	}
	@Override
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}
	@Override
	public void register(BoardVO board) {
		log.info("register....." + board);
		
		mapper.insertSelectKey(board);	// 'business영역'과 'persistence영역'을 연결
	}
	
	@Transactional
	@Override
	public BoardVO get(int bno) {
		log.info("get....." + bno);
		mapper.updateHit(bno);
		return mapper.read(bno);
	}
	@Override
	public boolean modify(BoardVO board) {
		log.info("modify....." + board);
		return mapper.update(board) == 1;
	}
	@Override
	public boolean remove(int bno) {
		log.info("remove....." + bno);
		return mapper.delete(bno) == 1;
	}
}
