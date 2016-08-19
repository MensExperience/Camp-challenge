<%-- 
    Document   : 2-1-challenge
    Created on : 2016/08/19, 14:09:21
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int num = 0;
            
    switch(num){
        case 1:
            out.print("one");
            break;
        case 2:
            out.print("two");
            break;
        default:
            out.print("想定外");
            break;
    }
%>