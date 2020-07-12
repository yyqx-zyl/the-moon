package cn.marry.pojo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
public class Bill {
    private Integer bid;

    private String pid;

    private Integer uid;

    private String pname;

    private Double pprice;

    private String pimage;

    private Integer pcount;

    private Double totalprice;
    private Date createTime;
    private Integer modifyby;

    private Date modifydate;
    
    private String issue;

}