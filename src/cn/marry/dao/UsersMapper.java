package cn.marry.dao;

import cn.marry.pojo.Users;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
@Repository
public interface UsersMapper {
    int deleteByPrimaryKey(@Param("uid") int uid);
    
    @Insert("insert into users(userName,userPassword,sex,birthday,phone,email,address,creationDate)"
    		+ "values(#{username},#{userpassword},#{sex},#{birthday},#{phone},#{email},#{address},#{creationdate})")
    int insert(Users user);

    Users selectByPrimaryKey(@Param("uid") int uid);

   
    
	@Select("select * from users where userName=#{username} and userPassword=#{userpassword}")
    Users loginVerification(@Param("username") String username,@Param("userpassword") String userpassword);
	
	//修改密码
	@Select("select count(*) from users where userName=#{username} and userPassword=#{userpassword}")
	int check(Users user);
	@Update("update users set userPassword=#{userpassword} where userName=#{username}")
	int updatePwd(Users user);
	    
	//验证用户
	@Select("select * from users where userName=#{username}")
	Users checkusername(@Param("username")String username);
	    
	//验证邮箱
	@Select("select * from users where email=#{email}")
	Users checkemail(@Param("email")String email);
	
	
	   //前端信息显示
		@Select("select * from users where uid=#{uid}")
		Users userShow(@Param("uid") int uid);
		
		//前端信息修改
		@Update("UPDATE users SET sex=#{sex},birthday=#{birthday}, phone=#{phone},address=#{address} where uid=#{uid}")
		int userUpdate(Users user);
	    
	    //后台查询所有
		@Select("SELECT *FROM users")
		 List<Users> selectAll();
	    
		//后台删除
	  	@Delete("delete from users where uid=#{uid}")
	  	int deleteUser(@Param("uid") int uid);
	  	
	  	//后台根据name查询
	  	@Select("SELECT *FROM users where userName LIKE CONCAT('%',#{username},'%')")
	  	 List<Users>  findBy(@Param("username") String username);
	    
	  	//后台修改
	  	@Select("select * from users where uid=#{uid}")
	  	Users findById(int uid);
	  	
	  	@Update("UPDATE users SET userName=#{username},userPassword=#{userpassword},phone=#{phone},address=#{address} where uid=#{uid}")
	  	int updateByPrimaryKey(Users  user);
	  	
	  	
	  //	@Select("select isOk from users where userName=#{username} and userPassword=#{userpassword}")
	 //   Users loginExamine(@Param("username") String username,@Param("userpassword") String userpassword);
		
	  	
	  	
	  	
	  	
	  	//后台审核
	  	@Select("select * from users where isOk=#{isok}")
	  	List<Users> examine(int isok);
	  	
	  	@Update("UPDATE users SET userName=#{username},isOk=#{isok} where uid=#{uid}")
	  	int updateisOK(Users  user);
    
    
    
    
    
}