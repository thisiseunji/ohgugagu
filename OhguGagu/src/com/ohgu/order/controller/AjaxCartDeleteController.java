package com.ohgu.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ohgu.member.model.vo.Member;
import com.ohgu.order.model.service.CartService;
import com.ohgu.order.model.vo.Cart;

/**
 * Servlet implementation class AjaxCartDeleteController
 */
@WebServlet("/delete.cart")
public class AjaxCartDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxCartDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		if (loginUser == null) {
			request.getSession().setAttribute("alertMsg", "로그인 후 이용 가능한 서비스 입니다.");
			return;
		}
		
		int memberNo = Integer.parseInt(loginUser.getMemberId());
		int productNo = Integer.parseInt(request.getParameter("productNo"));
		
		ArrayList<Cart> cartList = new ArrayList<>(); 
		
		Cart cart = new Cart(productNo, memberNo);

		int result = new CartService().deleteCart(cart);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
