package com.qingshixun.module.edu.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qingshixun.DTO.EducationDTO;
import com.qingshixun.module.edu.service.EducationService;

@Controller
@RequestMapping("/education")
public class EducationControllers {

	@Autowired
	private EducationService educationService;

	/**
	 * 首页
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("education", educationService.getlist());
		return "/education/list";
	}

	/**
	 * 教育经历展示页面
	 * 
	 * @return
	 */
	@RequestMapping("/show")
	public String show(Model model) {
		model.addAttribute("education", educationService.getpage(1));
		return "/education/show";
	}
	
	@RequestMapping("/page")
	public String page(Model model,@RequestParam("index")Integer index) {
		
		model.addAttribute("education", educationService.getpage(index));
		return "/education/show";
	}

	/**
	 * 跳转至添加页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/add")
	public String add(Model model) {
		return "/education/addorupdate";
	}

	/**
	 * 跳轉至编辑页面
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping("/edit")
	public String edit(Model model, @RequestParam("id") Integer id) {
		model.addAttribute("education", educationService.geteducation(id));
		return "/education/addorupdate";
	}

	/**
	 * 新增或更新教育经历
	 * 
	 * @param educationDTO
	 * @return
	 */
	@RequestMapping("/addorupdate")
	@ResponseBody
	public String addorupdate(@ModelAttribute EducationDTO educationDTO) {
		System.out.println("进入到c层啊啊啊啊啊");
		educationService.savedanupdate(educationDTO);
		return "success";
	}

	/**
	 * 删除教育经历
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(Model model, @RequestParam("id") Integer id) {
		educationService.delete(id);
		model.addAttribute("education", educationService.getlist());
		return "/education/show";
	}

}
