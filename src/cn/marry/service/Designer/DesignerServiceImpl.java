package cn.marry.service.Designer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.DesignerMapper;
import cn.marry.pojo.Designer;
@Service
public class DesignerServiceImpl implements DesignerService {
	@Autowired
	private DesignerMapper designermapper;
	
	@Override
	public Designer findById(String desid) {
		// TODO Auto-generated method stub
		return designermapper.findById(desid);
	}

	@Override
	public List<Designer> getList1(int caid) {
		// TODO Auto-generated method stub
		return designermapper.getList1(caid);
	}
	
	@Override
	public List<Designer> getList() {
		// TODO Auto-generated method stub
		return designermapper.getList();
	}

	@Override
	public boolean deletePro(String desid) {
		int result=designermapper.deletePro(desid);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public boolean addPro(Designer Designer) {
		int result=designermapper.addPro(Designer);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public boolean updatePro(Designer Designer) {
		int result=designermapper.updatePro(Designer);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	
}
