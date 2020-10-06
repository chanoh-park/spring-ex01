package www.study.com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import www.study.com.board.domain.Criteria;
import www.study.com.board.domain.ReplyVO;
import www.study.com.board.mapper.ReplyMapper;

@Service
@Log4j
public class ReplyService {

	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	public int insert(ReplyVO vo) {
		log.info("insert......." + vo);
		
		return mapper.insert(vo);
	}
	
	public ReplyVO read(Long rno) {
		log.info("read........" + rno);
		
		return mapper.read(rno);
	}
	
	public int update(ReplyVO vo) {
		log.info("update......." + vo);
		
		return mapper.update(vo);
	}
	
	public int delete(Long rno) {
		log.info("delete........" + rno);
		
		return mapper.delete(rno);
	}
	
	public List<ReplyVO> getListWithPaging(Criteria cri, Long bno) {
		log.info("get Reply List of Board " + bno);
		
		return mapper.getListWithPaging(cri, bno);
	}
	
}
