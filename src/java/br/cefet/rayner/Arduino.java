package br.cefet.rayner;

import java.util.logging.Level;
import java.util.logging.Logger;
import jssc.SerialPort;
import jssc.SerialPortException;

public class Arduino {

    private static SerialPort serial_port = null;

    public Arduino() {
        if (serial_port == null) {
            //serial_port = new SerialPort("COM3");
            serial_port = new SerialPort("/dev/ttyACM0");

            try {
                synchronized (this) {
                    serial_port.openPort();
                    serial_port.setParams(9600, 8, 1, 0);
                    wait(2000);
                }
            } catch (InterruptedException | SerialPortException ex) {
                Logger.getLogger(Arduino.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void write(byte b) {
        try {
            serial_port.writeByte(b);
        } catch (SerialPortException ex) {
            Logger.getLogger(Arduino.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void write(char c) {
        write((byte) c);
    }

}
