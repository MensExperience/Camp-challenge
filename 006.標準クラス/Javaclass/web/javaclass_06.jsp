<%-- 
    Document   : javaclass6
    Created on : 2016/08/31, 18:05:04
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //Javaの基本クラス　基礎課題
        //６．自分のメールアドレスの「@」以降の文字を取得して、表示してください。
        
        String myMail = "uezu.chiharu@gmail.com";
        out.println("mail：" + myMail + "<br><br>");
        
        //＠の位置を取得
        int i = myMail.indexOf("@");
        
        //＠以降を表示
        out.println("@マーク以降の文字は、" + (myMail.substring(i) + ("です")));
        
        %>
    </body>
</html>
