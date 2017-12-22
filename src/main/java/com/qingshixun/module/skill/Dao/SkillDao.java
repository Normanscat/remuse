package com.qingshixun.module.skill.Dao;

import java.util.List;


import com.qingshixun.DTO.SkillDTO;
import com.qingshixun.core.MyBatisRepository;

@MyBatisRepository
public interface SkillDao {

	List<SkillDTO> getlist();
	
	void update(List<SkillDTO> skill);

}
