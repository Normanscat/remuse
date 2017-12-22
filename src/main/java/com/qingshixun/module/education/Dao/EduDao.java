package com.qingshixun.module.education.Dao;

import java.util.List;

import com.qingshixun.DTO.EduDTO;
import com.qingshixun.core.MyBatisRepository;

@MyBatisRepository
public interface EduDao {

	/**
	 * 获取学历信息
	 * 
	 * @return
	 */
	List<EduDTO> getEdu();

}
