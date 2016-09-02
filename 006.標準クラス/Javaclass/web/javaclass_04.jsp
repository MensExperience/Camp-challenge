<%-- 
    Document   : javaclass4
    Created on : 2016/08/31, 16:32:22
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
        //４．2015年1月1日 0時0分0秒と2015年12月31日 23時59分59秒の差（ミリ秒）を表示してください。
        
        // 2015/1/1 00:00:00を作成
        Calendar cal1 = Calendar.getInstance();
        cal1.set(2015,0,1,0,0,0);
        Date d1 = cal1.getTime();      
        
        // 2015/12/31 23:59:59を作成
        Calendar cal2 = Calendar.getInstance();
        cal2.set(2015,11,31,23,59,59);
        Date d2 = cal2.getTime();
        
        // d1をロング値に変更
        long long1 = d1.getTime(); 
        
        // d2をロング値に変更
        long long2 = d2.getTime();
     
        //差の計算       
        long newlong = (long2 - long1);
        out.println("2015/1/1 00:00:00と2015/12/31 23:59:59の差は<br>" + newlong + "秒です");

        %>
    </body>
</html>
