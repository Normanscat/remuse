package com.qingshixun.module.workExperience.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingshixun.DTO.WorkExperienceDTO;
import com.qingshixun.module.workExperience.Dao.WorkExperienceDao;

@Service
public class WorkExoerienceService {

	@Autowired
	private WorkExperienceDao workExperienceDao;

	/**
	 * 工作经验集合
	 * 
	 * @return
	 */
	public List<WorkExperienceDTO> getlist() {
		return workExperienceDao.getlist();
	}

	/**
	 * 根据id获取工作经验对象
	 * 
	 * @param id
	 * @return
	 */
	public WorkExperienceDTO getworkExperience(Integer id) {
		return workExperienceDao.getworkExperience(id);
	}

	/**
	 * 保存或更新工作经验
	 * 
	 * @param workExperience
	 */
	public void saveorupdate(WorkExperienceDTO workExperience) {
		workExperienceDao.saveorupdate(workExperience);
	}

	/**
	 * 根据id删除工作经验对象
	 * 
	 * @param id
	 */
	public void delete(Integer id) {
		workExperienceDao.delete(id);
	}
}
