<%-- 
    Document   : javaclass5
    Created on : 2016/08/31, 17:52:35
    Author     : uezuchiharu
--%>

<%@page import="java.nio.charset.Charset"%>
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
        //５．自分の氏名について、バイト数と文字数を取得して、表示してください。
        
        String name = "上江洲智春";
        
        //バイト数を取得
        out.println(name + "のバイト数：" + (name.getBytes().length) + "です<br>");
        
        //文字数を取得
        out.println(name + "の文字数：" + name.length() + "です");
            
        
        %>    
    </body>
</html>
