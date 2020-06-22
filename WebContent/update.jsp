<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	int personId = Integer.parseInt(request.getParameter("personid"));
	PersonVo personVo = new PersonVo(personId, name, hp, company);
	
	//dao
	PhoneDao phoneDao = new PhoneDao();
	
	//personUpdate()
	phoneDao.personUpdate(personVo);
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
%>