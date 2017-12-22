package com.qingshixun.module.education.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingshixun.DTO.EduDTO;
import com.qingshixun.module.education.Dao.EduDao;

@Service
public class EduService {

	@Autowired
	private EduDao eduDao;

	public List<EduDTO> getEdu() {
		return eduDao.getEdu();
	}

}
