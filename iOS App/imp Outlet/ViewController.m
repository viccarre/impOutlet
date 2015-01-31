//
//  ViewController.m
//  imp Outlet
//
//  Created by Victor Carreño on 1/31/15.
//  Copyright (c) 2015 Victor Carreño. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Avenir Next Medium" size:24.0];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor]; // change this color
    self.navigationItem.titleView = label;
    label.text = NSLocalizedString(@"Imp Outlet", @"");
    [label sizeToFit];
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:241.0/255.0 green:196.0/255.0 blue:15.0/255.0 alpha:1]];
    [self.navigationController.navigationBar setTranslucent:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)switch1:(id)sender {
    
    if ([sender isOn]) {
        NSString *agentURL = _urlOne.text;
        NSURL *url = [NSURL URLWithString:[agentURL stringByAppendingString:@"?out1=1"]];
        NSData *data = [NSData dataWithContentsOfURL:url];
        NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"ret=%@", ret);
        
    } else {
        NSString *agentURL = _urlOne.text;
        NSURL *url = [NSURL URLWithString:[agentURL stringByAppendingString:@"?out1=0"]];
        NSData *data = [NSData dataWithContentsOfURL:url];
        NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"ret=%@", ret);
    }
    
}
- (IBAction)switch2:(id)sender {
    
    if ([sender isOn]) {
        NSString *agentURL = _urlOne.text;
        NSURL *url = [NSURL URLWithString:[agentURL stringByAppendingString:@"?out2=1"]];
        NSData *data = [NSData dataWithContentsOfURL:url];
        NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"ret=%@", ret);
        
    } else {
        NSString *agentURL = _urlOne.text;
        NSURL *url = [NSURL URLWithString:[agentURL stringByAppendingString:@"?out2=0"]];
        NSData *data = [NSData dataWithContentsOfURL:url];
        NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"ret=%@", ret);
    }
}

- (IBAction)switch3:(id)sender {
    
    if ([sender isOn]) {
        NSString *agentURL = _urlOne.text;
        NSURL *url = [NSURL URLWithString:[agentURL stringByAppendingString:@"?out3=1"]];
        NSData *data = [NSData dataWithContentsOfURL:url];
        NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"ret=%@", ret);
        
    } else {
        NSString *agentURL = _urlOne.text;
        NSURL *url = [NSURL URLWithString:[agentURL stringByAppendingString:@"?out3=0"]];
        NSData *data = [NSData dataWithContentsOfURL:url];
        NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"ret=%@", ret);
    }
    
}
@end
