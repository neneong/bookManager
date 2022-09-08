<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../menu.jsp" %>

<%
    ArrayList<RentVO> list = (ArrayList<RentVO>)request.getAttribute("rent_list");

%>

<h2>도서 대여 결과 화면</h2>

<table width="800px" border="1" align="center">
    <tr></tr>
</table>

    
<%@ include file = "../footer.jsp" %>