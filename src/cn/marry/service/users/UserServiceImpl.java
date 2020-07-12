package cn.marry.service.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.UsersMapper;
import cn.marry.pojo.Users;
import cn.marry.service.users.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UsersMapper usersMapper;
	
	public Users loginVerification(String username, String userpassword) {
		return usersMapper.loginVerification(username, userpassword);
	}

	@Override
	public boolean saveUser(Users user) {
		int result = usersMapper.insert(user);
		if(result > 0) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public boolean check(Users user) {
		int result = usersMapper.check(user);
		if(result > 0) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public boolean updatePwd(Users user) {
		int result = usersMapper.updatePwd(user);
		if(result > 0) {
			return true;
		}
		else {
			return false;
		}
	}

	//��֤�û���
	@Override
	public Users checkusername(String username) {
		// TODO Auto-generated method stub
		return usersMapper.checkusername(username);
	}
	//��֤����
	@Override
	public Users checkemail(String email) {
		// TODO Auto-generated method stub
		return usersMapper.checkemail(email);
	}
	

	 //ǰ����Ϣ��ʾ
		@Override
		public Users userShow(int uid) {
			return usersMapper.userShow(uid);
		}

		//ǰ����Ϣ�޸�
		@Override
		public boolean userUpdate(Users user) {
			int result=usersMapper.userUpdate(user);
			if(result>0) {
				return true;
			}else{
				return false;
			}
			
		}

		
		
		
		//��̨��ѯ����
		@Override
		public List<Users> selectAll() {
			
			return usersMapper.selectAll();
		}

		//��̨ɾ��
		@Override
		public boolean deleteUser(int uid) {
			int result=usersMapper.deleteUser(uid);
			if(result>0) {
				return true;
			}else{
				return false;
			}
			
		}

		//��̨����������ѯ
		@Override
		public  List<Users>  findBy(String username) {
			// TODO Auto-generated method stub
			return usersMapper.findBy(username);
		}

		//��̨�޸�
		@Override
		public Users findById(int uid) {
			// TODO Auto-generated method stub
			return usersMapper.findById(uid);
		}

		@Override
		public boolean updateByPrimaryKey(Users user) {
			int result=usersMapper.updateByPrimaryKey(user);
			if(result>0) {
				return true;
			}else{
				return false;
			}
			
		}

		
		
		//��̨���
		@Override
		public List<Users> examine(int isok) {
			// TODO Auto-generated method stub
			return usersMapper.examine(isok);
		}

		@Override
		public boolean updateisOK(Users user) {
			int result=usersMapper.updateisOK(user);
			if(result>0) {
				return true;
			}else{
				return false;
			}
		}


	
}
