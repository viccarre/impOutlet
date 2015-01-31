//
//  ViewController.h
//  imp Outlet
//
//  Created by Victor Carreño on 1/31/15.
//  Copyright (c) 2015 Victor Carreño. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)switch1:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *urlOne;
- (IBAction)switch2:(id)sender;
- (IBAction)switch3:(id)sender;

@end

