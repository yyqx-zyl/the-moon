package cn.marry.service.promarry;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.PromarryMapper;
import cn.marry.pojo.Promarry;
@Service
public class PromarrySrtviceImpl implements PromarryService {

	@Autowired 
	PromarryMapper promarryMapper;
	
	@Override
	public boolean deleteByPrimaryKey(String mid) {
		int result=promarryMapper.deleteByPrimaryKey(mid);
		if(result>0) {
			return true;
		}else {
			return false;
		}
		
	}

	@Override
	public boolean insert(Promarry record) {
		int result=promarryMapper.insert(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public Promarry selectByPrimaryKey(String mid) {
		// TODO Auto-generated method stub
		return promarryMapper.selectByPrimaryKey(mid);
	}

	@Override
	public List<Promarry> selectAll() {
		// TODO Auto-generated method stub
		return promarryMapper.selectAll();
	}

	@Override
	public boolean updateByPrimaryKey(Promarry record) {
		int result=promarryMapper.updateByPrimaryKey(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

}
