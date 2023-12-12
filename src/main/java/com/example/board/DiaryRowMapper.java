package com.example.board;
import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;

class DiaryRowMapper implements RowMapper<DiaryVO> {
    @Override
    public DiaryVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        DiaryVO vo = new DiaryVO();
        vo.setId(rs.getInt("id"));
        vo.setTitle(rs.getString("title"));
        vo.setMood(rs.getString("mood"));
        vo.setWeather(rs.getString("weather"));
        vo.setContent(rs.getString("content"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }

}




