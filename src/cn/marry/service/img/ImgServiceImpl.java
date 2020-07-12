package cn.marry.service.img;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.ImgMapper;
import cn.marry.pojo.Img;
@Service
public class ImgServiceImpl implements ImgService {

	@Autowired
	private ImgMapper imgMapper;
	
	@Override
	public boolean deleteByPrimaryKey(String iid) {
		int result=imgMapper.deleteByPrimaryKey(iid);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public boolean insert(Img record) {
		int result=imgMapper.insert(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public List<Img> selectByPrimaryKey(String pid) {
		return imgMapper.selectByPrimaryKey(pid);
	}

	@Override
	public List<Img> selectAll() {
		return imgMapper.selectAll();
	}

	@Override
	public boolean updateByPrimaryKey(Img record) {
		int result=imgMapper.updateByPrimaryKey(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

}
