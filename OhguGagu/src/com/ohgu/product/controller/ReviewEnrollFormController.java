package com.ohgu.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ohgu.product.model.service.ReviewService;
import com.ohgu.product.model.vo.Review;


/**
 * Servlet implementation class ReviewEnrollFormController
 */
@WebServlet("/enrollForm.rv")
public class ReviewEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewEnrollFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		// 카테고리 항목들을 하드코딩해도 상관없지만
		// 작성하기 페이지가 보여지기 전에 카테고리를 모두 테이블로부터 조회해서
		// 응답데이터로 실어 보낼것임!! 
		ArrayList<Category> list = new BoardService().selectCategoryList();
		
		request.setAttribute("list", list);
		
		// 게시글 작성하기 페이지 포워딩
		ArrayList<Review> list = new ReviewService().selectReview();
		
		request.setAttribute("list", list);
		*/
		
		
		request.setAttribute("pno", Integer.parseInt(request.getParameter("pno")));
		
		request.getRequestDispatcher("views/product/reviewEnrollForm.jsp").forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
