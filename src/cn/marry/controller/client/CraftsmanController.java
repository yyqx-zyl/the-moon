package cn.marry.controller.client;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.marry.pojo.Craftsman;
import cn.marry.service.craftsman.CraftsmanService;

@Controller
public class CraftsmanController {
	@Autowired
	private CraftsmanService craftsmanService;
	
	@RequestMapping(value="/showMan",method = RequestMethod.GET)
	public String show(Model model) {
		List<Craftsman> list = craftsmanService.selectAll();
		model.addAttribute("man", list);
		if(list != null) {
			return "client/wedding_craftsman";
		}
		return "client/index";
	}
}
