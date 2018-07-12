package com.soapdiy.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.soapdiy.po.Customer;
import com.soapdiy.po.Order;
import com.soapdiy.po.OrderCustom;
import com.soapdiy.po.Shoppingcar;
import com.soapdiy.service.OrderService;
import com.soapdiy.service.ShoppingcarService;

@Controller
@RequestMapping(value = "/order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private ShoppingcarService shoppingcarService;

	// 跳转订单页面
	@RequestMapping(value = "/toOrder")
	public ModelAndView toOrder(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Customer customer = (Customer) session.getAttribute("customer");
		// 如果未登陆则跳转登陆界面
		if (customer == null) {
			mav.setViewName("login");
			return mav;
			// 如果已登陆，则通过customer业务层中获取订单数据
		} else {
			OrderCustom orderCustom = orderService.fineOrdersByCustomer(customer.getC_id());
			mav.addObject("order_All", orderCustom.getOrder_all());
			mav.addObject("order_unPay", orderCustom.getOrder_unPay());
			mav.addObject("order_unSend", orderCustom.getOrder_unSend());
			mav.addObject("order_unGet", orderCustom.getOrder_unGet());
			mav.setViewName("order");
			return mav;
		}
	}

	// 搜索订单
	@RequestMapping(value="/orderSearch")
	@ResponseBody
	public Order orderSearch(String searchText,HttpSession session) {
		int o_id = 0;
		try {
			o_id = new Integer(searchText);
		} catch (Exception e) {
		}
		Order result = orderService.fineOrderById(o_id);
		String customerName = ((Customer) session.getAttribute("customer")).getUsername();
		String resultName = result.getCustomer().getUsername();
		if(!customerName.equals(resultName)) {
			result = null;
		}
		return result;
	}
	// 跳转购物车页面
	@RequestMapping(value = "/toShoppingcar")
	public ModelAndView toShoppingcar(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Customer customer = (Customer) session.getAttribute("customer");
		// 如果未登陆则跳转登陆界面
		if (customer == null) {
			mav.setViewName("login");
			return mav;
			// 如果已登陆，则通过shoppingcar业务层中获取订单数据
		} else {
			mav.setViewName("shoppingcar");
			List<Shoppingcar> shoppingcar = shoppingcarService.fineShoppingcarByCustomer(customer.getC_id());
			mav.addObject("shoppingcar", shoppingcar);
			return mav;
		}
	}

	// 修改数量
	@RequestMapping(value = "/changeCount/{sh_id}/{count}")
	public ModelAndView changeCount(@PathVariable int count,@PathVariable int sh_id,HttpServletRequest req, HttpSession session) throws IOException {
		ModelAndView mav = new ModelAndView();

		// 传入的sh_id为c:sh_id，所以需要进行字符串分割
		Shoppingcar row = shoppingcarService.fineShoppingcarById(sh_id);
		shoppingcarService.changeCount(row, count);

		Customer customer = (Customer) session.getAttribute("customer");
		List<Shoppingcar> shoppingcar = shoppingcarService.fineShoppingcarByCustomer(customer.getC_id());

		mav.addObject("shoppingcar", shoppingcar);
		mav.setViewName("shoppingcar2");
		return mav;
	}

	// 删除购物车商品
	@RequestMapping(value = "/delete/{sh_id}")
	public ModelAndView delete(HttpServletRequest req, HttpSession session,@PathVariable int sh_id) {
		ModelAndView mav = new ModelAndView();

		// 传入的sh_id为d:sh_id，所以需要进行字符串分割
		int id = new Integer(sh_id);
		shoppingcarService.deleteShoppingcar(id);

		Customer customer = (Customer) session.getAttribute("customer");
		List<Shoppingcar> shoppingcar = shoppingcarService.fineShoppingcarByCustomer(customer.getC_id());
		
		mav.addObject("shoppingcar", shoppingcar);
		mav.setViewName("shoppingcar");

		return mav;
	}
}
