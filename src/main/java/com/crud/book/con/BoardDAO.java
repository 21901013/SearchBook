package com.crud.book.con;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.crud.book.*;
import org.springframework.jdbc.core.*;

public class BoardDAO {
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	private JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	private final String Book_INSERT = "insert into Book (title, author, location) values (?,?,?)";
	private final String Book_UPDATE = "update Book set title=?, authorr=?, location=? where id=?";
	private final String Book_DELETE = "delete from Book  where id=?";
	private final String Book_GET = "select * from Book  where id=?";
	private final String Book_LIST = "select * from Book order id desc";

	public int insertBoard(BoardVO vo) {
		return template.update(Book_INSERT, 
				new Object[] {vo.getTitle(),vo.getAuthor(),vo.getDate(), vo.getLocation()});
	}

	public int deleteBoard(BoardVO vo) {
		return template.update(Book_DELETE, new Object [] {});
	}
	
	public int updateBoard(BoardVO vo) {
		return template.update(Book_UPDATE,
				new Object[] {vo.getTitle(),vo.getAuthor(),vo.getDate(), vo.getLocation()});
		}
	
	@SuppressWarnings("deprecation")
	public BoardVO getBoard(int id) {
		return template.queryForObject(Book_GET, 
				new Object [] {id}, new BeanPropertyRowMapper<BoardVO>(BoardVO.class));
	}
	
	public List<BoardVO> getBoardList(){
		return template.query(Book_LIST, new RowMapper<BoardVO>(){
			
			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				BoardVO data = new BoardVO();
				data.setId(rs.getInt("id"));
				data.setTitle(rs.getString("title"));
				data.setAuthor(rs.getString("author"));
				data.setDate(rs.getDate("date"));
				data.setLocation(rs.getString("location"));
				return data;
			}
		});
	}
}
