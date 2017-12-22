package com.qingshixun.module.skill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingshixun.DTO.SkillDTO;
import com.qingshixun.module.skill.Dao.SkillDao;

@Service
public class Skillservice {

	@Autowired
	private SkillDao skillDao;

	public List<SkillDTO> getlist() {
		return skillDao.getlist();
	}

	public void update(List<SkillDTO> skill) {
		System.out.println("介紹對象"+skill);
		skillDao.update(skill);
	}

}
