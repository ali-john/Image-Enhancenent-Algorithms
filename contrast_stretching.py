import numpy as np
import cv2 as opencv

# Read Image
image = opencv.imread('einstein.PNG', opencv.IMREAD_GRAYSCALE)
fifth_percentile = np.percentile(image, 5)  # 5th percentile- used as min value 
nintyfive_percentile = np.percentile(image, 95)  # used for max value
output = np.zeros([image.shape[0], image.shape[1]], dtype=np.uint8)
# pixel value less than 5th percentile -- set to 0
# pixel value > 95th percentile -- set to 255
# 5th percentile < pixel value < 95th percentile -- stretch according to formula 
for i in range(image.shape[0]):
    for j in range(image.shape[1]):
        val = image[i, j]
        if val < fifth_percentile:
            output[i, j] = 0
        elif val > nintyfive_percentile:
            output[i, j] = 255
        else:
            output[i, j] = ((image[i, j] - fifth_percentile) / (nintyfive_percentile - fifth_percentile)) * 255

opencv.imshow('input', image)
opencv.imshow('output', output)
