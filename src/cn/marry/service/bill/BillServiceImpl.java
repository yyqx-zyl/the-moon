package cn.marry.service.bill;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.BillMapper;
import cn.marry.pojo.Bill;
@Service
public class BillServiceImpl implements BillService {

	@Autowired
	private BillMapper billMapper;
	
	@Override
	public boolean deleteById(int bid) {
		int result=billMapper.deleteById(bid);
		if(result>0) {
			return true;
		}else {
		return false;
		}
	}

	@Override
	public boolean insert(Bill record) {
		int result=billMapper.insert(record);
		if(result>0) {
			return true;
		}else {
		return false;
		}
	}

	@Override
	public Bill FindById(int bid) {
		// TODO Auto-generated method stub
		return billMapper.FindById(bid);
	}

	@Override
	public List<Bill> selectAll() {
		// TODO Auto-generated method stub
		return billMapper.selectAll();
	}

	@Override
	public boolean update(Bill record) {
		int result=billMapper.update(record);
		if(result>0) {
			return true;
		}else {
		return false;
		}
	}

}
