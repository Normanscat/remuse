package com.qingshixun.module.workstate.Dao;

import java.util.List;

import com.qingshixun.DTO.WorkstateDTO;
import com.qingshixun.core.MyBatisRepository;

@MyBatisRepository
public interface WorkStateDao {

	List<WorkstateDTO>getlist();

}
