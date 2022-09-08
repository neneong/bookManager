<%@page import="vo.BookVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../menu.jsp" %>

	<h2>도서 조회 결과</h2>
	
<%
	ArrayList<BookVO> list = (ArrayList<BookVO>)request.getAttribute("book_list");

%>

	

<%@ include file = "../footer.jsp" %>