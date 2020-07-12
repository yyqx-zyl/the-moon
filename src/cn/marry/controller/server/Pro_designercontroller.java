package cn.marry.controller.server;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.marry.pojo.Category;
import cn.marry.pojo.Designer;
import cn.marry.pojo.Prodress;
import cn.marry.service.Category.CategoryService;
import cn.marry.service.Designer.DesignerService;
import cn.marry.service.img.ImgService;

@Controller
public class Pro_designercontroller {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private DesignerService designerService;
	
	@RequestMapping(value = "/getdesignerAll",method = RequestMethod.GET)
	public Object getdesignerAll(@RequestParam(name = "currpage", defaultValue = "1") int currpage,
	        Model model,HttpSession session) {
		PageHelper.startPage(currpage, 4);
		List<Designer> list=designerService.getList();
		PageInfo pageinfo=new PageInfo(list,4);
		List<Category> category=categoryService.getcategory();
		session.setAttribute("cate", category);
		model.addAttribute("designer",pageinfo);
		return "server/views/designer";
	}
	
	//清除
			@RequestMapping(value = "/dclear",method = RequestMethod.GET)
			public void clear(HttpSession session) {
				session.removeAttribute("findedesigner");
			}
			
		//添加
		@RequestMapping(value = "/adddesigner",method = RequestMethod.POST)
		@ResponseBody
			public Object adddress(Designer Designer,HttpSession session) {
				Map<String, Integer> map = new HashMap<String, Integer>();
				String productImage = (String)session.getAttribute("productImage");
				Designer.setSrc(productImage);
				session.removeAttribute("productImage");
				Designer.setCreationDate(new Date());	
				boolean isok=designerService.addPro(Designer);
				if (isok) {
		            map.put("code", 1);
		            System.out.println("鎴愬姛锛侊紒锛侊紒锛侊紒锛侊紒锛侊紒锛�"+Designer);
		        }else {
		            map.put("code", 0);
		        }
		        return JSON.toJSONString(map);
			}
		
		
		//删除
		@RequestMapping(value = "/deletedesignerById",method = RequestMethod.GET)
		@ResponseBody
		public Object deletedressById(@RequestParam("desid") String desid,HttpSession session) {
			Map<String, Integer> map = new HashMap<String, Integer>();
			//int uid=((Users)session.getAttribute("loginUser")).getUid();
			boolean isok=designerService.deletePro(desid);
			if (isok) {
	            map.put("code", 1);
	            System.out.println("鎴愬暐鎵撴硶鏄殑鍙戠敓锛侊紒锛侊紒锛侊紒锛侊紒锛侊紒锛�"+desid);
	        }else {
	            map.put("code", 0);
	        }
	        return JSON.toJSONString(map);
		}
		
		
		
		//查找
		@RequestMapping(value = "/finddesignerById",method = RequestMethod.GET)
		public String finddressById(@RequestParam("desid") String desid,HttpSession session) {
			Designer Designer=designerService.findById(desid);
			if (Designer!=null) {
				session.setAttribute("findedesigner", Designer);
				System.out.println("鍙戣揪鍦版柟鍜栧鍙戯細"+Designer);
			}	
			return "server/views/pro_add2";
		}
		
		//修改
		@RequestMapping(value = "/updatedesigner",method = RequestMethod.POST)
		@ResponseBody
		public Object updatedress(Designer Designer,HttpSession session) {
			Map<String, Integer> map = new HashMap<String, Integer>();
			String productImage = (String)session.getAttribute("productImage");
			Designer.setSrc(productImage);
			session.removeAttribute("productImage");
			Designer.setCreationDate(new Date());	
			boolean isok=designerService.updatePro(Designer);
			if (isok) {
	            map.put("code", 1);
	            session.removeAttribute("findedesigner");
	        }else {
	            map.put("code", 0);
	        }
	        return JSON.toJSONString(map);
		}
		
		
	//uploaddesigner     /Users/Zylyyqx/Desktop/实训/The_Moon/WebContent/static/images/designer/
		 //涓婁紶鍥剧墖
		  @RequestMapping(value="/uploaddesigner",method=RequestMethod.POST)
	  @ResponseBody
	  public Object uploaddesigner(@RequestParam("file") MultipartFile file,HttpSession session) {
			// 判断上传文件是否为空
		        Map<String, Integer> map = new HashMap<String, Integer>();
		        // 定义上传文件的路径
		        String filePath = session.getServletContext().getRealPath("/Java作业/作业/The_Moon/WebContent/static/images/designer/");
		        if(!file.isEmpty()) {
		            // 获得原文件名
		            String oldName = file.getOriginalFilename();
		            // 对文件名进行一个处理
		            String newFileName = oldName;
		            // 创建上传文件对象
		            File saveFile = new File(filePath, newFileName);
		            // 判断文件对象是否存在，存在就创建
		            if (!saveFile.exists()) {
		                saveFile.mkdirs();
		            }
		            // 将文件进行上传
		            try {
		                file.transferTo(saveFile);
		                map.put("code",1);
		            } catch (IllegalStateException e) {
		                e.printStackTrace();
		                map.put("code",0);
		            } catch (IOException e) {
		                e.printStackTrace();
		                map.put("code",0);
		            }
		            
		            // 将文件保存到本地文件夹中 
		            try {
		                DataInputStream dis = new DataInputStream(new FileInputStream(saveFile));
		                DataOutputStream dos = new DataOutputStream(new FileOutputStream("E:/Java作业/作业//The_Moon/WebContent/static/images/designer/"+newFileName));
		                int len = -1;
		                while ((len = dis.read()) != -1) {
		                    dos.write(len);
		                }
		                dos.close();
		                dis.close();
		                // 将上传文件保存到session中
		                String productImage="images/designer/"+newFileName;
		                session.setAttribute("productImage", productImage);
		            } catch (FileNotFoundException e) {
		                e.printStackTrace();
		            } catch (IOException e) {
		                e.printStackTrace();
		            }
		        }
		        return JSON.toJSONString(map);
		        
		        
	  }
		
}