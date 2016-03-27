//
//  ObjectA.h
//  MobileMakersDelegateExample
//
//  Created by Michael on 3/27/16.
//  Copyright © 2016 iCA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ObjectADelegate
    @optional
    -(void)newColor: (UIColor *)color;

    @required
    -(void)someRequiredMethod: (NSString *)str;

@end


@interface ObjectA : NSObject

@property (nonatomic, strong) id <ObjectADelegate> delegate;
-(void) changeColor;

@end
