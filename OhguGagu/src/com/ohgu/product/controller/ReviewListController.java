package com.ohgu.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ohgu.board.model.service.BoardService;
import com.ohgu.board.model.vo.Board;
import com.ohgu.common.model.vo.PageInfo;

/**
 * Servlet implementation class ReviewListController
 */
@WebServlet("/list.rv")
public class ReviewListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// ----- 페이징 처리 -----
		/*
		// 필요한 변수들
		int listCount; // 현재 총 게시글의 갯수
		int currentPage; // 현재 페이지 (즉, 사용자가 요청하는 페이지)
		int pageLimit; // 페이지 하단에 보여질 페이징바의 최대 페이지 갯수
		int boardLimit; // 한 페이지에 보여질 게시글의 최대 갯수 (몇개 단위씩 끊어서 볼거냐)
		
		int maxPage; // 가장 마지막 페이지가 몇번째페이지인지 (즉, 총 페이지 수)
		int startPage; // 페이지 하단에 보여질 페이징바의 시작수
		int endPage; // 페이지 하단에 보여질 페이징바의 끝수
		
		// * listCount : 총 게시글 갯수 (삭제된 게시글은 제외하고 카운트)
		listCount = new ReviewService().selectListCount();
		
		
		// * currentPage : 현재페이지 (즉, 사용자가 요청한 페이지)
		currentPage = Integer.parseInt(request.getParameter("currentPage")); // "1" -> 1

		pageLimit = 10;

		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit - 1;
		
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, 
								   boardLimit, maxPage, startPage, endPage);
		
		
		// pi 를 넘기면서 서비스로 요청 후 결과 받기
		ArrayList<Review> list = new ReviewService().selectList(pi);
		
		// 응답페이지에서 필요로 하는 데이터 먼저 담기
		// 실제 조회된 리스트 (list), 페이징바 (pi)
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		*/
		
		
		request.getRequestDispatcher("views/product/reviewListView.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
