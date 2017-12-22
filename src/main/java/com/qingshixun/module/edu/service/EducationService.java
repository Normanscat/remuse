package com.qingshixun.module.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingshixun.DTO.EducationDTO;
import com.qingshixun.module.edu.Dao.EducationDao;

@Service
public class EducationService {

	@Autowired
	private EducationDao educationDao;

	/**
	 * 首页
	 * 
	 * @return
	 */
	public List<EducationDTO> getlist() {
		return educationDao.getlist();
	}

	public List<EducationDTO> getpage(Integer index) {
		return educationDao.getpage(index);
	}
	
	/**
	 * 根据id获取信息
	 * 
	 * @param id
	 * @return
	 */
	public EducationDTO geteducation(Integer id) {
		return educationDao.geteducation(id);
	}

	/**
	 * 新增或更新
	 * 
	 * @param education
	 */
	public void savedanupdate(EducationDTO education) {
		educationDao.saveorupdate(education);
	}

	/**
	 * 删除
	 * 
	 * @param id
	 */
	public void delete(Integer id) {
		educationDao.delete(id);

	}

}
