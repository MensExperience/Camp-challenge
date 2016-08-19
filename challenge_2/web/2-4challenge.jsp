<%-- 
    Document   : 2-4challenge
    Created on : 2016/08/19, 15:12:01
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String aaa = "a";
    
    for(int i=1; i<30; i++){
        aaa = aaa + "a";
    }
    out.print(aaa);    
%>