//
//  OpenCVWrapper.h
//  imgEdgeDetection
//
//  Created by suryansh Bisen on 26/09/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OpenCVWrapper : NSObject

+ (NSString *)openCVVersionString;

//function to dedact image in openCV
+ (UIImage *) dedactEdge:(UIImage *)image;


@end

NS_ASSUME_NONNULL_END
