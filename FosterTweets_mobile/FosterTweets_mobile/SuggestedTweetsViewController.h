//
//  SuggestedTweetsViewController.h
//  FosterTweets_mobile
//
//  Created by Jerry Tung on 2/2/13.
//  Copyright (c) 2013 FosterTweets. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Accounts/Accounts.h>
#import <Twitter/Twitter.h>

@interface SuggestedTweetsViewController : UITableViewController
//{
//    NSMutableArray  *suggestedTweetsMutableArray;
//}

@property (nonatomic,strong) NSMutableArray     *suggestedTweetsMutableArray;
@property (nonatomic) BOOL                      tweetable;
@property (nonatomic) NSInteger                messageToTweetRow;

- (IBAction)sendCustomTweet:(id)sender;

@end
