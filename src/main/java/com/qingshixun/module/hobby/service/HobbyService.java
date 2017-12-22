package com.qingshixun.module.hobby.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingshixun.DTO.HobbyDTO;
import com.qingshixun.module.hobby.Dao.HobbyDao;

@Service
public class HobbyService {

	@Autowired
	private HobbyDao hobbyDao;

	/**
	 * 爱好集合
	 * 
	 * @return
	 */
	public List<HobbyDTO> getHobby() {
		return hobbyDao.getHobby();
	}

	/**
	 * 批量更新爱好
	 * 
	 * @param ids
	 * @param names
	 */
	public void updatehobby(String[] names, Integer[] ids) {
		System.out.println("跳到了s层啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊");
		hobbyDao.updatehobby(names, ids);
	}
}
