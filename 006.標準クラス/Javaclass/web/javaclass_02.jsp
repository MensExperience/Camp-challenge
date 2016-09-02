<%-- 
    Document   : javaclass2
    Created on : 2016/08/31, 15:54:01
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
        //２．現在の日時を「年-月-日 時:分:秒」で表示してください。
        
        //現在時刻の取得
        Date d = new Date();
        
        Calendar cal = Calendar.getInstance();
        cal.setTime(d);
        
        //値の取得
        int yy = cal.get(Calendar.YEAR);
        int mm = cal.get(Calendar.MONTH) + 1;
        int dd = cal.get(Calendar.DAY_OF_MONTH);
        int hh = cal.get(Calendar.HOUR);
        int min = cal.get(Calendar.MINUTE);
        int sec = cal.get(Calendar.SECOND);
        
                
        //表示する
        out.println("現在の時刻は" + yy + "年" + mm + "月" + dd + "日<br>" +
                hh + "時" + min + "分" + sec + "秒です!");
        
        %>        
    </body>
</html>
