package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {	// sql의 데이터와 동일
	
	private int bno;
	private String title;
	private String id;
	private String content;
	private Date regdate;
	private int hit;
	
	private int replyCnt;
	
	private String board_name;
}
