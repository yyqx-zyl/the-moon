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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

import cn.marry.pojo.Craftsman;
import cn.marry.pojo.Promarry;
import cn.marry.pojo.RealPhoto;
import cn.marry.pojo.Users;
import cn.marry.service.craftsman.CraftsmanService;
import cn.marry.service.img.ImgService;
import cn.marry.service.realphoto.RealPhotoService;

@Controller
public class CraftsmanManager {

	@Autowired
	private CraftsmanService craftsmanService;
	
	
	//查找
	@RequestMapping(value = "/craftsmanList",method = RequestMethod.GET)
	public Object getAll(@RequestParam(name = "currpage", defaultValue = "1") int currpage,
	        Model model) {
		PageHelper.startPage(currpage, 4);
		List<Craftsman> list=craftsmanService.selectAll();
		PageInfo pageinfo=new PageInfo(list,4);
		model.addAttribute("Cman",pageinfo);
		return "server/views/craftsman";
	}
  		
	//清除
	@RequestMapping(value = "/clearCman",method = RequestMethod.GET)
	public void clear(HttpSession session) {
		session.removeAttribute("findeCman");
	}
	
	
	//添加
	@RequestMapping(value = "/addCman",method = RequestMethod.POST)
	@ResponseBody
		public Object adddress(Craftsman Cman,HttpSession session) {
			Map<String, Integer> map = new HashMap<String, Integer>();
			int uid=((Users)session.getAttribute("loginUser")).getUid();
			String cPath = (String)session.getAttribute("cPath");
			Cman.setcPath(cPath);
			session.removeAttribute("cPath");
			boolean isok=craftsmanService.insert(Cman);
			if (isok) {
	            map.put("code", 1);
	        }else {
	            map.put("code", 0);
	        }
	        return JSON.toJSONString(map);
		}
	
	
	
	//删除
	@RequestMapping(value = "/deleteCmanById",method = RequestMethod.GET)
	@ResponseBody
	public Object deletedrealById(@RequestParam("cId") String id,HttpSession session) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		boolean isok=craftsmanService.deleteByPrimaryKey(id);
		if (isok) {
            map.put("code", 1);
        }else {
            map.put("code", 0);
        }
        return JSON.toJSONString(map);
	}
	
	
	
	//寻找
	@RequestMapping(value = "/findCmanById",method = RequestMethod.GET)
	public String finddressById(@RequestParam("cId") String id,HttpSession session) {
		Craftsman Cman=craftsmanService.selectByPrimaryKey(id);
		if (Cman!=null) {
			session.setAttribute("findeCman", Cman);
		}	
		return "server/views/craftsman_add";
	}
	
	//修改
	@RequestMapping(value = "/updateCman",method = RequestMethod.POST)
	@ResponseBody
	public Object updateCman(@RequestParam("cId") String id,Craftsman Cman,HttpSession session) {
		Map<String, Integer> map = new HashMap<String, Integer>();
	    int uid=((Users)session.getAttribute("loginUser")).getUid();
		String cPath = (String)session.getAttribute("cPath");
		Cman.setcId(id);;
		Cman.setModifyBy(uid);
		Cman.setcPath(cPath);;
		session.removeAttribute("cPath");
		boolean isok=craftsmanService.updateByPrimaryKey(Cman);
		if (isok) {
            map.put("code", 1);
            session.removeAttribute("findeCman");
        }else {
            map.put("code", 0);
        }
        return JSON.toJSONString(map);
	}

	

	//上传 
	@RequestMapping(value="/uploadCman",method=RequestMethod.POST)
    @ResponseBody
    public Object uploadmarry(@RequestParam("file") MultipartFile file,HttpSession session) {
		// 判断上传文件是否为空
	        Map<String, Integer> map = new HashMap<String, Integer>();
	        // 定义上传文件的路径
	        String filePath = session.getServletContext().getRealPath("Java作业/作业/The_Moon/WebContent/static/images/craftsman/");
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
	                DataOutputStream dos = new DataOutputStream(new FileOutputStream("E:/Java作业/作业/The_Moon/WebContent/static/images/craftsman/"+newFileName));
	                int len = -1;
	                while ((len = dis.read()) != -1) {
	                    dos.write(len);
	                }
	                dos.close();
	                dis.close();
	                // 将上传文件保存到session中
	            	String cPath=newFileName;
	                session.setAttribute("cPath", cPath);
	            } catch (FileNotFoundException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	        return JSON.toJSONString(map);
	        
    }
	
	
	
	
	
	
	
	
	
	
	
	
}
