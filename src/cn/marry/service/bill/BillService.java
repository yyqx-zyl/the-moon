package cn.marry.service.bill;

import java.util.List;


import cn.marry.pojo.Bill;

public interface BillService {
    boolean deleteById(int bid);

    boolean insert(Bill record);

    Bill FindById(int bid);

    List<Bill> selectAll();

    boolean update(Bill record);
}
