<%-- 
    Document   : javaclass1
    Created on : 2016/08/31, 15:34:39
    Author     : uezuchiharu
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //Javaの基本クラス　基礎課題
        //１．2016年1月1日 0時0分0秒のタイムスタンプを作成し、表示してください。
        
        Calendar cal = Calendar.getInstance();
        cal.set(2016,0,1,0,0,0);
        Date d = cal.getTime();
        out.print("2016/1/1 00:00:00のタイムスタンプ<br>" + d.getTime());
         
        %>           
    </body>
</html>
