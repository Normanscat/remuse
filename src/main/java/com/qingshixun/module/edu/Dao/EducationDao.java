package com.qingshixun.module.edu.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qingshixun.DTO.EducationDTO;
import com.qingshixun.core.MyBatisRepository;

@MyBatisRepository
public interface EducationDao {
	/**
	 * 教育信息集合
	 * 
	 * @return
	 */
	List<EducationDTO> getlist();

	List<EducationDTO> getpage(@Param("index") Integer index);

	/**
	 * 根据id获取教育信息
	 * 
	 * @param id
	 * @return
	 */
	EducationDTO geteducation(@Param("id") Integer id);

	/**
	 * 新增或更新教育信息
	 * 
	 * @param educationDTO
	 */
	void saveorupdate(EducationDTO educationDTO);

	/**
	 * 根据id删除教育信息
	 * 
	 * @param id
	 */
	void delete(@Param("id") Integer id);

}
