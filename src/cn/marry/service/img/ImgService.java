package cn.marry.service.img;

import java.util.List;

import cn.marry.pojo.Img;

public interface ImgService {
	boolean deleteByPrimaryKey(String iid);

	boolean insert(Img record);

	List<Img> selectByPrimaryKey(String pid);

    List<Img> selectAll();

    boolean updateByPrimaryKey(Img record);
}
