package kr.or.ddit.student.graduation.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.StudentVO;

/**
 * @author 장은호
 * @Since 2023. 2. 24.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 24.       장은호        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface GraduationManageDAO {
	
	public List<StudentVO> studentList();
	

}
