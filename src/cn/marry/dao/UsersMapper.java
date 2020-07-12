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
	
	//�޸�����
	@Select("select count(*) from users where userName=#{username} and userPassword=#{userpassword}")
	int check(Users user);
	@Update("update users set userPassword=#{userpassword} where userName=#{username}")
	int updatePwd(Users user);
	    
	//��֤�û�
	@Select("select * from users where userName=#{username}")
	Users checkusername(@Param("username")String username);
	    
	//��֤����
	@Select("select * from users where email=#{email}")
	Users checkemail(@Param("email")String email);
	
	
	   //ǰ����Ϣ��ʾ
		@Select("select * from users where uid=#{uid}")
		Users userShow(@Param("uid") int uid);
		
		//ǰ����Ϣ�޸�
		@Update("UPDATE users SET sex=#{sex},birthday=#{birthday}, phone=#{phone},address=#{address} where uid=#{uid}")
		int userUpdate(Users user);
	    
	    //��̨��ѯ����
		@Select("SELECT *FROM users")
		 List<Users> selectAll();
	    
		//��̨ɾ��
	  	@Delete("delete from users where uid=#{uid}")
	  	int deleteUser(@Param("uid") int uid);
	  	
	  	//��̨����name��ѯ
	  	@Select("SELECT *FROM users where userName LIKE CONCAT('%',#{username},'%')")
	  	 List<Users>  findBy(@Param("username") String username);
	    
	  	//��̨�޸�
	  	@Select("select * from users where uid=#{uid}")
	  	Users findById(int uid);
	  	
	  	@Update("UPDATE users SET userName=#{username},userPassword=#{userpassword},phone=#{phone},address=#{address} where uid=#{uid}")
	  	int updateByPrimaryKey(Users  user);
	  	
	  	
	  //	@Select("select isOk from users where userName=#{username} and userPassword=#{userpassword}")
	 //   Users loginExamine(@Param("username") String username,@Param("userpassword") String userpassword);
		
	  	
	  	
	  	
	  	
	  	//��̨���
	  	@Select("select * from users where isOk=#{isok}")
	  	List<Users> examine(int isok);
	  	
	  	@Update("UPDATE users SET userName=#{username},isOk=#{isok} where uid=#{uid}")
	  	int updateisOK(Users  user);
    
    
    
    
    
}