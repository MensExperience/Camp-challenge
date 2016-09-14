<%@page import="javax.servlet.http.HttpSession" %>

<%//セッション開始
    HttpSession hs = request.getSession();
%>

<%-- 
    Document   : database_13_addcomiclist
    Created on : 2016/09/08, 18:44:33
    Author     : uezuchiharu
    商品登録フォーム画面
    ・商品登録フォーム
    ・ユーザートップページへの遷移
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>コミックリストに登録</h1>
        <br>
        <form method="post" action="database_13_addList">
            <p>
                ナンバー：<input type="text" name="number" value="<%= hs.getAttribute("number") %>"><br>
                タイトル：<input type="text" name="title" value="<%= hs.getAttribute("title")%>"><br>
                作者：<input type="text" name="author" value="<%= hs.getAttribute("author")%>"><br>
                価格：<input type="text" name="price" value="<%= hs.getAttribute("price")%>"><br>
                <input type="submit" value="登録">
            </p>  
        </form>
        <br>
        <br>
        <a href="database_13_userPage.jsp">戻る</a>
    </body>
</html>
