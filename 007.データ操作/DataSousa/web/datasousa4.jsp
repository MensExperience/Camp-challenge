<%-- 
    Document   : datasousa4
    Created on : 2016/09/01, 14:25:28
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.*"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //JAVAのデータ操作　基礎課題
        //４．３と同じ機能をセッションで作成してください。
        
        //１回目の訪問
        Date time = new Date();
        HttpSession hsession = request.getSession(true);
        hsession.setAttribute("lastLogin",time.toString());
        
        //次の訪問
        HttpSession hs = request.getSession(true);
        out.println("前回のログイン：" + hs.getAttribute("lastLogin"));        

        %>
    </body>
</html>

