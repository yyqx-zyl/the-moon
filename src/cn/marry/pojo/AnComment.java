package cn.marry.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AnComment {

	private int anid;
	private int ruid;

    private String comimg;

    private String comname;
    @DateTimeFormat(pattern = "yyyy-MM-hhh")
    private Date creationDate;
    
    private String ancomdesc;
    
    private Comment com;

}
