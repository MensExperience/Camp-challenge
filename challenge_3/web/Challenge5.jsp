<%-- 
    Document   : Challenge5
    Created on : 2016/08/25, 15:20:21
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<%!
    //ID、名前、生年月日、住所を返却するメソッド
    ArrayList getProfile(){
    
    ArrayList<String> list = new ArrayList<>();
    
    list.add("ID：9999");
    list.add("名前：上江洲智春");
    list.add("誕生日：３月２２日");
    list.add("住所：横浜市");
    return list;
}
    
%>

<%
    ArrayList list = getProfile();
    for(int x = 1; x < list.size(); x++){
    out.print(list.get(x) + "<br>");
    }
%>
