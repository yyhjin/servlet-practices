package com.poscodx.emaillist.controller;

import java.com.poscodx.emaillist.dao.EmaillistDao;
import java.com.poscodx.emaillist.vo.EmaillistVo;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmaillistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("a");
		
		if("add".equals(action)) {
			
		} else if("form".equals(action)) {
			
		} else {
			List<EmaillistVo> list = new EmaillistDao().findAll();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
