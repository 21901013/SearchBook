<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.user.UserDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.crud.user.UserVO" />
<jsp:setProperty property="*" name="u"/>

<%
	UserDAO userDAO = new UserDAO();
	int i = userDAO.updateUser(u);
	response.sendRedirect("list.jsp");
%>