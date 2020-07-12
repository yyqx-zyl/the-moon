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

	//验证用户名
	@Override
	public Users checkusername(String username) {
		// TODO Auto-generated method stub
		return usersMapper.checkusername(username);
	}
	//验证邮箱
	@Override
	public Users checkemail(String email) {
		// TODO Auto-generated method stub
		return usersMapper.checkemail(email);
	}
	

	 //前端信息显示
		@Override
		public Users userShow(int uid) {
			return usersMapper.userShow(uid);
		}

		//前端信息修改
		@Override
		public boolean userUpdate(Users user) {
			int result=usersMapper.userUpdate(user);
			if(result>0) {
				return true;
			}else{
				return false;
			}
			
		}

		
		
		
		//后台查询所有
		@Override
		public List<Users> selectAll() {
			
			return usersMapper.selectAll();
		}

		//后台删除
		@Override
		public boolean deleteUser(int uid) {
			int result=usersMapper.deleteUser(uid);
			if(result>0) {
				return true;
			}else{
				return false;
			}
			
		}

		//后台根据姓名查询
		@Override
		public  List<Users>  findBy(String username) {
			// TODO Auto-generated method stub
			return usersMapper.findBy(username);
		}

		//后台修改
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

		
		
		//后台审核
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
