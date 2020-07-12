package cn.marry.service.pro;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.marry.pojo.Pro;

public interface ProService {
	List<Pro> findById( int caid);
}
