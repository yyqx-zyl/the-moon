package cn.marry.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.marry.pojo.Cart;
import cn.marry.pojo.Prodress;
import cn.marry.pojo.Promarry;

public interface CartMapper {
	@Select("select * from cart where uid=#{uid}")
	List<Cart> getAllList(@Param("uid")int uid );
	
	@Insert("insert into cart (productid,uid,pcount,pname,pprice,pimage,ptotalprice)"
			+ "values (#{pid},#{uid},#{pcount},#{pname},#{pprice},#{pimage},#{ptotalprice})")
	int addDresscart(@Param("pid")String pid,@Param("pcount")int pcount,@Param("pname") String pname,@Param("pprice") Double pprice,
			@Param("pimage")String pimage,@Param("uid")int uid,@Param("ptotalprice")Double ptotalprice);
	
	@Select("select * from pro_dress where pid = #{id}")
	Prodress findDress(@Param("id")String id);
	
	@Delete("delete from cart where cid=#{cid}")
	int delproduct(@Param("cid")String cid);
	//
	@Insert("insert into cart (productid,uid,pcount,pname,pprice,pimage,ptotalprice)"
			+ "values (#{mid},#{uid},#{pcount},#{pname},#{pprice},#{pimage},#{ptotalprice})")
	int addMarry(@Param("mid")String mid,@Param("pcount")int pcount,@Param("pname") String pname,@Param("pprice") Double pprice,
			@Param("pimage")String pimage,@Param("uid")int uid,@Param("ptotalprice")Double ptotalprice);
	
	@Select("select * from pro_marry where mid = #{id}")
	Promarry findMarry(@Param("id")String id);
	
	@Update("update cart set pcount=#{count}+1 , ptotalprice=#{ptotalprice} where cid=#{cid}")
	int addcount(@Param("cid")String cid,@Param("count")int count,@Param("ptotalprice")Double ptotalprice);
	
	@Update("update cart set pcount=#{count}-1 , ptotalprice=#{totalprice} where cid=#{cid}")
	int reducecount(@Param("cid")String cid,@Param("count")int count,@Param("totalprice")Double totalprice);
	
	@Select("select * from cart where cid=#{cid}")
	Cart findCart(@Param("cid")String cid);
	
	@Insert("insert into bill (pid,uid,pname,pprice,pimage,pcount,totalprice,createtime)"
			+ "values (#{pid},#{uid},#{pname},#{pprice},#{pimage},#{pcount},#{totalprice},#{createtime})")
	int cartover(@Param("pid")String pid,@Param("uid")int uid,@Param("pname")String pname,@Param("pprice")Double pprice,
			@Param("pimage")String pimage,@Param("pcount")int pcount,@Param("totalprice")Double totalprice,@Param("createtime")Date createtime);
}
