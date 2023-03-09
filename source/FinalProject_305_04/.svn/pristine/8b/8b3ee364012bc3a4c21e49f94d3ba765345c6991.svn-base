package kr.or.ddit.emp.graduationManage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.emp.graduationManage.dao.GraduationManageDAO;
import kr.or.ddit.vo.GradFulVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.StudentVO;

@Service
public class GraduationManageServiceImpl implements GraduationManageService {

	@Inject
	private GraduationManageDAO dao;

	@Override
	public void retrieveStudentList(PagingVO<StudentVO> pagingVO) {
		pagingVO.setTotalRecord(dao.selectTotalRecord(pagingVO));
		List<StudentVO> studentList = dao.selectStudentList(pagingVO);
		pagingVO.setDataList(studentList);
	}

	@Override
	public int modifyGradFul(GradFulVO gradFulVO) {
		int rowcnt = dao.updateGradFul(gradFulVO);
		return rowcnt;
	}

	@Override
	public void retrieveGradStudentList(PagingVO<StudentVO> pagingVO) {
		pagingVO.setTotalRecord(dao.selectGradTotalRecord(pagingVO));
		List<StudentVO> gradStudentList = dao.selectGradStudentList(pagingVO);
		pagingVO.setDataList(gradStudentList);
	}

}
