"""
TUNIO 2019

Domain Warping Try
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

#%%m,
# Untouched images
A = Image.open('A.jpg') #NOTCH
B = Image.open('B.png') #BERGER
C = Image.open('C.jpg') #REN
    
# Rescaled
Ar = A.resize((500,500))
Br = B.resize((500,500))
Cr = C.resize((500,500))

# Arrays
A1 = np.array(Ar)
B1 = cv2.cvtColor(np.array(Br), cv2.COLOR_BGRA2BGR)
C1 = np.array(Cr)

#%%
plt.imshow(A1 + B1 + C1)

#%%
for i in range(500):
    for j in range(500):
        for k in range(3):
            if A1[i,j,:] + B1[i,j,:] > 125:
                C1[i,j,k] = C1[i,j,k]
            else:
                C1[i,j,k] = 0;
 
plt.imshow(C1)           