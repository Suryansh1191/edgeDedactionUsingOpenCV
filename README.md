# edgeDedactionUsingOpenCV
An iOS Swift Based App that uses c++ to interact with OpenCV and produce edge dedication images

## Feature 
1. Uses OpenCV for creating Canny edge detection Images
2. Users can choose an image from photos, click from the camera or directly enter the URL from the Internet 
3. Every image converted to its Canny edge dedicated form is stored in local storage for History tracking 

## Video Recording 

https://user-images.githubusercontent.com/69685349/192567101-c68f2e9d-ee80-401f-afac-8266d2bd8925.mov

## Screen Shots
<img src = "https://user-images.githubusercontent.com/69685349/192569769-88a49b16-7ce9-4dfc-8c15-41c0415626fc.jpeg" width="210" hight ="360">     <img src = "https://user-images.githubusercontent.com/69685349/192568893-b1fa412d-6cca-4d01-9958-7fa8b5faf684.PNG" width="210" hight ="360">

<img src = "https://user-images.githubusercontent.com/69685349/192568883-932b2bf5-e166-4792-a330-9bc1905c1133.PNG" width="210" hight ="360">      <img src = "https://user-images.githubusercontent.com/69685349/192568858-dd0c04a5-45ab-4f87-b978-cd3729786094.PNG" width="210" hight ="360">

## Note: You Need to set up an environment to run this in your machine 
1. _Download OpenCV Framework_ for iOS From [here](https://sourceforge.net/projects/opencvlibrary/files/4.6.0/opencv-4.6.0-ios-framework.zip/download)
2. And just _past it inside the project_ main file 

And you are good to go!!!
Need to do this because at the time of development **_openCV-iOS pod is not working_** due to some issue and the OpenCV Framework file is 500MB+ and can't be uploaded to GitHub. (Will fix this once the pod start working)
