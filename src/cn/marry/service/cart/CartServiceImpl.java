package cn.marry.service.cart;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.marry.dao.CartMapper;
import cn.marry.pojo.Cart;
import cn.marry.pojo.Prodress;
import cn.marry.pojo.Promarry;
@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartMapper cartMapper;
	@Override
	public List<Cart> getAllList(int uid) {
		// TODO Auto-generated method stub
		return cartMapper.getAllList(uid);
	}
	@Override
	public Prodress findDress(String id) {
		// TODO Auto-generated method stub
		return cartMapper.findDress(id);
	}
	@Override
	public boolean addDresscart(String pid,int pcount, String pname, Double pprice, String pimage, int uid,Double ptotalprice) {
		int result = cartMapper.addDresscart(pid,pcount, pname, pprice, pimage, uid,ptotalprice);
		if(result > 0) {
			return true;
		}
		else {
			return false;
		}
	}
	@Override
	public boolean delproduct(String cid) {
		int result = cartMapper.delproduct(cid);
		if(result > 0) {
			return true;
		}
		else {
			return false;
		}
	}
	@Override
	public Promarry findMarry(String id) {
		// TODO Auto-generated method stub
		return cartMapper.findMarry(id);
	}
	@Override
	public boolean addMarrycart(String mid,int pcount, String pname, Double pprice, String pimage, int uid,Double ptotalprice) {
		int result = cartMapper.addDresscart(mid,pcount, pname, pprice, pimage, uid,ptotalprice);
		if(result > 0) {
			return true;
		}
		else {
			return false;
		}
	}
	@Override
	public boolean addcount(String cid, int count, Double ptotalprice) {
		int result = cartMapper.addcount(cid, count, ptotalprice);
		if(result > 0) {
			return true;
		}
		else {
			return false;
		}
	}
	@Override
	public boolean reducecount(String cid, int count, Double totalprice) {
		int result = cartMapper.reducecount(cid, count, totalprice);
		if(result > 0) {
			return true;
		}
		else {
			return false;
		}
	}
	@Override
	public Cart findCart(String cid) {
		// TODO Auto-generated method stub
		return cartMapper.findCart(cid);
	}
	@Override
	public boolean cartover(String pid, int uid, String pname, Double pprice, String pimage, int pcount,
			Double totalprice, Date createtime) {
		int result = cartMapper.cartover(pid, uid, pname, pprice, pimage, pcount, totalprice, createtime);
		if(result > 0) {
			return true;
		}
		else {
			return false;
		}
	}

}
