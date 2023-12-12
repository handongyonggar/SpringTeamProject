package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DiaryDAO
{

    @Autowired
    SqlSession sqlSession ;

    public int insertBoard(DiaryVO vo) {
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public int deleteBoard(int seq) {
        int result = sqlSession.delete("Board.deleteBoard", seq);
        return result;
    }

    public int updateBoard(DiaryVO vo) {
        int result = sqlSession.update("Board.updateBoard", vo);
        return result;
    }

    public DiaryVO getBoard(int seq) {
        DiaryVO result = sqlSession.selectOne("Board.getBoard", seq);
        return result;
    }

    public List<DiaryVO> getBoardList() {
        List<DiaryVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }
}
