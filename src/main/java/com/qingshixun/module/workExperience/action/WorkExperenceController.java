package com.qingshixun.module.workExperience.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qingshixun.DTO.WorkExperienceDTO;
import com.qingshixun.module.workExperience.service.WorkExoerienceService;

@Controller
@RequestMapping("/workexperence")
public class WorkExperenceController {

	@Autowired
	private WorkExoerienceService workExoerienceService;

	/**
	 * 工作经验集合
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("workExoerience", workExoerienceService.getlist());
		return "/workexperence/list";
	}

	/**
	 * 展示页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/show")
	public String show(Model model) {
		model.addAttribute("workExoerience", workExoerienceService.getlist());
		return "/workexperence/show";
	}

	@RequestMapping("/add")
	public String add() {
		return "/workexperence/addorupdate";
	}

	@RequestMapping("/edit")
	public String edit(Model model, @RequestParam("id") Integer id) {
		model.addAttribute("workexperence", workExoerienceService.getworkExperience(id));
		return "/workexperence/addorupdate";
	}

	@RequestMapping("/addorupdate")
	@ResponseBody
	public String addorupdate(@ModelAttribute WorkExperienceDTO workExperience) {
		workExoerienceService.saveorupdate(workExperience);
		return "success";
	}

	@RequestMapping("/delete")
	public String delete(Model model,@RequestParam("id") Integer id) {
		workExoerienceService.delete(id);
		model.addAttribute("workExoerience", workExoerienceService.getlist());
		return "/workexperence/show";
	}
}
