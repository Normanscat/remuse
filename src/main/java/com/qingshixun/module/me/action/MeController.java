
package com.qingshixun.module.me.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qingshixun.DTO.MeDTO;
import com.qingshixun.module.education.service.EduService;
import com.qingshixun.module.me.service.MeService;
import com.qingshixun.module.workstate.service.WorkStateService;

@Controller
@RequestMapping("/me")
public class MeController {

	@Autowired
	private MeService meService;

	@Autowired
	private EduService eduService;

	@Autowired
	private WorkStateService workStateService;

	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("me", meService.getMe());
		return "/Me/list";
	}

	@RequestMapping("/edit")
	public String edit(Model model) {
		model.addAttribute("me", meService.getMe());
		model.addAttribute("edu", eduService.getEdu());
		model.addAttribute("workstate", workStateService.getlist());
		return "/Me/edit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public String update(@ModelAttribute MeDTO meDTO) {
		meService.updateMe(meDTO);
		return "success";
	}
}
