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

import cn.marry.pojo.RealPhoto;
import cn.marry.service.realphoto.RealPhotoService;

@Controller
public class RealphotoController {

	@Autowired
	private RealPhotoService realphotoService;
	
	 @RequestMapping(value = "/getAllList",method = RequestMethod.GET)
	 public String type(@RequestParam(name="currpage",required = false,defaultValue = "1") int currpage,
			 Model model) {
		 //调用Pagehelp里的方法,就是取获得分页的数据
		 PageHelper.startPage(currpage,6);
		 List<RealPhoto> list=realphotoService.getrealthotolist();
		 //创建一个分页类的实例
		 PageInfo pageInfo=new PageInfo(list,6);
		model.addAttribute("pageInfo",pageInfo);
		return "client/real_photos";
	}
}
