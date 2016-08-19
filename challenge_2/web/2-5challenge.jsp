<%-- 
    Document   : 2-5challenge
    Created on : 2016/08/19, 15:23:29
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int num = 0;
    
    for(int i=0; i<=100; i++){
        num = num + i;
    }
    out.print("0~100までを足した数は、" + num + "です");
%>
    