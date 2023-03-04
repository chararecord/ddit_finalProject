package kr.or.ddit.student.consult.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.student.consult.dao.StudentConsultDAO;
import kr.or.ddit.vo.ConsultVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class StudentConsultServiceImpl implements StudentConsultService {
	
	@Inject
	private StudentConsultDAO consultDAO;

	
	@Override
	public int createConsult(ConsultVO consult) {
		int rowcnt = consultDAO.insertConsult(consult);
		return rowcnt;
	}

	@Override
	public void retrieveConsultList(PagingVO<ConsultVO> pagingVO, String stdId) {
		Map<String, Object> map = new HashMap<String, Object>();
		ConsultVO consultVO = new ConsultVO();
		
		map.put("paging", pagingVO);
		map.put("consult", consultVO);
		consultVO.setStdId(stdId);
		
		int totalRecord = consultDAO.selectTotalRecord(stdId);
		pagingVO.setTotalRecord(totalRecord);
		List<ConsultVO> consultList = consultDAO.selectConsultList(map);
		pagingVO.setDataList(consultList);
	}

	@Override
	public ConsultVO retrieveConsult(String consId) {
		ConsultVO consult = consultDAO.selectConsult(consId);
		if(consult == null) {
			throw new RuntimeException();
		}
		return consult;
	}

	@Override
	public int removeConsultState(String consId) {
		int rowcnt = consultDAO.deleteConsultState(consId);
		return rowcnt;
	}

	@Override
	public List<ProfessorVO> retrieveProfList(String stdId) {
		List<ProfessorVO> profList = consultDAO.selectProfList(stdId);
		return profList;
	}

}
