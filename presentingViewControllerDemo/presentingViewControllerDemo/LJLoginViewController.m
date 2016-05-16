//
//  LJLoginViewController.m
//  presentingViewControllerDemo
//
//  Created by lanjing on 5/16/16.
//  Copyright © 2016 lanjing. All rights reserved.
//

#import "LJLoginViewController.h"

@interface LJLoginViewController ()

@end

@implementation LJLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)cancelButtonTouched:(UIButton *)sender {
    
    if([self.delegate respondsToSelector:@selector(loginViewControllerCanceled:)])
    {
        [self.delegate loginViewControllerCanceled:self];
    }
        
}

@end
