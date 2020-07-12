package cn.marry.controller.client;

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
import javax.servlet.http.HttpSession;

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

import cn.marry.pojo.AnComment;
import cn.marry.pojo.Blog;
import cn.marry.pojo.Comment;
import cn.marry.pojo.Pro;
import cn.marry.pojo.Prodress;
import cn.marry.pojo.Promarry;
import cn.marry.pojo.Users;
import cn.marry.service.Category.CategoryService;
import cn.marry.service.blog.BlogService;
import cn.marry.service.comment.CommentService;

@Controller
public class BlogController {

	@Autowired
	private BlogService blogService;
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private CommentService commentService;
	
	private String bimg;
	//获得所有博客数据
	@RequestMapping(value = "/getBlogList",method = RequestMethod.GET)
	public String getdressList(
			@RequestParam(name = "currpage",required = false,defaultValue = "1") int currpage,Model model,
			@RequestParam(name="caid",required=false,defaultValue="0") int caid){
		 //调用Pagehelp里的方法,就是取获得分页的数据
		 PageHelper.startPage(currpage,3);
		 List<Blog> blist=blogService.selectall(caid);
		 //创建一个分页类的实例
		 PageInfo pageInfo=new PageInfo(blist,3);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("calist", categoryService.getcategory());
		return "client/blog";
	}
	
	//根据bid查询实体类
	@RequestMapping(value = "/findByBid",method = RequestMethod.GET)
	public String finddressById(@RequestParam("bid") int bid,
			HttpSession session,
			@RequestParam(name = "currpage",required = false,defaultValue = "1") int currpage,Model model) {
		//根据bid查找博客
		Blog findblog=blogService.findByBid(bid);
		session.setAttribute("findblog", findblog);
		//根据bid查找对应的评论
		 PageHelper.startPage(currpage,10);
		List<Comment> com=commentService.selectAll(bid);
		 //创建一个分页类的实例
		 PageInfo pageInfo=new PageInfo(com,10);
		model.addAttribute("pageInfo",pageInfo);
		return "client/blog_post";
	}
	
	//查询回复评论表
	@RequestMapping(value = "/findByAnid",method = RequestMethod.GET)
	@ResponseBody
	public Object findByAnid(@RequestParam(name="ruid") int ruid,
			HttpSession session,Model model) {
		 List<AnComment> ancomlist=commentService.selectAnComment(ruid);
			 model.addAttribute("ancomlist","ancomlist");
	        return JSON.toJSONString(ancomlist);
	}
	
	
	//添加评论
	@RequestMapping(value="/addComment",method=RequestMethod.POST)
    @ResponseBody
    public Object addComment(Comment record,HttpSession session,HttpServletRequest req) {
         Map<String,Integer> map = new HashMap<String, Integer>();
         int uid = ((Users)session.getAttribute("loginUser")).getUid();
         String comimg= ((Users)session.getAttribute("loginUser")).getUserimage();
         String comname= ((Users)session.getAttribute("loginUser")).getUsername();
         int blogid=Integer.parseInt(req.getParameter("bid"));
         record.setUid(uid);
         record.setComimg(comimg);
         record.setComname(comname);
         record.setCreationDate(new Date());
         record.setBlogid(blogid);
         record.setCid(blogid);
         boolean isOk = commentService.insert(record);
        if(isOk) {
            map.put("code", 1);
        }else {
            map.put("code", 0);
        }
        return JSON.toJSONString(map);
    }
	//添加评论的回复评论
	@RequestMapping(value="/addAncomment",method=RequestMethod.POST)
    @ResponseBody
    public Object addAncomment(AnComment record,HttpSession session,HttpServletRequest req) {
         Map<String,Integer> map = new HashMap<String, Integer>();
         String comimg= ((Users)session.getAttribute("loginUser")).getUserimage();
         String comname= ((Users)session.getAttribute("loginUser")).getUsername();
         record.setComimg(comimg);
         record.setComname(comname);
         record.setCreationDate(new Date());
         boolean isOk = commentService.insertAncomment(record);
        if(isOk) {
            map.put("code", 1);
        }else {
            map.put("code", 0);
        }
        return JSON.toJSONString(map);
    }
	
	//增加博客的方法
	@RequestMapping(value="/addBlog",method=RequestMethod.POST)
    @ResponseBody
    public Object addblog(Blog record,HttpSession session,HttpServletRequest req) {
         Map<String,Integer> map = new HashMap<String, Integer>();
         int uid = ((Users)session.getAttribute("loginUser")).getUid();
         String fimg= ((Users)session.getAttribute("loginUser")).getUserimage();
         record.setUid(uid);
         record.setFimg(fimg);
         record.setBimg(bimg);
         record.setTime(new Date());
         boolean isOk = blogService.insert(record);
        if(isOk) {
            map.put("code", 1);
        }else {
            map.put("code", 0);
        }
        return JSON.toJSONString(map);
    }
	//上传图片的方法
	 @RequestMapping(value="/uploadblog",method=RequestMethod.POST)
	    @ResponseBody
	    public Object upload(@RequestParam("file") MultipartFile file,HttpServletRequest request) {
	        // 判断上传文件是否为空
	        Map<String, Integer> map = new HashMap<String, Integer>();
	        // 定义上传文件的路径
	        String filePath = request.getSession().getServletContext().getRealPath("/file");
	        if(!file.isEmpty()) {
	            // 获得原文件名
	            String oldName = file.getOriginalFilename();
	            // 创建上传文件对象
	            File saveFile = new File(filePath, oldName);
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
	            
	            // 将文件保存到本地文件夹中 D:/uploadFile/
	            try {
	                DataInputStream dis = new DataInputStream(new FileInputStream(saveFile));
	                DataOutputStream dos = new DataOutputStream(new FileOutputStream("F:/images/"+oldName));
	                int len = -1;
	                while ((len = dis.read()) != -1) {
	                    dos.write(len);
	                }
	                dos.close();
	                dis.close();
	                bimg="images/dress/"+oldName;
	            } catch (FileNotFoundException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	        return JSON.toJSONString(map);
	    }
}
