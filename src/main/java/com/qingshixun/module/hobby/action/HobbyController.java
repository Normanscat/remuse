package com.qingshixun.module.hobby.action;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qingshixun.module.hobby.service.HobbyService;

@Controller
@RequestMapping("/hobby")
public class HobbyController {

	@Autowired
	private HobbyService hobbyService;

	/**
	 * 首頁
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("hobby", hobbyService.getHobby());
		return "/hobby/list";
	}

	/**
	 * 编辑页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/show")
	public String show(Model model) {
		model.addAttribute("hobby", hobbyService.getHobby());
		return "/hobby/show";
	}

	/**
	 * 批量更新爱好
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/update")
	public String update(@RequestParam("names[]") String[] names, @RequestParam("ids[]") Integer[] ids) {
		hobbyService.updatehobby(names, ids);
		return null;
	}

}
