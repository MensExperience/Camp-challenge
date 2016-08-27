<%-- 
    Document   : 2-3challenge
    Created on : 2016/08/19, 14:38:19
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    long num = 8;
            
    for(int i=1; i<20; i++){
    num = num * 8;
    }
    
    out.print("８を２０回掛けた数は、" + num + "です");  
%>    