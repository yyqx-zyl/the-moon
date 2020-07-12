package cn.marry.service.realphoto;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.RealPhotoMapper;
import cn.marry.pojo.RealPhoto;
@Service
public class RealPhotoServiceImpl implements RealPhotoService {

	@Autowired
	private RealPhotoMapper realPhotoMapper;
	@Override
	public List<RealPhoto> getrealthotolist() {
		// TODO Auto-generated method stub
		return realPhotoMapper.getrealthotolist();
	}
	
	@Override
	public boolean deleteByPrimaryKey(String rid) {
		int result=realPhotoMapper.deleteByPrimaryKey(rid);
		if(result>0) {
			return true;
		}else {
			return false;
		}
		
	}
	@Override
	public boolean insert(RealPhoto record) {
		int result=realPhotoMapper.insert(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}
	@Override
	public RealPhoto selectByPrimaryKey(String rid) {
		// TODO Auto-generated method stub
		return realPhotoMapper.selectByPrimaryKey(rid);
	}
	@Override
	public boolean updateByPrimaryKey(RealPhoto record) {
		int result=realPhotoMapper.updateByPrimaryKey(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

}
