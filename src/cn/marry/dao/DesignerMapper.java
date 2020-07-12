package cn.marry.dao;
import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import cn.marry.pojo.Designer;
@Repository
public interface DesignerMapper {
	//根据id查询
	@Select("SELECT * FROM `designer` WHERE `desid` =#{desid}")
	Designer findById(@Param("desid")String desid);
	//获得分类之后的数据数据
	List<Designer> getList1(@Param("caid") int caid);
	//获得全部数据
	@Select("SELECT * FROM `designer`")
	List<Designer> getList();
	// 删除数据
	@Delete("DELETE FROM designer WHERE `desid` =#{desid}")
	int deletePro(@Param("desid") String desid);	
	// 添加数据                                                       
	@Insert("INSERT INTO `designer`(`desid`,`title`,`src`,`caid`,`creationDate`) " + 
			"VALUES(#{desid},#{title},#{src},#{caid},#{creationDate})") 
	int  addPro(Designer Designer);
	// 更新数据
	int  updatePro(Designer Designer);
}
