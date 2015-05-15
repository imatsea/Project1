//
//  ViewController.m
//  Project1
//
//  Created by Iris Qiu on 15/5/14.
//  Copyright (c) 2015年 Iris Qiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize Input = _Input;
@synthesize Output1 = _Output1;
@synthesize Output2 = _Output2;
@synthesize Output3 = _Output3;
@synthesize ButtonA = _ButtonA;
@synthesize ButtonB = _ButtonB;
@synthesize ButtonC = _ButtonC;
@synthesize Output = _Output;
@synthesize Total = _Total;
@synthesize name = _name;





- (void)viewDidLoad {
    [super viewDidLoad];
    self.Input.delegate = self;
    self.Output1.delegate = self;
    self.Output2.delegate = self;
    self.Output3.delegate = self;

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidEndEditing:(UITextField *)Input{
    
    
    self.Output = [[NSMutableString alloc] initWithFormat:@"Hello "];
   
    if(self.Input.text != nil){
        
        self.name = self.Input.text;
        
        [self.Output appendString:self.name];
        
    }
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{

    if([self.Input isFirstResponder])
    {
        [self.Input resignFirstResponder];
        return true;
    }
    return false;

}

- (IBAction)ButtonA_action:(UIButton *)sender {
    
    if(self.Input.text != nil){
        
        self.Output1.text = self.Output;
    }
    
}



- (IBAction)ButtonB_action:(UIButton *)sender {
    
    self.date = [[NSDateFormatter alloc]init];
    [self.date setTimeStyle:NSDateFormatterMediumStyle];
    [self.date setDateStyle:NSDateFormatterMediumStyle];
    
    self.Output2.font = [UIFont systemFontOfSize:12];
    self.Output2.text = [self.date stringFromDate:[NSDate date]];
    
}
- (IBAction)ButtonC_action:(UIButton *)sender {
    
    if (self.Input.text != nil ){
        
        if (self.Output2.text != nil){
            
            [self.Output appendString:self.Output2.text];
             
             self.Output3.text = self.Output;
            
        }
    
    }
    
}

@end
