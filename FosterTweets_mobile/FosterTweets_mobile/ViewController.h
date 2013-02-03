//
//  ViewController.h
//  FosterTweets_mobile
//
//  Created by Jerry Tung on 2/2/13.
//  Copyright (c) 2013 FosterTweets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UITextField  *loginTextField;
@property (nonatomic, strong) IBOutlet UITextField  *passwordTextField;

@property (nonatomic, strong) UIButton  *loginButton;

@end
