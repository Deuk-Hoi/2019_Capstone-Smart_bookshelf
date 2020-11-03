import socketio
import serial
import time

sio = socketio.Client()

@sio.event
def connect():
    print('connect')

#@sio.on('get_messeage')
#def on_messeage(data):
#    print(data)

@sio.on('receive message') #recv data
def on_messeage(data):
    print(data)
    if data == 'ok' or data == 'no':
        return
    
    ser = serial.Serial('/dev/ttyUSB0',9600)
    time.sleep(5)
    
    
    A = data
    A = str(A)
    Trans = A
    Trans = Trans.encode('utf-8')
    ser.write(Trans)
    
    a = ser.readline()
    a = a.decode()[:len(a)-2]
    print(a)
    
    if a=='ok':
        sio.emit('send message','ok') #give data
    elif a=='no':
        sio.emit('send message','no')

@sio.event
def disconnect():
    print('disconnect')


sio.connect('http://210.119.107.114:9928')
sio.wait()