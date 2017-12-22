package com.qingshixun.module.honor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingshixun.DTO.HonorDTO;
import com.qingshixun.module.honor.Dao.HonorDao;

@Service
public class HonorService {

	@Autowired
	private HonorDao honorDao;

	/**
	 * 荣誉集合
	 * 
	 * @return
	 */
	public List<HonorDTO> getHonor() {
		return honorDao.getHonor();
	}

	public void delete(Integer id) {
		honorDao.deleteHonor(id);
	}

	public HonorDTO gethonor(int id) {
		return honorDao.gethonor(id);
	}

	public void saveorupdate(HonorDTO honor) {
		honorDao.saveorupdate(honor);
	}
	
}
