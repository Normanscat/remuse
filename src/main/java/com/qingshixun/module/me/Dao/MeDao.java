package com.qingshixun.module.me.Dao;

import java.util.List;

import com.qingshixun.DTO.MeDTO;
import com.qingshixun.core.MyBatisRepository;

@MyBatisRepository
public interface MeDao {

	/**
	 * 获取关于我的信息
	 * 
	 * @return
	 */
	List<MeDTO> getMe();

	/**
	 * 更新用户
	 * 
	 * @param meDto
	 */
	void updateMe(MeDTO meDto);

}
