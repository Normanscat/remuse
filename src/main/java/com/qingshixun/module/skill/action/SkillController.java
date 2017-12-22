package com.qingshixun.module.skill.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qingshixun.DTO.SkillDTO;
import com.qingshixun.module.skill.service.Skillservice;

@Controller
@RequestMapping("/skill")
public class SkillController {

	@Autowired
	private Skillservice skillService;

	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("skill", skillService.getlist());
		return "/skill/list";
	}

	@RequestMapping("/edit")
	public String skill(Model model) {
		model.addAttribute("skill", skillService.getlist());
		return "/skill/edit";
	}

	@RequestMapping("/update")
	@ResponseBody
	public String update(@RequestBody List<SkillDTO> skill) {
		System.out.println("接收到的对象集合为" + skill);
		skillService.update(skill);
		return "success";
	}

}
