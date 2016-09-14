<%@page import="javax.servlet.http.HttpSession" %>

<%//セッション開始
    HttpSession hs = request.getSession();
%>    
   
<%-- 
    Document   : database_13_login
    Created on : 2016/09/08, 18:43:15
    Author     : uezuchiharu
    
    ログイン画面
    ・ログインフォーム
    ・ホーム画面への遷移
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COMIC LIST / login</title>
    </head>
    <body>
        <h1>ログイン画面</h1>
        <br>
        <form method="post" action="database_13_logincheck">
            <p>
                ユーザーID &nbsp; <input type ="number" name="id"><br>
                パスワード &nbsp; <input type ="number" name="pass"><br>
                <br>
                <input type="submit" value="ログイン">
            </p>
        </form>
        <br>
        <br>
        <a href ="database_13_home.jsp">ホーム画面へ戻る</a>
    </body>
</html>
