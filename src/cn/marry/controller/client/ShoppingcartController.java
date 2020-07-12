package cn.marry.controller.client;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.marry.pojo.Cart;
import cn.marry.pojo.Prodress;
import cn.marry.pojo.Promarry;
import cn.marry.pojo.Users;
import cn.marry.service.cart.CartService;

@Controller
public class ShoppingcartController {
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value="/shoppingcart",method = RequestMethod.GET)
	public String cart(HttpSession session,Model model) {
		int uid = ((Users)session.getAttribute("loginUser")).getUid();
		List<Cart> list = cartService.getAllList(uid);
		model.addAttribute("cart",list);
		return "client/shoppingcart";
	}
	
	@RequestMapping(value="/addcount",method = RequestMethod.GET)
	public String addcount(@RequestParam("cid")String cid,@RequestParam("count")int count,
			@RequestParam("price")Double price,Model model,@RequestParam("totalprice")Double ptotalprice) {
		Double eage = ptotalprice;
		for (int i = 0; i < count; i++) {
			ptotalprice = eage + price;
		}
		boolean isOk = cartService.addcount(cid, count, ptotalprice);
		return "redirect:shoppingcart";
	}
	
	@RequestMapping(value="/reducecount",method = RequestMethod.GET)
	public String reducecount(@RequestParam("cid")String cid,@RequestParam("price")Double price,
			@RequestParam("count")int count,@RequestParam("totalprice")Double totalprice,Model model) {
		if(count == 0) {
			count = 1;
		}
		Double eage = totalprice;
		for (int i = 0; i < count; i++) {
			totalprice = eage - price;
		}
		boolean isOk = cartService.reducecount(cid, count, totalprice);
		return "redirect:shoppingcart";
	}
	
	@RequestMapping(value="/addcart",method = RequestMethod.GET)
	public String addcart(@RequestParam("id")String id,@RequestParam("op") String op,
			@RequestParam("uid")int uid,HttpSession session,Model model) {
		if(op.equals("pid")) {
			System.out.println("dress表");
			Prodress prodress = cartService.findDress(id);
			if(prodress != null) {
				String pid = prodress.getPid();
				int pcount = 1;
				String pname = prodress.getDname();
				Double pprice = prodress.getDprice();
				String pimage = prodress.getIdpicpath();
				Double ptotalprice = 0.0;
				for (int i = 0; i < pcount; i++) {
					ptotalprice = ptotalprice + pprice;
				}
				boolean isOk = cartService.addDresscart(pid,pcount,pname,pprice,pimage,uid,ptotalprice);
				if(isOk) {
					return "redirect:shoppingcart";
				}
				else {
					return "client/index";
				}
			}
		}
		else if(op.equals("mid")) {
			System.out.println("marry表");
			Promarry promarry = cartService.findMarry(id);
			if(promarry != null) {
				String mid = promarry.getMid();
				int pcount = 1;
				String pname = promarry.getMname();
				Double pprice = promarry.getMprice();
				String pimage = promarry.getIdpicpath();
				Double ptotalprice = 0.0;
				for (int i = 0; i < pcount; i++) {
					ptotalprice+=pprice;
				}
				boolean isOk = cartService.addDresscart(mid,pcount,pname,pprice,pimage,uid,ptotalprice);
				if(isOk) {
					return "redirect:shoppingcart";
				}
				else {
					return "client/index";
				}
			}
		}
		return "";
	}
	
	@RequestMapping(value="/delproduct",method = RequestMethod.GET)
	public String delproduct(@RequestParam("cid")String cid) {
		boolean isOk = cartService.delproduct(cid);
		return "client/shoppingcart";
	}
	
	@RequestMapping(value="/cartover",method = RequestMethod.GET)
	public String cartover(@RequestParam("cid")String cid,HttpSession session) {
		Cart cart = cartService.findCart(cid);
		if(cart != null) {
			String pid = cart.getProductid();
			int uid = ((Users)session.getAttribute("loginUser")).getUid();
			String pname = cart.getPname();
			Double pprice = cart.getPprice();
			String pimage = cart.getPimage();
			int pcount = cart.getPcount();
			Double totalprice = cart.getPtotalprice();
			Date createtime = new Date();
			boolean isOk = cartService.cartover(pid, uid, pname, pprice, pimage, pcount, totalprice, createtime);
			if(isOk) {
				return "redirect:delproduct?cid="+cid;
			}else {
				return "redirect:shoppingcart";
			}
		}
		return "";
	}
}
