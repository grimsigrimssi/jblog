package com.javaex.vo;

public class PostVo {
	
	private int postNo;
	private int cateNo;
	private String postTitle;
	private String postContent;
	private String regDate;
	
	
	public PostVo(String regDate) {
		super();
		this.regDate = regDate;
	}

	public PostVo(int postNo, int cateNo, String postTitle, String postContent, String regDate) {
		super();
		this.postNo = postNo;
		this.cateNo = cateNo;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.regDate = regDate;
	}


	@Override
	public String toString() {
		return "PostVo [postNo=" + postNo + ", cateNo=" + cateNo + ", postTitle=" + postTitle + ", postContent="
				+ postContent + ", regDate=" + regDate + "]";
	}

}

