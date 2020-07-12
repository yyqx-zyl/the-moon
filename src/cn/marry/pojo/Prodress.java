package cn.marry.pojo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Prodress {
    private String pid;

    private String dname;

    private String ddesc;

    private Double dprice;

    private String idpicpath;

    private Integer createdby;

    private Date creationdate;

    private Date modifydate;

    private Integer modifyby;
    
}
