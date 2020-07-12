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

import cn.marry.pojo.Promarry;
import cn.marry.pojo.RealPhoto;
import cn.marry.pojo.Users;
import cn.marry.service.img.ImgService;
import cn.marry.service.realphoto.RealPhotoService;

@Controller
public class RealPhotoManager {

	@Autowired
	private RealPhotoService realPhotoService;
	@Autowired 
	private ImgService imgService;
	
	
	//获得所有数据
	@RequestMapping(value = "/getRealAll",method = RequestMethod.GET)
	public Object getAll(@RequestParam(name = "currpage", defaultValue = "1") int currpage,
	        Model model) {
		PageHelper.startPage(currpage, 4);
		List<RealPhoto> list=realPhotoService.getrealthotolist();
		PageInfo pageinfo=new PageInfo(list,4);
		model.addAttribute("real",pageinfo);
		return "server/views/real_photo";
	}
  		
	//清除
	@RequestMapping(value = "/clearReal",method = RequestMethod.GET)
	public void clear(HttpSession session) {
		session.removeAttribute("findereal");
	}
	
	
	//添加
	@RequestMapping(value = "/addreal",method = RequestMethod.POST)
	@ResponseBody
		public Object adddress(RealPhoto realphoto,HttpSession session) {
			Map<String, Integer> map = new HashMap<String, Integer>();
			int uid=((Users)session.getAttribute("loginUser")).getUid();
			String realimg = (String)session.getAttribute("realimg");
			realphoto.setRealimg(realimg);
			session.removeAttribute("realimg");
			boolean isok=realPhotoService.insert(realphoto);
			if (isok) {
	            map.put("code", 1);
	        }else {
	            map.put("code", 0);
	        }
	        return JSON.toJSONString(map);
		}
	
	
	
	//删除
	@RequestMapping(value = "/deleterealById",method = RequestMethod.GET)
	@ResponseBody
	public Object deletedrealById(@RequestParam("rid") String id,HttpSession session) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		boolean isok=realPhotoService.deleteByPrimaryKey(id);
		if (isok) {
            map.put("code", 1);
        }else {
            map.put("code", 0);
        }
        return JSON.toJSONString(map);
	}
	
	
	
	//根据id查找
	@RequestMapping(value = "/findrealById",method = RequestMethod.GET)
	public String finddressById(@RequestParam("rid") String id,HttpSession session) {
		RealPhoto real=realPhotoService.selectByPrimaryKey(id);
		if (real!=null) {
			session.setAttribute("findereal", real);
		}	
		return "server/views/real_add";
	}
	
	//修改
	@RequestMapping(value = "/updatereal",method = RequestMethod.POST)
	@ResponseBody
	public Object updatereal(@RequestParam("rid") String id,RealPhoto realphoto,HttpSession session) {
		Map<String, Integer> map = new HashMap<String, Integer>();
	    int uid=((Users)session.getAttribute("loginUser")).getUid();
		String realimg = (String)session.getAttribute("realimg");
		realphoto.setRid(id);
		realphoto.setModifyBy(uid);
		realphoto.setRealimg(realimg);
		session.removeAttribute("realimg");
		boolean isok=realPhotoService.updateByPrimaryKey(realphoto);
		if (isok) {
            map.put("code", 1);
            session.removeAttribute("findereal");
        }else {
            map.put("code", 0);
        }
        return JSON.toJSONString(map);
	}

	

	//上传 /Users/Zylyyqx/Desktop/实训/The_Moon/WebContent/static/images/
	  @RequestMapping(value="/uploadreal",method=RequestMethod.POST)
    @ResponseBody
    public Object uploadmarry(@RequestParam("file") MultipartFile file,HttpSession session) {
		// 判断上传文件是否为空
	        Map<String, Integer> map = new HashMap<String, Integer>();
	        // 定义上传文件的路径
	        String filePath = session.getServletContext().getRealPath("/Java作业/作业/The_Moon/WebContent/static/images/");
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
	                DataOutputStream dos = new DataOutputStream(new FileOutputStream("E:/Java作业/作业/The_Moon/WebContent/static/images/"+newFileName));
	                int len = -1;
	                while ((len = dis.read()) != -1) {
	                    dos.write(len);
	                }
	                dos.close();
	                dis.close();
	                // 将上传文件保存到session中
	                String realimg="images/"+newFileName;
	                session.setAttribute("realimg", realimg);
	            } catch (FileNotFoundException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	        return JSON.toJSONString(map);
	        
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
}
