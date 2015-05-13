<%@page contentType="text/json" pageEncoding="UTF-8"%>
<%
    String string = "40.3";
    float current = Float.parseFloat(string);;
%>
{"current":<%= current %>}