//
//  ViewController.m
//  presentingViewControllerDemo
//
//  Created by lanjing on 5/16/16.
//  Copyright © 2016 lanjing. All rights reserved.
//

#import "ViewController.h"
#import "LJLoginViewController.h"

@interface ViewController ()<LJLoginViewControllerDelegate>
{

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginButtonTouched:(UIButton *)sender {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
    UINavigationController *navigationController = [sb instantiateInitialViewController];
    LJLoginViewController *loginViewController = navigationController.viewControllers.firstObject;
    loginViewController.delegate = self;
    [self presentViewController:navigationController animated:YES completion:nil];
    
}


-(void)loginViewControllerCanceled:(LJLoginViewController *)viewController
{
    [viewController dismissViewControllerAnimated:YES completion:nil];
}

-(void)loginViewController:(LJLoginViewController *)viewController loginFailWithError:(NSError *)error
{
    
}
-(void)loginViewController:(LJLoginViewController *)viewController loginSuccessWithUserInfo:(NSString *)userInfo
{
    
}

@end
