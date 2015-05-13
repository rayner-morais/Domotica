<%@page import="br.cefet.rayner.Arduino"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Arduino arduino = new Arduino();
    
    String estado = (String) request.getParameter("estado");
    char c = estado.charAt(0);
  
    switch (c) {
        case 'a':
            arduino.write('a');
            break;
        
        case 'A':
            arduino.write('A');
            break;
        
        case 'B': {
            String valor = (String) request.getParameter("valor");
            int v = Integer.parseInt(valor);
            arduino.write('1');
            arduino.write((byte) v);
            break;
        }
        
        case 'd':
            arduino.write('d');
            break;
            
        case 'f':
            arduino.write('f');
            break;
        
        case 'g':
            arduino.write('g');
            break;
            
        case 'h':
            arduino.write('h');
            break;
            
        case 'X':
            arduino.write('X');
            break;
            
        case 'x':
            arduino.write('x');
            break;
        
        case 'W': {
            String valor = (String) request.getParameter("valor");
            int v2 = Integer.parseInt(valor);
            arduino.write('2');
            arduino.write((byte) v2);
            break;
        }
    }
%>
