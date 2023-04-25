package com.ohgu.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ohgu.common.model.vo.PageInfo;
import com.ohgu.product.model.service.ProductService;
import com.ohgu.product.model.service.ReviewService;
import com.ohgu.product.model.vo.Image;
import com.ohgu.product.model.vo.Product;
import com.ohgu.product.model.vo.Review;

import com.ohgu.product.model.service.ProductService;
import com.ohgu.product.model.vo.Product;

/**
 * Servlet implementation class ProductDetailViewController
 */
@WebServlet("/detailView.pr")
public class ProductDetailViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 상품 한개 정보 조회해오기
		int productNo = Integer.parseInt(request.getParameter("pno"));
		
		Product p = new ProductService().selectProduct(productNo);
		
		// 상품 상세이미지 모두 가져오기
		
		ArrayList<Image> imageList = new ProductService().selectImgs(productNo);
		
		int listCount; // 현재 총 게시글의 갯수
		int currentPage; // 현재 페이지 (즉, 사용자가 요청하는 페이지)
		int pageLimit; // 페이지 하단에 보여질 페이징바의 최대 페이지 갯수
		int boardLimit; // 한 페이지에 보여질 게시글의 최대 갯수 (몇개 단위씩 끊어서 볼거냐)
		
		int maxPage; // 가장 마지막 페이지가 몇번째페이지인지 (즉, 총 페이지 수)
		int startPage; // 페이지 하단에 보여질 페이징바의 시작수
		int endPage; // 페이지 하단에 보여질 페이징바의 끝수
				
		
		listCount = new ReviewService().selectListCount(productNo);
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 5;
		boardLimit = 5;
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		ArrayList<Review> list = new ReviewService().selectReview(pi, productNo);
		
		request.setAttribute("pno", productNo);
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);
		request.setAttribute("p", p);
		request.setAttribute("imageList", imageList);

		request.getRequestDispatcher("views/product/productDetailView.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
