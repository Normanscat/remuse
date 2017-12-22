package com.qingshixun.module.workExperience.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qingshixun.DTO.WorkExperienceDTO;
import com.qingshixun.core.MyBatisRepository;

@MyBatisRepository
public interface WorkExperienceDao {

	/**
	 * 工作经验集合
	 * 
	 * @return
	 */
	List<WorkExperienceDTO> getlist();

	/**
	 * 根据id获取工作经验
	 * 
	 * @param id
	 */
	WorkExperienceDTO getworkExperience(@Param("id") Integer id);

	/**
	 * 新增或更新工作经验
	 * 
	 * @param workExperience
	 */
	void saveorupdate(WorkExperienceDTO workExperience);

	/**
	 * 根据id删除工作经验
	 * 
	 * @param id
	 */
	void delete(@Param("id") Integer id);

}
