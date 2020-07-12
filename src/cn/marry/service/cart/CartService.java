package cn.marry.service.cart;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.marry.pojo.Cart;
import cn.marry.pojo.Prodress;
import cn.marry.pojo.Promarry;

public interface CartService {
	List<Cart> getAllList(int uid);
	
	Prodress findDress(@Param("id")String id);
	
	boolean addDresscart(String mid, int pcount, String pname, Double pprice, String pimage, int uid,Double ptotalprice);
	
	boolean delproduct(@Param("cid")String cid);
	
	Promarry findMarry(@Param("id")String id);
	
	boolean addMarrycart(String mid,int pcount, String pname, Double pprice, String pimage, int uid,Double ptotalprice);
	
	boolean addcount(String cid,int count,Double ptotalprice);
	
	boolean reducecount(String cid,int count,Double totalprice);
	
	Cart findCart(String cid);
	
	boolean cartover(String pid,int uid,String pname,Double pprice,String pimage,int pcount,Double totalprice,Date createtime);
			
}
