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
	
	
	 //ǰ����Ϣ��ʾ
     Users userShow(int uid);
	 //ǰ����Ϣ�޸�
	 boolean userUpdate(Users user);
	 
	 
	 
	//��̨��ѯ����
	 List<Users> selectAll();
	 
	//��̨ɾ��
	 boolean deleteUser(int uid);
	 
	//��̨����nameģ����ѯ
	 List<Users>  findBy(String  username);
	 
	 //��̨�޸�
	 Users findById(int uid);
	 boolean updateByPrimaryKey(Users  user);
	 
	 
	 
	 //��̨���
	List<Users> examine(int isok);
	
	boolean updateisOK(Users  user);
	
	
}
