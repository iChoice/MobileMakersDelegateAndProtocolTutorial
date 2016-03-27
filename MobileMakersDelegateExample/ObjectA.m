//
//  ObjectA.m
//  MobileMakersDelegateExample
//
//  Created by Michael on 3/27/16.
//  Copyright © 2016 iCA. All rights reserved.
//

#import "ObjectA.h"


@interface ObjectA()
@property (nonatomic, strong) NSString* currentColor;
@end

@implementation ObjectA






-(void)changeColor
{
    
    if ([self.currentColor isEqualToString:@"Blue"]) {
        
        self.currentColor = @"Red";
        UIColor *red = [UIColor redColor];
        [self.delegate newColor:red];
        
    } else {
        
        self.currentColor = @"Blue";
        UIColor *blue = [UIColor blueColor];
        [self.delegate newColor:blue];
        
    }
}




@end
