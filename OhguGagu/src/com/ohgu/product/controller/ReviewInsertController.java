package com.ohgu.product.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.ohgu.common.MyFileRenamePolicy;
import com.ohgu.product.model.service.ReviewService;
import com.ohgu.product.model.vo.Image;
import com.ohgu.product.model.vo.Review;
import com.oreilly.servlet.MultipartRequest;


/**
 * Servlet implementation class ReviewInsertController
 */
@WebServlet("/insert.rv")
public class ReviewInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		if(ServletFileUpload.isMultipartContent(request)) {
			

			int maxSize = 10 * 1024 * 1024; 
			String savePath = request.getSession().getServletContext().getRealPath("/resources/review_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request
															   , savePath
															   , maxSize
															   , "UTF-8"
															   , new MyFileRenamePolicy());
			
			
			String reivewContent = multiRequest.getParameter("content");
			
			int pno = Integer.parseInt(multiRequest.getParameter("productNo"));
			
			// Review 로 가공하기
			Review r = new Review();
			r.setReviewContent(reivewContent);
			r.setProductNo(pno);

			if(multiRequest.getOriginalFileName("upfile") != null) {
				// 넘어온 첨부파일이 있을 경우 

				r.setFileName("resources/review_upfiles/" + multiRequest.getFilesystemName("upfile"));
			}
			
			// 이 시점 기준으로 첨부파일이 있다면 r 의 fileName 필드에는 값이 있고 없다면 null
			System.out.println(r);

			int result = new ReviewService().insertReview(r);

			System.out.println("결과 : " + result);
			// 5. 결과에 따른 응답페이지 지정
			if(result > 0) { // 성공 
				
				request.getSession().setAttribute("alertMsg", "리뷰 작성에 성공했습니다.");
				
				response.sendRedirect(request.getContextPath() + "/detailView.pr?currentPage=1&pno=" + pno);
				
			} else { // 실패 => 에러페이지로 포워딩
				
				
					new File("resources/review_upfiles/" + r.getFileName()).delete();
					

					request.setAttribute("errorMsg", "게시글 작성 실패");
					
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
			
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




















