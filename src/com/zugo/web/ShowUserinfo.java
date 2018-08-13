package com.zugo.web;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.zugo.domain.House;
import com.zugo.domain.User;
import com.zugo.factory.BeanFactory;
import com.zugo.service.HouseService;
import com.zugo.service.UserService;
import com.zugo.util.FileUtil;
import com.zugo.util.UUIDUtil;


/**
 * 显示用户信息
 */
@WebServlet("/front/showUserInfo")
public class ShowUserinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
     UserService userService=BeanFactory.getInstance("userService", UserService.class);
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			User user=(User) request.getSession().getAttribute("user");
			 user=userService.findUserByPhone(user.getUser_phone());
			 request.setAttribute("userinfo", user);
			 request.getRequestDispatcher("userinfo.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
