package cn.marry.service.pro;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.ProMapper;
import cn.marry.pojo.Pro;
@Service
public class ProServiceImpl implements ProService {
@Autowired
private ProMapper proMapper;
	@Override
	public List<Pro> findById(int caid) {
		// TODO Auto-generated method stub
		return proMapper.findById(caid);
	}

}
