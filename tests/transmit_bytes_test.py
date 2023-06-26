import serial

print(serial.tools.list_ports)

with serial.Serial('COM4') as s:
    s.write('ok')
    s.close()