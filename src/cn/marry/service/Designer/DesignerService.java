package cn.marry.service.Designer;
import java.util.List;
import cn.marry.pojo.Designer;
public interface DesignerService {
	//根据id查询
		Designer findById(String desid);
		//获得全部数据
		List<Designer> getList1(int caid);
		List<Designer> getList();
		// 删除数据
		boolean deletePro( String desid);	
		// 添加数据
		boolean  addPro(Designer Designer);
		// 更新数据
		boolean  updatePro(Designer Designer);
}
