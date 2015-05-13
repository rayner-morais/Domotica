package br.cefet.rayner;

import java.util.logging.Level;
import java.util.logging.Logger;
import jssc.SerialPort;
import jssc.SerialPortException;

public class Arduinonano {

    private static SerialPort serial_port = null;

    public Arduinonano() {
        if (serial_port == null) {
            //serial_port = new SerialPort("COM5");
            serial_port = new SerialPort("/dev/ttyACM1");

            try {
                synchronized (this) {
                    serial_port.openPort();
                    serial_port.setParams(9600, 8, 1, 0);
                    wait(2000);
                }
            } catch (InterruptedException | SerialPortException ex) {
                Logger.getLogger(Arduinonano.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void write(byte b) {
        try {
            serial_port.writeByte(b);
        } catch (SerialPortException ex) {
            Logger.getLogger(Arduinonano.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void write(char c) {
        write((byte) c);
    }

    public String read() {
        String s = null;
        
        try {
            s = serial_port.readString();
        } catch (SerialPortException ex) {
            Logger.getLogger(Arduinonano.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return s;
    }
}
