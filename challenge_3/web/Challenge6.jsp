<%-- 
    Document   : Challenge6
    Created on : 2016/08/25, 15:42:02
    Author     : uezuchiharu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<%!
    ArrayList getProfile(int num){
    if(num == 1){
            ArrayList<String> list = new ArrayList<>();
            list.add("ID:1");
            list.add("名前:鈴木");
            list.add("誕生日:１月１日");
            list.add("住所:東京都");
            return list;
    }
    else if(num == 2){
            ArrayList<String> list = new ArrayList<>();
            list.add("ID:2");
            list.add("名前:佐藤");
            list.add("誕生日:２月２日");
            list.add("住所:神奈川県");
            return list;
    }
    else if(num == 3){
            ArrayList<String> list = new ArrayList<>();
    
            list.add("ID:3");
            list.add("名前:田中");
            list.add("誕生日:３月３日");
            list.add("住所:千葉県");
            return list;
    }
    else{
        return null;
    }
}
%>

<%
    int num = 3;
    ArrayList list = getProfile(num);
    for(int x = 1; x < list.size(); x++){
    out.print(list.get(x) + "<br>");
    }
%>