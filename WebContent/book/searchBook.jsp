<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ include file = "../menu.jsp" %>

	<h2>���� �˻�</h2>
	
	<a href = "/listBook?book_title=all">���� ��ü ����</a>
	
	<br><br>
	<form action = "/listBook" method = "get">
		������ : <input type = "text" name = "book_title">
		<input type = "submit" value = "�˻�">
		<input type = "reset" value = "���">
	</form>


<%@ include file = "../footer.jsp" %>