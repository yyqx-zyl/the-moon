package cn.marry.service.craftsman;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.CraftsmanMapper;
import cn.marry.pojo.Craftsman;
@Service
public class CraftsmanServiceImpl implements CraftsmanService {

	@Autowired
	private CraftsmanMapper craftsmanMapper;

	@Override
	public List<Craftsman> selectAll() {
		// TODO Auto-generated method stub
		return craftsmanMapper.selectAll();
	}

	@Override
	public boolean deleteByPrimaryKey(String cId) {
		int result=craftsmanMapper.deleteByPrimaryKey(cId);
		if(result>0) {
			return true;
		}else {
			return false;
		}
		
	}

	@Override
	public boolean insert(Craftsman record) {
		int result=craftsmanMapper.insert(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public Craftsman selectByPrimaryKey(String cId) {
		// TODO Auto-generated method stub
		return craftsmanMapper.selectByPrimaryKey(cId);
	}

	@Override
	public boolean updateByPrimaryKey(Craftsman record) {
		int result=craftsmanMapper.updateByPrimaryKey(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

}
