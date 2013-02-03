//
//  SuggestedTweetsCell.m
//  FosterTweets_mobile
//
//  Created by Jerry Tung on 2/2/13.
//  Copyright (c) 2013 FosterTweets. All rights reserved.
//

#import "SuggestedTweetsCell.h"

@implementation SuggestedTweetsCell

@synthesize thisTweetLabel;
@synthesize postTweetButton;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)postTweetButtonPressed:(id)sender
{
}

@end
