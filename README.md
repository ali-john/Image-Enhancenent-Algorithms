# Image-Enhancenent-Algorithms

 ---
 Image enhancement is the process of adjusting digital images so that the results are more suitable for display or further image analysis. For example, you can remove noise, sharpen, or brighten an image, making it easier to identify key features.
 Enhancements are used to make it easier for visual interpretation and understanding of imagery. The advantage of digital imagery is that it allows us to manipulate the digital pixel values in an image. Although radiometric corrections for illumination, atmospheric influences, and sensor characteristics may be done prior to distribution of data to the user, the image may still not be optimized for visual interpretation. Remote sensing devices, particularly those operated from satellite platforms, must be designed to cope with levels of target/background energy which are typical of all conditions likely to be encountered in routine use. With large variations in spectral response from a diverse range of targets (e.g. forest, deserts, snowfields, water, etc.) no generic radiometric correction could optimally account for and display the optimum brightness range and contrast for all targets. Thus, for each application and each image, a custom adjustment of the range and distribution of brightness values is usually necessary.
 
 ---
 
## Contrast Stretching.


Contrast Stretching is an image enhancement technique used as preprocessing step to enhance image contrast by stretching the range of intensity values it contains to span a desired range of values.
It differ from histogram equalization technique in that it can only apply linear scaling function to image pixels.
The idea of contrast stretching is that for an image in which intensities are not spanned over available range, expand them to simply all available intensity range.
Lets take an example for understadning this algorithm working.



<img src="https://user-images.githubusercontent.com/63426759/208643993-245d7464-23b7-4035-99c6-d5beb7be2ade.png" width="300" height="500" >

Now expand the range of intensities over all available intensity ranges. After doing this, the changes histogram and image is shown below:

<img src="https://user-images.githubusercontent.com/63426759/208645491-efafa149-7f10-4206-925a-9a6736580eae.png" width="300" height="500" >

An example for contrast stretching algorithm is shown below:

<img src="https://user-images.githubusercontent.com/63426759/208645853-ce281c6a-6da4-484b-b992-e15383ce127b.png" width="300" height="300" >

 ---
## Histogram Equalization.

Histogram Equalization is a computer image processing technique used to improve contrast in images. It accomplishes this by effectively spreading out the most frequent intensity values, i.e. stretching out the intensity range of the image. This method usually increases the global contrast of images when its usable data is represented by close contrast values. This allows for areas of lower local contrast to gain a higher contrast.

Lets take an example to better understand this algorithm. Image before histogram equalization. Corresponding histogram(red) and cummulative histogram(black).


<img src="https://user-images.githubusercontent.com/63426759/208648061-fd536e73-6325-4a63-9951-2d35b5f0ded2.png" width="600" height="300" >

In the above figure, X-axis represents the tonal scale (black at the left and white at the right), and Y-axis represents the number of pixels in an image. Here, the histogram shows the number of pixels for each brightness level (from black to white), and when there are more pixels, the peak at the certain brightness level is higher.

The image after histogram equalization technique is applied is shown below:

<img src="https://user-images.githubusercontent.com/63426759/208648658-c3dc8115-d4ae-46b8-b46a-eff9adceaa0e.png" width="600" height="300" >


A color histogram of an image represents the number of pixels in each type of color component. Histogram equalization cannot be applied separately to the Red, Green and Blue components of the image as it leads to dramatic changes in the image’s color balance. However, if the image is first converted to another color space, like HSL/HSV color space, then the algorithm can be applied to the luminance or value channel without resulting in changes to the hue and saturation of the image.

 ---
 ## Balance Contrast Enhancement Technique:
This technique provides solution to biased color (RGB) composition. The contrast of the image can be stretched or compressed without changing the histogram pattern of the input image(x). The solution is based on the parabolic function obtained from the input image. The output of BCET is shown below:

<img src="https://user-images.githubusercontent.com/63426759/208751144-021f4ac9-3d4f-433c-abf6-a01826988130.png" width="600" height="300" >




 
