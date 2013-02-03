//
//  ViewController.m
//  FosterTweets_mobile
//
//  Created by Jerry Tung on 2/2/13.
//  Copyright (c) 2013 FosterTweets. All rights reserved.
//

#import "ViewController.h"
#import "SuggestedTweetsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize loginButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //ffcc99
    
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:1.0f green:0.82f blue:0.60f alpha:1.0f];
    
//    int height = self.navigationController.navigationBar.frame.size.height;
//    int width = self.navigationController.navigationBar.frame.size.width;
//    UILabel *navLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0, width, height)];
//    
//    navLabel.backgroundColor = [UIColor clearColor];
//    
//    navLabel.textColor = [UIColor blackColor];
//    navLabel.font = [UIFont boldSystemFontOfSize:24.0f];
//    //        navLabel.textAlignment = UITextAlignmentCenter;
//    navLabel.textAlignment = NSTextAlignmentCenter;
//    ((UILabel *)self.navigationItem.titleView).text = @"FosterTweets Login";
    
//    self.navigationItem.titleView = navLabel;
    
        
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)Done {
    [Done resignFirstResponder];
    return YES;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

@end
