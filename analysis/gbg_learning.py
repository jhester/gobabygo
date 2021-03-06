# -*- coding: utf-8 -*-
"""
Created on Mon Aug 12 20:24:35 2019

@author: Dacong
"""
import os
import numpy as np
from numpy import arctan, arctan2, sin, cos
from math import atan, atan2,pi, degrees,radians
import pandas as pd
from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt

#1000 mg = 9.80665 m/s2

df=pd.read_csv('Data/SensorTile_Log_N2.csv')

def line_graph(df):
    fig, axes = plt.subplots(nrows=3, ncols=1)
    df.plot(x=0,y=[1,2,3],figsize=(20,15), ax=axes[0],title="Acceleration")
    df.plot(x=0,y=[4,5,6],figsize=(20,15), ax=axes[1],title="Angular velocity")
    df.plot(x=0,y=[7,8,9],figsize=(20,15), ax=axes[2],title="magnetic field")
    
def scatter(df):
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d',title="Acceleration")
       # Generate the values
    x_vals = df['AccX [mg]'].values
    y_vals = df['AccY [mg]'].values
    z_vals = df['AccZ [mg]'].values
       # Plot the values
    ax.scatter(x_vals, y_vals, z_vals, c = 'b', marker='o')
    ax.set_xlabel('X-axis')
    ax.set_ylabel('Y-axis')
    ax.set_zlabel('Z-axis')
    plt.show()

    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d',title="Angular velocity")
       # Generate the values
    x_vals = df['GyroX [mdps]'].values
    y_vals = df['GyroY [mdps]'].values
    z_vals = df['GyroZ [mdps]'].values
       # Plot the values
    ax.scatter(x_vals, y_vals, z_vals, c = 'b', marker='o')
    ax.set_xlabel('X-axis')
    ax.set_ylabel('Y-axis')
    ax.set_zlabel('Z-axis')
    plt.show()

    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d',title="Angular velocity")
       # Generate the values
    x_vals = df['MagX [mgauss]'].values
    y_vals = df['MagY [mgauss]'].values
    z_vals = df['MagZ [mgauss]'].values
       # Plot the values
    ax.scatter(x_vals, y_vals, z_vals, c = 'b', marker='o')
    ax.set_xlabel('X-axis')
    ax.set_ylabel('Y-axis')
    ax.set_zlabel('Z-axis')
    plt.show()
    
#normalize v that |v|=1
def normalize(v):
    m=np.sqrt(np.sum(v**2))
    if m==0:
        print(v)
        return v
    return v/m
    
#X: left, Y:Front Z:Up
#Azimuth=arctan(Hx/Hy)
#pitch=arctan(Ax/sqrt(Ay**2+Az**2))
#roll=arctan(Ay/sqrt(Ax**2+Az**2))
#Hx=My*cos(roll)-Mz*sin(roll)
#Hy=Mx*cos(pitch)+My*sin(pitch)*sin(roll)+Mz*sin(pitch)*cos(roll)

standard_g=9.80665 #1g=9.80665 m/s2
delta_t=0.1 #second
cos45=1/np.sqrt(2)
acc_threshold=100
R=np.array([-cos45, 0, cos45])
direction=[0]
acc_zero_error=[941, 223, -215]
gyro_zero_error=[-70, 1050, 1050]
mag_zero_error=[52, -774, 187]

prev_v=np.zeros(2)
prev_a=np.zeros(2)
prev_pos=np.zeros(2)
positions=[]
distance=[0]
direction=[]

for index, row in df.head(1000).iterrows():
    #detect static, if values are the same in 10 frames(1 sec), update zero_error with avg values
    accel=np.array([row['AccX [mg]'],row['AccY [mg]'],row['AccZ [mg]']])#unit:mg
    gyro=np.array([row['GyroX [mdps]'],row['GyroY [mdps]'],row['GyroZ [mdps]']])#unit:mdps
    mag=np.array([row['MagX [mgauss]'],row['MagY [mgauss]'],row['MagZ [mgauss]']])
    static=True
    acc_avg=np.array([row['AccX [mg]'],row['AccY [mg]'],row['AccZ [mg]']])
    gyro_avg=np.array([row['GyroX [mdps]'],row['GyroY [mdps]'],row['GyroZ [mdps]']])
    mag_avg=np.array([row['MagX [mgauss]'],row['MagY [mgauss]'],row['MagZ [mgauss]']])
    for i in range(index+1, index+10):
        tmp=np.array([df.iloc[i]['AccX [mg]'],df.iloc[i]['AccY [mg]'],df.iloc[i]['AccZ [mg]']])
        diff=np.sum((tmp-accel)**2)
        acc_avg+=tmp
        gyro_avg+=np.array([df.iloc[i]['GyroX [mdps]'],df.iloc[i]['GyroY [mdps]'],df.iloc[i]['GyroZ [mdps]']])
        mag_avg+=np.array([df.iloc[i]['MagX [mgauss]'],df.iloc[i]['MagY [mgauss]'],df.iloc[i]['MagZ [mgauss]']])
        if diff>acc_threshold:
            static=False
            break;
    if static is True:
        acc_zero_error=acc_avg/10
        gyro_zero_error=gyro_avg/10
        mag_zero_error=mag_avg/10
        #print('acc zero error',acc_zero_error)
        #print('gyro zero error',gyro_zero_error)
        #print('mag zero error',mag_zero_error)
        
    #adjust acc and gyro values
    acc=(accel.astype(float)-acc_zero_error)/1000.0#unit:g
    acc=normalize(acc)
    gyro=(gyro.astype(float)-gyro_zero_error)/1000.0#unit:dps
    mag=(mag.astype(float)-mag_zero_error)
    
    pitch=arctan2(acc[0],np.sqrt(acc[1]**2+acc[2]**2))
    roll=arctan2(acc[1],np.sqrt(acc[0]**2+acc[2]**2))
    Azimuth=arctan2((mag[1]*cos(roll)-mag[2]*sin(roll)),(mag[0]*cos(pitch)+mag[1]*sin(pitch)*sin(roll)+mag[2]*sin(pitch)*cos(roll)))
    
    
    angle_speed=np.sqrt(gyro[0]**2+gyro[2]**2)*np.sign(gyro[0])
    #direction.append((direction[-1]+angle_speed*delta_t)%360)
    direction.append(Azimuth)
    
    #F+G=[x,y,z]=[x'cos45+z'cos45, y, -x'cos45+z'cos45]
    a=np.array([accel[0]*cos45+accel[2]*cos45, accel[1]]) *standard_g
    #numeriacal integration
    v= prev_v + (a+prev_a)/2*delta_t
    #rotate v with direction
    #x'=x*cos(theta)+y*cos(theto)
    #y'=-x*sin(theta)+y*cos(theta)
    new_x = v[0] * np.cos(np.deg2rad(direction[-1])) + v[1] * np.sin(np.deg2rad(direction[-1]))
    new_y = -1*v[0] * np.sin(np.deg2rad(direction[-1])) + v[1] * np.cos(np.deg2rad(direction[-1]))
    v[0]=new_x
    v[1]=new_y
    pos=prev_pos + (v+prev_v)/2*delta_t
    
    distance.append(distance[-1]+np.sqrt(np.sum((pos-prev_pos)**2)))
    positions.append(pos)
    prev_a=a
    prev_v=v
    prev_pos=pos
    
positions=np.array(positions)
plt.scatter(positions[:,0],positions[:,1]) 
plt.xlabel("X")
plt.ylabel("Y")
plt.title("track")
plt.show()

plt.plot(np.arange(0,100,0.1), direction)
plt.title("Turns")
plt.xlabel("time [s]")
plt.ylabel("Angle [degree]")


    
