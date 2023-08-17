package com.himedia.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardDAO {
	ArrayList<boardDTO> getList();
	boardDTO view(int seqno);
	void hitup(int seqno);
	int delete(int seqno);
	void insert(String p1, String p2, String p3);
}
