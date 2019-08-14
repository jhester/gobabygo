# -*- coding: utf-8 -*-
"""
Created on Mon Aug 12 20:24:35 2019

@author: Dacong
"""
import os
import numpy as np
import pandas as pd
from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt

#1000 mg = 9.80665 m/s2

df=pd.read_csv('Data/SensorTile_Log_N4.csv')

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


standard_g=9.80665 #1g=9.80665 m/s2
delta_t=0.1 #second
cos45=1/np.sqrt(2)
static_threshold=100
prev_v=np.zeros(2)
prev_a=np.zeros(2)
prev_pos=np.zeros(2)
positions=[]
distance=[0]

for index, row in df.head(2000).tail(1000).iterrows():
    #detect static, if values are the same in 10 frames(1 sec), update zero_error with avg values
    accel=np.array([row['AccX [mg]'],row['AccY [mg]'],row['AccZ [mg]']])#unit:g
    static=True
    avg=np.array([row['AccX [mg]'],row['AccY [mg]'],row['AccZ [mg]']])
    for i in range(index+1, index+10):
        tmp=np.array([df.iloc[i]['AccX [mg]'],df.iloc[i]['AccY [mg]'],df.iloc[i]['AccZ [mg]']])
        diff=np.sum((tmp-accel)**2)
        avg+=tmp
        if diff>static_threshold:
            static=False
            break;
    if static is True:
        zero_error=avg/10-np.array([-707,0,707])
        print('static',zero_error)
    accel=accel.astype(float)-zero_error
    accel=accel/1000.0
    #F+G=[x,y,z]=[x'cos45+z'cos45, y, -x'cos45+z'cos45]
    a=np.array([accel[0]*cos45+accel[2]*cos45, accel[1]]) *standard_g
    #numeriacal integration
    v= prev_v + (a+prev_a)/2*delta_t
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

#plt.plot(np.arange(0,100.1,0.1), distance)
#plt.title("Distance")
#plt.xlabel("time [s]")
#plt.ylabel("distance [m]")


    
