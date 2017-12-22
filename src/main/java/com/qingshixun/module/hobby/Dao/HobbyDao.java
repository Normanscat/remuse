package com.qingshixun.module.hobby.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qingshixun.DTO.HobbyDTO;
import com.qingshixun.core.MyBatisRepository;

@MyBatisRepository
public interface HobbyDao {

	/**
	 * 获取爱好集合
	 * 
	 * @return
	 */
	List<HobbyDTO> getHobby();

	/**
	 * 批量更新爱好
	 * 
	 * @param ids
	 * @param names
	 */
	void updatehobby(@Param(value = "names") String[] names, @Param(value = "ids") Integer[] ids);

}
