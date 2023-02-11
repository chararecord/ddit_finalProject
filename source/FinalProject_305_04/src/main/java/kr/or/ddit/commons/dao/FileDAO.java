package kr.or.ddit.commons.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
public interface FileDAO {

	public Map<String, Object> selectFileInfo(Map<String, Object> map);
}
