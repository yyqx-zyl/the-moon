package cn.marry.controller.server;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.marry.pojo.Bill;
import cn.marry.pojo.RealPhoto;
import cn.marry.pojo.Users;
import cn.marry.service.bill.BillService;

@Controller
public class BillController {

	@Autowired
	private BillService billService;
	
	//查询订单表
	 @RequestMapping(value = "/getBillList",method = RequestMethod.GET)
	 public String type(@RequestParam(name="currpage",required = false,defaultValue = "1") int currpage,
			 Model model) {
		 //调用Pagehelp里的方法,就是取获得分页的数据
		 PageHelper.startPage(currpage,3);
		 List<Bill> blist=billService.selectAll();
		 //创建一个分页类的实例
		 PageInfo pageInfo=new PageInfo(blist,3);
		model.addAttribute("pageInfo",pageInfo);
		return "server/views/bill";
	}
	 
	 
	 @RequestMapping(value="/findByBillId",method=RequestMethod.GET)
	    public String findById(@RequestParam("bid") int bid,HttpSession session) {
	        Bill b = billService.FindById(bid);
	            session.setAttribute("b",b);
	        return "server/views/bill_edit";
	    }
	 
	 @RequestMapping(value="/UpdateBill",method=RequestMethod.POST)
	 @ResponseBody
	    public String updateTask(Bill record,HttpSession session,HttpServletRequest req) {
	        Map<String, Integer> map = new HashMap<String, Integer>();
	        int uid = Integer.parseInt(req.getParameter("uid"));
	        int uid1 = Integer.parseInt(req.getParameter("uid"));
	        String pid=req.getParameter("pid");
	        String pname=req.getParameter("pname");
	        String pprice=req.getParameter("pprice");
	        Double price=Double.parseDouble(pprice);
	        String pimage=req.getParameter("pimage");
	        int pcount = Integer.parseInt(req.getParameter("pcount"));
	        String totalprice=req.getParameter("totalprice");
	        Double totalp=Double.parseDouble(totalprice);
	        String issure=req.getParameter("issue");
	        if ("on".equals(issure)) {
	        	issure = "发放";
	        } else {
	        	issure = "未发放";
	        }
	        
	        
	        
	        record.setModifyby(uid);
	        record.setPid(pid);
	        record.setPname(pname);
	        record.setPprice(price);
	        record.setPimage(pimage);
	        record.setPcount(pcount);
	        record.setTotalprice(totalp);
	        record.setIssue(issure);
	        record.setCreateTime(new Date());
	        record.setModifyby(uid1);
	        record.setModifydate(new Date());
	        boolean isOk = billService.update(record);
	        if(isOk) {
	            session.removeAttribute("b");
	            map.put("code", 1);
	        }else {
	            map.put("code",0);
	        }
	        return JSON.toJSONString(map);
	    }
	 
	 
	 @RequestMapping(value="/DeleteBybid",method = RequestMethod.GET)
		@ResponseBody
		public Object delete(@RequestParam("bid") int bid) {
			Map<String, Integer> map=new HashMap<String, Integer>();
			boolean isOk=billService.deleteById(bid);
			 if(isOk) {
				  map.put("result", 1);
			  }else {
				  map.put("result", 0);
			  }
				return JSON.toJSONString(map);
		}
	
}
