package org.zerock.domain;

import lombok.Data;

@Data
public class AttachFileDTO {

	private String fileName;		// original 파일 이름
	private String uploadPath;		// 파일 업로드 경로
	private String uuid;			// uuid
	private boolean image;			// 이미지 파일 여부

}
