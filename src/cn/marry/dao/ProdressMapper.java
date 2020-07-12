package cn.marry.dao;

import cn.marry.pojo.Prodress;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface ProdressMapper {

	    // 鍒犻櫎鏁版嵁
			int deletePro(@Param("pid") String id);	
		// 娣诲姞鏁版嵁
		    int  addPro(Prodress Prodress);
		 // 瀵绘壘鏁版嵁
		    Prodress findById(@Param("pid") String id);
		// 鑾峰緱濠氱罕鐨勫叏閮ㄦ暟鎹�
		    List<Prodress> getProList();
		 // 鏇存柊鏁版嵁
		    int  updatePro(Prodress Prodress);


}