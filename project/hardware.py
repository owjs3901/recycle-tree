import RPi.GPIO as GPIO
from time import sleep

pin_1 = 29#pin num
pin_2 = 31
pin_3 = 33
pin_4 = 37

max_duty = 12
min_duty = 3
GPIO.setmode(GPIO.BOARD)

GPIO.setup(pin_1,GPIO.OUT)#setting pins
GPIO.setup(pin_2,GPIO.OUT)
GPIO.setup(pin_3,GPIO.OUT)
GPIO.setup(pin_4,GPIO.OUT)

servo_pin_1 = GPIO.PWM(pin_1,50)#setting 50HZ
servo_pin_2 = GPIO.PWM(pin_2,50)
servo_pin_3 = GPIO.PWM(pin_3,50)
servo_pin_4 = GPIO.PWM(pin_4,50)

servo_pin_1.start(0)#start pwm
servo_pin_2.start(0)
servo_pin_3.start(0)
servo_pin_4.start(0)

def setangle(servo_pin_num,angle):
    if angle > 180:
        angle = 180
    servo_pin_num.ChangeDutyCycle(min_duty+angle*(max_duty-min_duty)/180)
    
    
def can_in():
    print('can')
    setangle(servo_pin_2,40)
    setangle(servo_pin_3,60)
    sleep(1)
    setangle(servo_pin_1,30)
    sleep(1)
    setangle(servo_pin_1,150)
def pla_in():
    print('pla')
    setangle(servo_pin_2,40)
    setangle(servo_pin_3,20)
    sleep(1)
    setangle(servo_pin_1,30)
    sleep(1)
    setangle(servo_pin_1,150)
def paper_in():
    print('paper')
    setangle(servo_pin_2,85)
    setangle(servo_pin_4,60)
    sleep(1)
    setangle(servo_pin_1,30)
    sleep(1)
    setangle(servo_pin_1,150)
def cell_in():
    print('cell')
    setangle(servo_pin_2,85)
    setangle(servo_pin_4,20)
    sleep(1)
    setangle(servo_pin_1,30)
    sleep(1)
    setangle(servo_pin_1,150)
            