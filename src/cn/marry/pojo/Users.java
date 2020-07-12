package cn.marry.pojo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Users {
    private Integer uid;

    private String username;

    private String userpassword;

    private Integer sex;

    private Date birthday;

    private String phone;
    
    private String email;

    private String address;

    private Integer isok;
    
    private Integer userrole;

    private String userimage;

    private Integer createdby;

    private Date creationdate;

    private Integer modifyby;

    private Date modifydate;
    
  
}