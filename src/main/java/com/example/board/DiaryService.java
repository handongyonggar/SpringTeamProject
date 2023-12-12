package com.example.board;
import java.util.List;
public interface DiaryService {
    public int insertBoard(DiaryVO vo);
    public int deleteBoard(int seq);
    public int updateBoard(DiaryVO vo);
    public DiaryVO getBoard(int seq);
    public List <DiaryVO> getBoardList();
}
