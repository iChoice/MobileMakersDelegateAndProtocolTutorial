//
//  ObjectB_ViewController.m
//  MobileMakersDelegateExample
//
//  Created by Michael on 3/27/16.
//  Copyright © 2016 iCA. All rights reserved.
//

#import "ObjectB_ViewController.h"
#import "ObjectA.h"

@interface ObjectB_ViewController () <ObjectADelegate>
@property (nonatomic, strong) ObjectA *objectA;
@end

@implementation ObjectB_ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.objectA = [[ObjectA alloc] init];
    self.objectA.delegate = self;

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Delegate methods called by Object A
-(void)newColor:(UIColor *)color
{
    // This delegate method is called by Object A
    // It selects a new color and sends it over.
    self.view.backgroundColor = color;
}


-(void)someRequiredMethod:(NSString *)str
{
    // Does something with the str string passed in from Object A.
    // This method will get called when something causes it to be
    // called in Object A, like it finished importing data.
}



- (IBAction)newColorButtonPressed:(UIButton *)sender {
    
    [self.objectA changeColor];
}



@end
