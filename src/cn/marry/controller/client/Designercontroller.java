package cn.marry.controller.client;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.marry.pojo.Category;
import cn.marry.pojo.Designer;
import cn.marry.pojo.Img;
import cn.marry.service.Category.CategoryService;
import cn.marry.service.Designer.DesignerService;
import cn.marry.service.img.ImgService;

@Controller
public class Designercontroller {
	@Autowired
	private DesignerService designerService;
	@Autowired
	private ImgService imgService;
	@Autowired
	private CategoryService categoryService;
	
	//获取全部风格信息
	@RequestMapping(value = "/getdesignerList",method = RequestMethod.GET)
	public String getList(
			@RequestParam(name = "currpage",required = false,defaultValue = "1") int currpage,
			Model model){
			PageHelper.startPage(currpage, 4);
			List<Designer> list=designerService.getList();
			PageInfo pageInfo=new PageInfo(list,4);
			List<Category> category=categoryService.getcategory();
			model.addAttribute("cate",category);
			model.addAttribute("designer",pageInfo);
			return "client/designer";
		
	}
	
	//根据风格查找
	//@RequestParam(name = "caid") int caid,
	@RequestMapping(value = "/tgetdesignerList",method = RequestMethod.GET)
	public String getdList(@RequestParam(name = "caid") int caid,Model model){
		List<Designer> list=designerService.getList1(caid);
		List<Category> category=categoryService.getcategory();
			model.addAttribute("cate",category);
			model.addAttribute("designer",list);
			return "client/designer1";
		
	}
	
	
	
	//根据id查找
	@RequestMapping(value = "/getdesignerByid",method = RequestMethod.GET)
	public String getdesignerByid(@RequestParam("desid") String desid,Model model) {
		Designer dress=designerService.findById(desid);
		List<Img> imgs=imgService.selectByPrimaryKey(desid);
		model.addAttribute("designergetByid", dress);
		model.addAttribute("dimgs", imgs);
		return "client/designer_details";
	}
	
	
	
	
}
