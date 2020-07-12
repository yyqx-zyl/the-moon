package cn.marry.controller.client;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.imageio.ImageIO;
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


import cn.marry.pojo.Users;
import cn.marry.service.users.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
    @RequestMapping(value="/login")
    public String doLogin(@RequestParam("username") String username,
        @RequestParam("userpassword") String userpassword,
        @RequestParam("code") String code,
        Model model,
        HttpSession session) {
        if(!((String)session.getAttribute("yzm")).equals(code)) {
            return "Login";
        }
        Users user = userService.loginVerification(username, userpassword);
        
        session.setAttribute("isok",user.getIsok());
      //  System.out.println("审核值==========》》"+user.getIsok());   user.getIsok()==2 
        
        if(user != null ) {
        	session.setAttribute("loginUser", user);
        	
        	if(user.getUserrole()==0 ) {
                return "server/index";
        	}
        	return "redirect:getProList";
        }else {
        	 return "Login";
        }
        
    }
    
    /*
		@RequestMapping(value = "/clearisOk",method = RequestMethod.GET)
  	public void clear(HttpSession session) {
  		System.out.println("进入方法");
  		session.removeAttribute("isok");
  	}
    */
    
    
    
    
    @RequestMapping(value="/loginOut",method=RequestMethod.GET)
    public String loginout(HttpSession session) {
        session.invalidate();
        return "Login";
    }
    
    // 验证码
    @RequestMapping(value="/CodeImg",method=RequestMethod.GET)
    public void getCode(HttpServletRequest req,HttpServletResponse resp) throws Exception {
     // 锟斤拷锟斤拷锟斤拷应锟侥革拷式锟斤拷锟斤拷
        resp.setHeader("Content-Type", "image/jpeg");
        // 锟斤拷锟斤拷图片锟侥匡拷透锟�
        int w = 80;
        int h = 30;
        // 锟斤拷锟斤拷一锟斤拷RGB锟斤拷式锟斤拷锟节达拷锟叫碉拷图片
        BufferedImage img = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        // 锟斤拷锟斤拷一锟斤拷锟斤拷锟斤拷图锟斤拷亩锟斤拷锟�
        Graphics g = img.getGraphics();
        // 锟窖憋拷锟斤拷锟斤拷锟缴�
        g.setColor(Color.white);
        g.fillRect(0, 0, w, h);
        // 锟斤拷锟斤拷锟斤拷锟斤拷
        g.setFont(new Font("aa", Font.BOLD, 18));
        // 锟斤拷锟斤拷锟斤拷draw锟斤拷4锟斤拷锟斤拷锟斤拷锟斤拷锟�
        Random r = new Random();
        // 锟斤拷锟斤拷一锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟侥革拷锟斤拷锟斤拷锟街凤拷锟斤拷
        String yzm = "";
        for (int i = 0; i < 4; i++) {
            int a = r.nextInt(10);// 锟斤拷锟斤拷0~9之锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷
            int y = 15 + r.nextInt(10);// 锟斤拷锟斤拷锟斤拷锟斤拷拇锟街蔽伙拷锟�
            // 锟斤拷锟斤拷锟斤拷锟斤拷锟缴�
            Color c = new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256));
            g.setColor(c);
            g.drawString("" + a, i * 15, y);
            // 锟斤拷锟斤拷证锟斤拷转锟斤拷为锟街凤拷锟斤拷追锟接碉拷yzm锟斤拷
            yzm += a;
        }
        // 锟斤拷yzm锟斤拷锟斤拷session
        req.getSession().setAttribute("yzm", yzm);
        // 锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷
        for (int i = 0; i < 10; i++) {
            // 锟斤拷锟斤拷锟斤拷锟斤拷锟缴�
            Color c = new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256));
            g.setColor(c);
            g.drawLine(r.nextInt(60), r.nextInt(30), r.nextInt(60), r.nextInt(30));
        }
        g.dispose();// 锟斤拷锟斤拷锟斤拷IO锟叫碉拷flush(),锟斤拷图锟斤拷锟斤拷锟斤拷刷锟斤拷img锟斤拷
        // 锟斤拷锟节达拷图片 img 锟斤拷锟襟保存到一锟斤拷 jpg 锟侥硷拷
        ImageIO.write(img, "JPEG", resp.getOutputStream());
    }
    
    // 保存用户的请求
    @RequestMapping(value="/saveUser",method = RequestMethod.POST)
    public String saveUser(HttpServletRequest request,@RequestParam("code") String code,HttpSession session) throws ParseException {
    	if(!((String)session.getAttribute("yzm")).equals(code)) {
            return "Register";
        }
    	
    	String username = request.getParameter("username");
    	String userpassword = request.getParameter("userpassword"); 
    	int sex = Integer.parseInt(request.getParameter("sex"));
    	Date birthday = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("birthday"));
    	String phone = request.getParameter("phone");
    	String email=request.getParameter("email");
    	String address = request.getParameter("address");
    	Users user = new Users();
    	user.setUsername(username);
    	user.setUserpassword(userpassword);
    	user.setSex(sex);
    	user.setBirthday(birthday);
    	user.setPhone(phone);
    	user.setEmail(email);
    	user.setAddress(address);
    	user.setCreationdate(new Date());
    	boolean isOk = userService.saveUser(user);
    	if(isOk) {
    		return "Login";
    	}
    	else {
    		return "Register";
    	}
    }
    // 定义一个修改密码的请求
    @RequestMapping(value="/ChangeCode",method = RequestMethod.GET)
    public String changePwd() {
    	return "ChangeCode";
    }
    @RequestMapping(value="/updatePassword",method = RequestMethod.POST)
    @ResponseBody
    public Object updatePwd(HttpSession session,Users user,
    		@RequestParam("userpassword")String userpassword,
    		@RequestParam("username")String username,
    		@RequestParam("newpassword")String newpassword) {
    	
    	user.setUsername(username);
		user.setUserpassword(userpassword);
		boolean isOk = userService.check(user);
		if(isOk) {
			user.setUserpassword(newpassword);
			boolean isOk1 = userService.updatePwd(user);
			if(isOk1) {
				return "<script language='javascript'>alert('密码修改成功！') ;window.location.href='Login.jsp';</script>";
			}
		}else {
			return "<script language='javascript'>alert('用户或密码错误！修改失败！') ;window.location.href='ChangeCode.jsp';</script>";
		}
		return "";
    }
    
    @RequestMapping(value ="/checkusername",method=RequestMethod.POST)
    @ResponseBody
    public boolean checkusername(HttpSession session,@RequestParam("username")String username){
        Users checkusername = userService.checkusername(username);
        session.setAttribute("checkusername", checkusername);
        if(checkusername!=null){
            return true;
        }else{
            return false;
        }
    }
    @RequestMapping(value ="/checkemail",method=RequestMethod.POST)
    @ResponseBody
    public boolean checkemail(@RequestParam("email")String email){
        Users checkemail = userService.checkemail( email);
        if(checkemail!=null){
            return true;
        }else{
            return false;
        }
    }
    
    @RequestMapping(value ="/checkcaptcha")
    @ResponseBody
    public boolean checkcaptcha(HttpSession httpSession,@RequestParam("captcha")String captcha){
        String captcha1 = (String)httpSession.getAttribute("Captcha");
        if(captcha.equals(captcha1)){
            return true;
        }else {
            return false;
        }
    }
    @RequestMapping(value ="/deletecaptcha")
    @ResponseBody
    public void deletecaptcha(HttpSession httpSession){
        httpSession.removeAttribute("Captcha");
    }
    
    
  //页面显示
    @RequestMapping(value="/userShow",method=RequestMethod.GET)
    public String userShow(Users user,HttpSession session,Model model) {
    	
    	int uid=((Users)session.getAttribute("loginUser")).getUid();
    	user=userService.userShow(uid);
    	
    	model.addAttribute("userShow", user);
        return "userShow";
    }
    
    
    // 修改
    @RequestMapping(value="/userUpdate",method = RequestMethod.POST)
    public String updateUser(HttpServletRequest request,Model model
    		,HttpSession session) throws ParseException {

    	int uid=((Users)session.getAttribute("loginUser")).getUid();
    	int sex = Integer.parseInt(request.getParameter("sex"));
    	Date birthday = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("birthday"));
    	String phone = request.getParameter("phone");
    	String address = request.getParameter("address");
    	Users user = new Users();
    	
    	user.setUid(uid);
    	user.setSex(sex);
    	user.setBirthday(birthday);
    	user.setPhone(phone);
    	user.setAddress(address);
    	boolean isOk = userService.userUpdate(user);
    	
    	return "redirect:userShow";
    	
    }
    
    
    
    
}
