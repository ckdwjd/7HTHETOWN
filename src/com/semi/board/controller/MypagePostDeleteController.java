package com.semi.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.semi.board.model.service.BoardService;
import com.semi.member.model.vo.Member;

/**
 * Servlet implementation class MypagePostDeleteController
 */
@WebServlet("/mypageDelete.bo")
public class MypagePostDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypagePostDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		String boardNo = request.getParameter("bno");
		
		String[] boardList = boardNo.split(",");
		
		int result = 0;
		
		for(int i = 0; i<boardList.length; i++) {
			result = new BoardService().deleteMyBoard(boardList[i]);
		}
		
		if(result > 0) {
			session.setAttribute("alertMsg", "삭제성공");
			if(loginUser.getUserId().equals("admin")) {
				response.sendRedirect(request.getContextPath()+"/free.ad");				
			}else {
				response.sendRedirect(request.getContextPath()+"/posting.me");
			}
		}else{
			request.setAttribute("alertMsg", "삭제실패");
			request.getRequestDispatcher("").forward(request, response);
		}
	}

}
