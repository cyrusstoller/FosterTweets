//
//  SuggestedTweetsCell.h
//  FosterTweets_mobile
//
//  Created by Jerry Tung on 2/2/13.
//  Copyright (c) 2013 FosterTweets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuggestedTweetsCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel      *thisTweetLabel;
@property (nonatomic, strong) IBOutlet UIButton     *postTweetButton;

//- (IBAction)postTweetButtonPressed:(id)sender;

@end
