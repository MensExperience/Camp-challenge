<%-- 
    Document   : javaclass3
    Created on : 2016/08/31, 16:14:40
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
        //３．2016年11月4日 10時0分0秒のタイムスタンプを作成して「年-月-日 時:分:秒」で表示してください。
        
        //タイムスタンプ作成
        Calendar cal = Calendar.getInstance();
        cal.set(2016,10,4,10,0,0);
        Date d = cal.getTime();
        out.println("2016/11/4 10:00:00のタイムスタンプ<br>" + d.getTime() + "<br><br>");
        
        //値の取得
        int yy = cal.get(Calendar.YEAR);
        int mm = cal.get(Calendar.MONTH) + 1;
        int dd = cal.get(Calendar.DAY_OF_MONTH);
        int hh = cal.get(Calendar.HOUR);
        int min = cal.get(Calendar.MINUTE);
        int sec = cal.get(Calendar.SECOND);

        //表示
       out.println(yy + "年" + mm + "月" + dd + "日" + hh +
               "時" + min + "分" + sec + "秒");
        
        %>
    </body>
</html>
