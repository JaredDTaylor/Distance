//
//  main.m
//  Distance
//
//  Created by Jared Taylor on 4/23/15.
//  Copyright (c) 2015 Jared Taylor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>
double distance(double x1, double y1, double x2, double y2){
    double x3 = x2-x1;
    double y3 = y2-y1;
    double x4 = pow(x3,2);
    double y4 = pow(y3,2);
    double sum = x4+y4;
    return sqrt(sum);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        const float ERROR_THRESHOLD = 0.05;
        if (distance(0,0,0,1) != 1){
            NSLog(@"Incorrect");
        }
        if (distance(0,0,0,0) != 0){
            NSLog(@"Incorrect");
        }
        if (distance(0,0,1,0) != 1){
            NSLog(@"Incorrect");
        }
        if (distance(0,0,1,1)-1.41>ERROR_THRESHOLD){
            NSLog(@"Incorrect");
        }
        if (distance(0,0,3,3)-4.24>ERROR_THRESHOLD){
            NSLog(@"Incorrect");
        }
        if (distance(0,0,10,10)-14.14>ERROR_THRESHOLD){
            NSLog(@"Incorrect");
        }
        if (distance(0,0,15,15)-21.21>ERROR_THRESHOLD){
            NSLog(@"Incorrect");
        }
        
        
    }
    return 0;
}
