package cn.marry.service.users;

import java.util.List;

import cn.marry.pojo.Users;

public interface UserService {
	
	 Users loginVerification(String username,String userpassword);
	 
	 boolean saveUser(Users user);
	 
	 boolean check(Users user);
	    
	boolean updatePwd(Users user);
	 
	Users checkusername(String username);
	
	Users checkemail(String email);
	
	
	 //前端信息显示
     Users userShow(int uid);
	 //前端信息修改
	 boolean userUpdate(Users user);
	 
	 
	 
	//后台查询所有
	 List<Users> selectAll();
	 
	//后台删除
	 boolean deleteUser(int uid);
	 
	//后台根据name模糊查询
	 List<Users>  findBy(String  username);
	 
	 //后台修改
	 Users findById(int uid);
	 boolean updateByPrimaryKey(Users  user);
	 
	 
	 
	 //后台审核
	List<Users> examine(int isok);
	
	boolean updateisOK(Users  user);
	
	
}
