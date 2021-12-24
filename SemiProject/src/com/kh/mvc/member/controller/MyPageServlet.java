package com.kh.mvc.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.mvc.member.model.vo.Member;

@WebServlet("/member/myPage")
public class MyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MyPageServlet() {

    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// 로그인 되었을 때 마이페이지 접근 가능
    	HttpSession session = request.getSession(false); 
    	
    	Member loginMember = session != null ? (Member) session.getAttribute("loginMember") : null;
    	

    	if(loginMember != null) {    		
    		request.getRequestDispatcher("/views/member/myPage.jsp").forward(request, response);    		
    	} else {
    		request.setAttribute("msg", "로그인 후 수정해 주세요.");
			request.setAttribute("location", "/");

    	
		// 요청을 jsp로 받을 수 있게 forward 
		request.getRequestDispatcher("/views/member/myPage.jsp").forward(request, response);
		
    	}
    }
}
