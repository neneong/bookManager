<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../menu.jsp" %>

    <form action="/insertBook" method = "post">
        <table border = "0" align = "center" width = "300px">
            <tr>
                <td>도서코드</td>
                <td> <input type="text" name="isbn" id=""> </td>
            </tr>
            <tr>
                <td>책이름</td>
                <td><input type="text" name="title" id=""></td>
            </tr>
            <tr>
                <td>저자</td>
                <td><input type="text" name="author" id=""></td>
            </tr>
            <tr>
                <td>출판사</td>
                <td><input type="text" name="company" id=""></td>
            </tr>
            <tr>
                <td>가격</td>
                <td><input type="number" name="price" id=""></td>
            </tr>
            <tr>
                <td colspan="2" align="center" height="50px">
                    <input type="submit" value="추가">
                    <input type="reset" value="취소">
                </td>
            </tr>

        </table>
    </form>


<%@ include file="../footer.jsp" %>