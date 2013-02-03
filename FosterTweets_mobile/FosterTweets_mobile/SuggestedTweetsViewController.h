//
//  SuggestedTweetsViewController.h
//  FosterTweets_mobile
//
//  Created by Jerry Tung on 2/2/13.
//  Copyright (c) 2013 FosterTweets. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SuggestedTweetsViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray  *suggestedTweetsMutableArray;
}

@property (nonatomic,retain) NSMutableArray     *suggestedTweetsMutableArray;

@end
