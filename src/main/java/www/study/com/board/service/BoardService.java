package www.study.com.board.service;

import java.util.List;

import www.study.com.board.domain.BoardVO;
import www.study.com.board.domain.Criteria;

public interface BoardService {
	
	public void register(BoardVO board);
	
	public BoardVO get(Long bno);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(Long bno);
	
	//public List<BoardVO> getList();
	
	public List<BoardVO> getList(Criteria cri);
	
}
