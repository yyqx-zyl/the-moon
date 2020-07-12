package cn.marry.service.prodress;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.ProdressMapper;
import cn.marry.pojo.Prodress;
@Service
public class ProdressServiceImpl implements ProdressService {

	@Autowired
	private ProdressMapper dressMapper;
	
	@Override
	public boolean deletePro(String id) {
		int result=dressMapper.deletePro(id);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public boolean addPro(Prodress Prodress) {
		int result=dressMapper.addPro(Prodress);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public Prodress findById(String id) {
		return dressMapper.findById(id);
	}

	@Override
	public List<Prodress> getProList() {
		return dressMapper.getProList();
	}

	@Override
	public boolean updatePro(Prodress Prodress) {
		int result=dressMapper.updatePro(Prodress);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}


}
