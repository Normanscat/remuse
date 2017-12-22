package com.qingshixun.module.workstate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingshixun.DTO.WorkstateDTO;
import com.qingshixun.module.workstate.Dao.WorkStateDao;

@Service
public class WorkStateService {

	@Autowired
	private WorkStateDao workStateDao;

	public List<WorkstateDTO> getlist() {
		return workStateDao.getlist();
	}

}
