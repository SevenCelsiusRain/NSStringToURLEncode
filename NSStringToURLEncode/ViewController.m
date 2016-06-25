//
//  ViewController.m
//  NSStringToURLEncode
//
//  Created by SevenCelsius on 16/6/24.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *str = @"asfdsgsrg";
    CFStringRef cfStr = (__bridge_retained CFStringRef)str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
