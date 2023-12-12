package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DiaryServicelmpl implements DiaryService {

    @Autowired
    DiaryDAO diaryDAO;

    @Override
    public int insertBoard(DiaryVO vo) {
        return diaryDAO.insertBoard(vo);
    }

    @Override
    public int deleteBoard(int seq) {
        return diaryDAO.deleteBoard(seq);
    }

    @Override
    public int updateBoard(DiaryVO vo) {
        return diaryDAO.updateBoard(vo);
    }

    @Override
    public DiaryVO getBoard(int seq) {
        return diaryDAO.getBoard(seq);
    }

    @Override
    public List<DiaryVO> getBoardList() {
        return diaryDAO.getBoardList();
    }
}
