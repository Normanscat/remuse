package com.qingshixun.module.honor.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qingshixun.DTO.HonorDTO;
import com.qingshixun.core.MyBatisRepository;

@MyBatisRepository
public interface HonorDao {

	/**
	 * 荣誉集合
	 * 
	 * @return
	 */
	List<HonorDTO> getHonor();

	/**
	 * 删除荣誉
	 * 
	 * @param id
	 */
	void deleteHonor(@Param("id") int id);

	/**
	 * 根据id获取荣誉
	 * 
	 * @param id
	 * @return
	 */
	HonorDTO gethonor(@Param("id") int id);

	/**
	 * 新增或更新榮譽
	 * 
	 * @param honor
	 */
	void saveorupdate(HonorDTO honor);
}
