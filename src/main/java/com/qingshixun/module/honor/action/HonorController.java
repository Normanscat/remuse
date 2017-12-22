package com.qingshixun.module.honor.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qingshixun.DTO.HonorDTO;
import com.qingshixun.module.honor.service.HonorService;

@Controller
@RequestMapping("/honor")
public class HonorController {

	@Autowired
	private HonorService honorService;

	/**
	 * 首页
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("honor", honorService.getHonor());
		return "/honor/list";
	}

	/**
	 * 展示页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/show")
	public String show(Model model) {
		model.addAttribute("honor", honorService.getHonor());
		return "/honor/show";
	}

	/**
	 * 根据id删除荣誉
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(Model model, @RequestParam("id") Integer id) {
		honorService.delete(id);
		model.addAttribute("honor", honorService.getHonor());
		return "/honor/show";
	}

	/**
	 * 根据id获取荣誉对象至编辑页面
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping("/edit")
	public String edit(Model model, @RequestParam("id") int id) {
		model.addAttribute("honor", honorService.gethonor(id));
		return "/honor/AddOrUpdate";
	}

	/**
	 * 跳转至添加页面
	 * 
	 * @return
	 */
	@RequestMapping("/add")
	public String add() {
		return "/honor/AddOrUpdate";
	}

	/**
	 * 新增或更新荣誉
	 * 
	 * @param honor
	 * @return
	 */
	@RequestMapping("/addorupdate")
	@ResponseBody
	public String addorupdate(@ModelAttribute HonorDTO honor) {
		System.out.println("进入到C层了啊啊啊啊啊" + honor);
		honorService.saveorupdate(honor);
		return "success";
	}
}
