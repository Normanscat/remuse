/*****************************************************************************
 * Copyright (c) 2016, www.qingshixun.com
 *
 * All rights reserved
 *
*****************************************************************************/
package com.qingshixun.module.index;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qingshixun.module.me.service.MeService;

@Controller
@RequestMapping("/index")
public class IndexController {

	@Autowired
	private MeService meService;

	@RequestMapping("")
	public String main(Model model) {
		model.addAttribute("me", meService.getMe());
		return "/index";
	}

	@RequestMapping("/contact")
	public String contact() {
		return "/contact/list";
	}

}
