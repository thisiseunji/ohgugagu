package com.ohgu.address.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ohgu.address.model.service.AddressService;
import com.ohgu.address.model.vo.Address;

/**
 * Servlet implementation class AddressInsertController
 */
@WebServlet("/insert.ad")
public class AddressInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int addressNo = Integer.parseInt(request.getParameter("addressNo"));
		String addr = request.getParameter("addr");
		String addrDetail = request.getParameter("addrDetail");
		String phone = request.getParameter("phone");
		String receiver = request.getParameter("receiver");
		int memberNo = Integer.parseInt(request.getParameter("memberNo"));
		
		Address a = new Address();
		a.setAddressNo(addressNo);
		a.setAddr(addr);
		a.setAddrDetail(addrDetail);
		a.setPhone(phone);
		a.setReceiver(receiver);
		a.setMemberNo(memberNo);
		
		int result = new AddressService().insertAddress(a);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "배송지 등록에 성공했습니다.");
			response.sendRedirect(request.getContextPath() + "/list.ad");
		} else {
			request.setAttribute("errorMsg", "배송지 등록에 실패했습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
