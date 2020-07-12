package cn.marry.controller.server;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.marry.pojo.Users;
import cn.marry.service.users.UserService;

@Controller
public class usersManager {

	@Autowired
	private UserService userService;
	
	
	//显示所有
    @RequestMapping(value = "/getusersList", method = RequestMethod.GET)
    public String usersList(Model model,
    		@RequestParam(name = "currpage",required = false,defaultValue = "1") int currpage) {
    	
    	PageHelper.startPage(currpage, 4);
        List<Users> list = userService.selectAll();
        
        PageInfo pageInfo=new PageInfo(list,4);
        
        model.addAttribute(pageInfo);
        
        return "server/views/user";
    }
	
	
    
    
     //删除用户
  		@RequestMapping(value = "/deleteUser",method = RequestMethod.GET)
  		@ResponseBody
  		public Object deleteInbound(@RequestParam("id") int uid) {
  			Map<String, Integer> map=new HashMap<String, Integer>();
  			boolean isOk=userService.deleteUser(uid);
  			if(isOk) {
  				map.put("result", 1);
  			}else {
  				map.put("result", 0);
  			}
  			
  			return JSON.toJSONString(map);
  		}
    
    
  	//模糊查询
  		@RequestMapping(value = "/findByName",method = RequestMethod.POST)
  			public String findById(@RequestParam("username") String username,
  					@RequestParam(name = "currpage",required = false,defaultValue = "1") int currpage,
  					HttpServletRequest request,Model model) {
  				
  				username=request.getParameter("username");
  				PageHelper.startPage(currpage, 4);
  		        List<Users> list = userService.findBy(username);
  		        PageInfo pageInfo=new PageInfo(list,4);
  		        
  		        model.addAttribute(pageInfo);
  		        
  				return "server/views/user";
  			}
  		
  		//	通过id查询
  	 @RequestMapping(value="/findById",method=RequestMethod.GET)
  		public String findById(@RequestParam("uid") int id,HttpSession session) {
  		  Users user =userService.findById(id);
  		   if(user != null) {
  		            session.setAttribute("user",user);
  		        }
  		        return "server/views/user_update";
  		    }
  	
  			
  		//修改用户信息
  		@RequestMapping(value = "/updateManager",method = RequestMethod.POST,
				produces="application/json;charset=UTF-8")
		@ResponseBody
		 public Object update(Users user,HttpSession session) {
			Map<String, Integer> map=new HashMap<String, Integer>();
			
			boolean isOk=userService.updateByPrimaryKey(user);
			if(isOk) {
				map.put("result", 1);
			}else {
				map.put("result", 0);
			}
			return JSON.toJSONString(map);
		}
	
  		
  		
  		//审核显示
  		@RequestMapping(value = "/examine",method = RequestMethod.GET)
			public String examine(
					@RequestParam(name = "currpage",required = false,defaultValue = "1") int currpage,
					Model model) {
  			    int isok=1;
				PageHelper.startPage(currpage, 4);
		        List<Users> list = userService.examine(isok);
		        PageInfo pageInfo=new PageInfo(list,4);
		        
		        model.addAttribute(pageInfo);
		        
				return "server/views/user_examine";
			}
  		
  		//审核通过
  		@RequestMapping(value = "/updateisOK",method = RequestMethod.POST,
				produces="application/json;charset=UTF-8")
		@ResponseBody
		 public Object updateisOK(Users user,HttpSession session) {
			Map<String, Integer> map=new HashMap<String, Integer>();
			boolean isOk=userService.updateisOK(user);
			if(isOk) {
				map.put("result", 1);
			}else {
				map.put("result", 0);
			}
			return JSON.toJSONString(map);
		}
	
  		
  		
}
