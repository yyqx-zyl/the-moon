package cn.marry.pojo;

import java.util.Date;


import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
public class Comment {
    private int cid;

    private int uid;

    private String comimg;

    private String comname;

    private Date creationDate;
    
    private int upgood;

    private int downbad;
    
    private String comdesc;

    private int ruid;

    private int blogid;
    
    private Blog blog;
    
}