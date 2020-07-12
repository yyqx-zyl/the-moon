package cn.marry.pojo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
public class Promarry {
    private String mid;

    private String mname;

    private String mdesc;

    private Double mprice;

    private String idpicpath;

    private Integer createdby;

    private Date creationdate;

    private Date modifydate;

    private Integer modifyby;

    
}