package admin.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	// ----------------------- 공지사항 영역 시작 -----------------------
	
	public int count(NoticeVo vo) {
		return sqlSessionTemplate.selectOne("board.count", vo);
	}
	
	public List<NoticeVo> selectList(NoticeVo vo) {
		return sqlSessionTemplate.selectList("board.selectList", vo);
	}
	
	public int insert(NoticeVo vo) {
		int r = -1;
		try {
			r = sqlSessionTemplate.insert("board.insert", vo);
		} catch (Exception e) {
			r = 0;
			System.out.println(e.getMessage());
		}
		return r;
	}
	
	public NoticeVo selectOne(int notice_no) {
		return sqlSessionTemplate.selectOne("board.selectOne", notice_no);
	}
	
	public int updateReadcount(int notice_no) {
		return sqlSessionTemplate.update("board.updateReadcount", notice_no);
	}
	
	public int update(NoticeVo vo) {
		return sqlSessionTemplate.update("board.update", vo);
	}	
	
	public int delete(String notice_no) {		
		return sqlSessionTemplate.delete("board.delete", notice_no);
	}
	
	
	// ----------------------- 공지사항 영역 끝 -----------------------
}
