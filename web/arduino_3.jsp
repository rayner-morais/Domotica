<%@page import="br.cefet.rayner.Arduinonano"%>
<%@page contentType="text/json" pageEncoding="UTF-8"%>
<%
    Arduinonano arduino = new Arduinonano();
    
    arduino.write('j');
    Thread.sleep(500);
    String currentString = arduino.read();
    
    String string = currentString;
    float current = Float.parseFloat(string);
%>
{"current":<%= current %>}