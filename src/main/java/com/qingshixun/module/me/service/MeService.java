package com.qingshixun.module.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingshixun.DTO.MeDTO;
import com.qingshixun.module.me.Dao.MeDao;

@Service
public class MeService {

	@Autowired
	private MeDao meDao;

	/**
	 * 獲取我的信息
	 * 
	 * @return
	 */
	public List<MeDTO> getMe() {
		return meDao.getMe();
	}
	
	/**
	 * 更新我的信息
	 * @param meDTO
	 */
	public void updateMe(MeDTO meDTO) {
		meDao.updateMe(meDTO);
	}

}
