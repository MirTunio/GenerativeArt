"""
TUNIO 2019

Pointilism
"""

import PIL
try:
    from PIL import ImageGrab
    from PIL import Image
except ImportError:
    import Image

import numpy as np    

import matplotlib.pyplot as plt
import cv2

import pandas as pd
from PIL import ImageFilter
#%%

A = Image.open('Carousel.jpg') #NOTCH
Ar = A.resize((380,441))
Ar = Ar.filter(ImageFilter.GaussianBlur(3))

#%% Pull pix

xlist = [] #189 for all pixels
ylist = []  #Y coordinate from the image
rlist = []  #relative x from the center
alist = []  #85 for all for now
tlist = []  #What rotational coordinate on the carusel? will need a lin transform
vlist = []  #0.08 for all
clist = []  #read from the image


Aray = np.array(Ar)
EX = Aray.shape[1]
EY = Aray.shape[0]

OUTOUT = pd.DataFrame(columns = ['xlist', 'ylist', 'rlist', 'alist', 'tlist', 'clist'])

while len(xlist) < 1000: #for choix in range(500):
    xr = np.random.randint(EX)
    yr = np.random.randint(EY)
    
    CC = Aray[yr][xr]
    
    if not(CC[0] == CC[1] == CC[2] == 255):
        xlist.append(189)
        ylist.append(yr)
        #rlist.append(189) #np.abs(xr-189))
        alist.append(85)
        vlist.append(0.08)
        clist.append(list(Aray[yr][xr]))
        
        if yr > 180:
            rlist.append(189) #np.abs(xr-189))
            
            rat = (xr-190)/(190)
            deg = round(np.arcsin(rat),6)
            tlist.append(deg)
            
            OUTOUT = OUTOUT.append({'xlist':189, 'ylist':yr, 'rlist':189, 'alist':85, 'tlist':deg, 'clist':list(Aray[yr][xr])} , ignore_index=True)
        
        else:
            rlist.append(np.abs(xr-189))
            
            rat = (xr-190)/(190)
            deg = round(np.arcsin(rat),6)
            tlist.append(deg)
            
            OUTOUT = OUTOUT.append({'xlist':189, 'ylist':yr, 'rlist':189, 'alist':85, 'tlist':deg, 'clist':list(Aray[yr][xr])} , ignore_index=True)
            


OUTOUT.to_csv('carousel0.csv')
    
    
    
#%% Show me what you got
    
with open('your_file.txt', 'w') as f:
    for item in clist:
        f.write("%s," % item)
    
    
    
#%% 
LIST =  [xlist, ylist, rlist, alist, vlist, tlist, ]
        
with open('your_file_new.txt', 'w') as f:
    for POINTK in LIST:
        for item in POINTK:
            f.write("%s," % item)
            
    for item in clist:
        item = str(item)[:-1]+','+']'
        f.write("%s," % item)
    
    
#%%
    
    
    
    
    
    
    