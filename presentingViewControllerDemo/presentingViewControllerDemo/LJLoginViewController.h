//
//  LJLoginViewController.h
//  presentingViewControllerDemo
//
//  Created by lanjing on 5/16/16.
//  Copyright © 2016 lanjing. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LJLoginViewController;

@protocol LJLoginViewControllerDelegate <NSObject>

-(void)loginViewController:(LJLoginViewController *)viewController loginSuccessWithUserInfo:(NSString *)userInfo;
-(void)loginViewController:(LJLoginViewController *)viewController loginFailWithError:(NSError *)error;
-(void)loginViewControllerCanceled:(LJLoginViewController *)viewController;

@end


@interface LJLoginViewController : UIViewController

@property (weak) id<LJLoginViewControllerDelegate> delegate;

@end
