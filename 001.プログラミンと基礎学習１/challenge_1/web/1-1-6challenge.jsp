<%-- 
    Document   : challenge1-1_6
    Created on : 2016/08/18, 0:23:25
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    out.println("hello<br>");
    out.println("groove" + "-" + "gear<br>");
    out.println("名前は上江洲智春です<br>");
    out.println("誕生日は３月２２日です<br>");
    
    int num1 = 10;
    int NUM2 = 5;
    
    int tasu = num1 + NUM2;
    int hiku = num1 - NUM2;
    int kake = num1 * NUM2;
    int wari = num1 / NUM2;
    int amari = num1 % NUM2;
    
    out.println(num1 + "と" + NUM2 + "を足した数は" + tasu + "です<br>");
    out.println(num1 + "から" + NUM2 + "を引いた数は" + hiku + "です<r>");
    out.println(num1 + "と" + NUM2 + "を掛けた数は" + kake + "です<br>");
    out.println(num1 + "と" + NUM2 + "を割った数は" + wari + "です<br>");
    out.println(num1 + "と" + NUM2 + "を割った余りは" + amari + "です<br>");
    
   int num3 = 5;
   
   if (num3 == 1) {
       out.println("１です！");
   } else if (num3 == 2) {
       out.println("プログラミングキャンプ！");
   } else {
       out.println("それ以外です！");
   }
%>