package kr.or.ddit.student.consult.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.student.consult.dao.StudentConsultDAO;
import kr.or.ddit.vo.ConsultVO;
import kr.or.ddit.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class StudentConsultServiceImpl implements StudentConsultService {
	
	@Inject
	private StudentConsultDAO consultDAO;

	
	@Override
	public int createConsult(ConsultVO consult) {
		return 0;
	}

//	@Override
//	public void retreiveConsultList(PagingVO<ConsultVO> pagingVO) {
//		Map<String, Object> map = new HashMap<String, Object>();
//		ConsultVO consultVO = new ConsultVO();
//		
//		map.put("pagingVO", pagingVO);
//		map.put("consultVO", consultVO);
//		int totalRecord = consultDAO.selectTotalRecord(pagingVO);
//		pagingVO.setTotalRecord(totalRecord);
//		List<ConsultVO> consultList = consultDAO.selectConsultList(pagingVO);
//		pagingVO.setDataList(consultList);
//	}
	@Override
	public void retreiveConsultList(PagingVO<ConsultVO> pagingVO) {
		Map<String, Object> map = new HashMap<String, Object>();
		ConsultVO consultVO = new ConsultVO();
		
		map.put("paging", pagingVO);
		map.put("consult", consultVO);
		
		int totalRecord = consultDAO.selectTotalRecord(pagingVO);
		pagingVO.setTotalRecord(totalRecord);
		List<ConsultVO> consultList = consultDAO.selectConsultList(map);
		pagingVO.setDataList(consultList);
	}

	@Override
	public ConsultVO retrieveConsult(ConsultVO consult) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int removeConsult(String consId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
