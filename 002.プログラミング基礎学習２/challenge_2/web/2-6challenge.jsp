<%-- 
    Document   : 2-6challenge
    Created on : 2016/08/19, 15:40:22
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    double num = 1000;
    
    while(num > 100){
        num = num / 2;
    }
    out.print(num);
%>