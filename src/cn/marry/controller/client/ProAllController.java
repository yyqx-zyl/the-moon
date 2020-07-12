package cn.marry.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.marry.pojo.Img;
import cn.marry.pojo.Pro;
import cn.marry.pojo.Prodress;
import cn.marry.pojo.Promarry;
import cn.marry.service.Category.CategoryService;
import cn.marry.service.img.ImgService;
import cn.marry.service.pro.ProService;
import cn.marry.service.prodress.ProdressService;
import cn.marry.service.promarry.PromarryService;

@Controller
public class ProAllController {
	@Autowired
	private ProdressService prodressService;
	@Autowired
	private PromarryService promarryService;
	@Autowired 
	private ImgService imgService;
	@Autowired
	private ProService proService;
	@Autowired
	private CategoryService categoryService;
	/*-------------婚纱------------------------*/
	//获得所有婚纱信息，分页显示
	@RequestMapping(value = "/getdressList",method = RequestMethod.GET)
	public String getdressList(
			@RequestParam(name = "currpage",required = false,defaultValue = "1") int currpage,Model model){
		PageHelper.startPage(currpage, 6);
		List<Prodress> list=prodressService.getProList();
		PageInfo pageInfo=new PageInfo(list,6);
		model.addAttribute("prodress",pageInfo);
		return "client/pro_dress";
	}
	
	//根据id查询商品信信息   xml里查询了两张表的信息，商品详细和图片
	@RequestMapping(value = "/getdressByid",method = RequestMethod.GET)
	public String getdressByid(@RequestParam("pid") String pid,  HttpSession session,HttpServletRequest req,Model model) {
		Prodress dress=prodressService.findById(pid);
		List<Img> imgs=imgService.selectByPrimaryKey(pid);
		model.addAttribute("dressgetByid", dress);
		model.addAttribute("imgs", imgs);
		return "client/pro_details";
	}
	
	
	
	/*-------------婚礼------------------------*/
	@RequestMapping(value = "/getmarryList",method = RequestMethod.GET)
	public String getmarryList(
			@RequestParam(name = "currpage",required = false,defaultValue = "1") int currpage,Model model,HttpSession session){
		PageHelper.startPage(currpage, 6);
		List<Promarry> list=promarryService.selectAll();
		PageInfo pageInfo=new PageInfo(list,6);
		model.addAttribute("promarry",pageInfo);
		return "client/pro_marry";
	}
	
	//根据id查询商品信信息   xml里查询了两张表的信息，商品详细和图片
	@RequestMapping(value = "/getmarryByid",method = RequestMethod.GET)
	public String getmarryByid(@RequestParam("mid") String mid,  HttpSession session,Model model) {
		Promarry marry=promarryService.selectByPrimaryKey(mid);
		List<Img> imgs=imgService.selectByPrimaryKey(mid);
		model.addAttribute("marrygetByid", marry);
		model.addAttribute("mimgs", imgs);
		return "client/pro_details1";
	}
	
	//查询pro表展示于主页面
	 @RequestMapping(value = "/getProList",method = RequestMethod.GET)
	 public String type(@RequestParam(name="currpage",required = false,defaultValue = "1") int currpage,
			 @RequestParam(name="caid",required=false,defaultValue="0") int caid,
			 Model model) {
		 //调用Pagehelp里的方法,就是取获得分页的数据
		 PageHelper.startPage(currpage,9);
		 List<Pro> plist=proService.findById(caid);
		 //创建一个分页类的实例
		 PageInfo pageInfo=new PageInfo(plist,9);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("calist", categoryService.getcategory());
		return "client/index";
	}
	
	
	
	
	
}
