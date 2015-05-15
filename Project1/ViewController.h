//
//  ViewController.h
//  Project1
//
//  Created by Iris Qiu on 15/5/14.
//  Copyright (c) 2015年 Iris Qiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *Input;

@property (weak, nonatomic) IBOutlet UITextField *Output1;
@property (weak, nonatomic) IBOutlet UITextField *Output2;
@property (weak, nonatomic) IBOutlet UITextField *Output3;
@property (weak, nonatomic) IBOutlet UIButton *ButtonA;
@property (weak, nonatomic) IBOutlet UIButton *ButtonB;
@property (weak, nonatomic) IBOutlet UIButton *ButtonC;
@property (strong, nonatomic) NSMutableString *Output;
@property (strong, nonatomic) NSMutableString *Total;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSDateFormatter *date;

@end

