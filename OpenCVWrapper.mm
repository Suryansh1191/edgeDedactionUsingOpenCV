//
//  OpenCVWrapper.m
//  imgEdgeDetection
//
//  Created by suryansh Bisen on 26/09/22.
//


#import <opencv2/opencv.hpp>
#import "OpenCVWrapper.h"
#import <opencv2/imgcodecs/ios.h>


@implementation OpenCVWrapper

//function to get openCV version
+ (NSString *)openCVVersionString {
    return [NSString stringWithFormat:@"OpenCV Version %s",  CV_VERSION];
}

//function to dedact image Canny edge
+(UIImage *) dedactEdge:(UIImage *)image
{
    cv::Mat imageMat;
    UIImageToMat(image, imageMat);
    cv::rotate(imageMat, imageMat, cv::ROTATE_90_CLOCKWISE);

    cv::Mat gray_image;

    std::vector<cv::Mat> channels;
    cv::Mat hsv;
    cv::cvtColor( imageMat, hsv, cv::COLOR_RGB2HSV );
    cv::split(hsv, channels);
    gray_image = channels[0];

    cv::Mat cannyImg;
    cv::Canny(imageMat, cannyImg ,10, 350);

    cv::rotate(cannyImg, cannyImg, cv::ROTATE_90_COUNTERCLOCKWISE);

    
    UIImage* img = MatToUIImage(cannyImg);
    return img;

}

@end



