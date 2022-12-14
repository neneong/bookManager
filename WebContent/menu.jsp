<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <style>
        * {
            margin: 0;
            padding: 0;
            text-decoration: none;
            box-sizing: border-box;

        }

       	.wrapper{
       		width:100%;
       		min-height:100%;
       		marin:0 auto;
       		padding: 10px;
       	}
       	
       	header{
       		height:100px;
            text-align: center;
            line-height: 80px;
            background-color: #0b5da1;
       	}

        .row{
            margin:1em auto;
            display:flex;
            justify-content: flex-start;
            flex-wrap: wrap;
            /* background-color : yellow; */    
        }

        .side_menu{
            position:relative;
            width: 150px;
            height:300px;
        }

        .side_menu a{
            position:absolute;
            width:200px;
            padding:10px;
            line-height: 30px;
            font-size: 15px;
            text-align: center;
            font-weight: bold;
            color:white;
            border-radius: 0 5px 5px 0;
        }

        .content{
            width:80%;
            text-align: center;
        }

        #intro{
            top:0px;
            background-color: #4CAF50;
        }

        #login, #logout{
            top:55px;
            background-color: #2196F3;
        }

        #search{
            top:110px;
            background-color: #f44336;
        }

        #rental{
            top:165px;
            background-color: #f5ce42;
            color:black;
        }

        #quit{
            top:220px;
            background-color: #555;
        }

        footer{
            position: absolute;
            width:100%;
            height:50px;
            left:0;
            bottom:0;
            background-color: #c2d6d6;
            text-align: center;
            line-height: 50px;
        }

        .content table{
            margin: 50px auto;
        }

        h1, h2, h3, h4, h5, h6{
            margin-bottom: 40px;
        }

    </style>
</head>
    <body>
        <div class="wrapper">
            <header>
                <h1> ??????????????????????????? ????????? ???????????? </h1>
            </header>
            
            <div class="row">
                <div class="side_menu">
                    <%
                        MemberVO login = (MemberVO)session.getAttribute("loginOK");
                    %>

                    <a href="/index.jsp">????????????</a>
                    <%
                        if(login==null){

                        
                    %>

                    <a href="/login/login.jsp" id="login">?????????</a>
                    <a href="/book/searchBook.jsp" id = "search">?????? ??????</a>
                    <a href="" id="rental">??????????????????</a>
                    <a href="" id="quit">????????????</a>

                    <%
                        }else{
                    %>

                    <a href="/logout" id = "logout"> ???????????? <%= login.getMemberId() %></a>
                    <a href="/book/searchBook.jsp" id="search">?????? ??????</a>
                    <a href="/rentalBook" id="rental">??????????????????</a>
                    <a href="/quit" id="quit">????????????</a>
                
                    
                    <%
                        }
                    %>


                </div>

                <div class="content">
            </div>
        </div>
        
