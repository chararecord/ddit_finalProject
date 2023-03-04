package kr.or.ddit.emp.graduationManage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.emp.graduationManage.dao.GraduationManageDAO;
import kr.or.ddit.vo.StudentVO;

@Service
public class GraduationManageServiceImpl implements GraduationManageService {

	@Inject
	private GraduationManageDAO dao;
	
	@Override
	public List<StudentVO> retrieveStudentList() {
		List<StudentVO> studentList = dao.selectStudentList();
		return studentList;
	}

}
