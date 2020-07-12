package cn.marry.dao;

import cn.marry.pojo.Bill;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface BillMapper {
    int deleteById(@Param("bid") int bid);

    int insert(Bill record);

    Bill FindById(@Param("bid") int bid);

    List<Bill> selectAll();

    int update(Bill record);
}