//
//  SuggestedTweetsViewController.m
//  FosterTweets_mobile
//
//  Created by Jerry Tung on 2/2/13.
//  Copyright (c) 2013 FosterTweets. All rights reserved.
//

#import "SuggestedTweetsViewController.h"
#import "SuggestedTweetsCell.h"

@interface SuggestedTweetsViewController ()

@end

@implementation SuggestedTweetsViewController

@synthesize suggestedTweetsMutableArray;
@synthesize tweetable;
@synthesize messageToTweetRow;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(canTweetStatus) name:ACAccountStoreDidChangeNotification object:nil];
    
    tweetable = ([TWTweetComposeViewController canSendTweet]) ? YES : NO;

    suggestedTweetsMutableArray = [[NSMutableArray alloc] init];
    
    messageToTweetRow = 0;

    [suggestedTweetsMutableArray addObject:[NSString stringWithFormat:@"@Fostermytweetsfinds good content for me to share via social media so I don't have to."]];

    [suggestedTweetsMutableArray addObject:[NSString stringWithFormat:@"Be sure to check out the new #DunderMifflin ad during tomorrow's #SuperBowl! http://bit.ly/12j4Mvb"]];
    
    [suggestedTweetsMutableArray addObject:[NSString stringWithFormat:@"We're responsible about helping to replant trees since we sell paper. Check out this link http://bit.ly/YmcMqs."]];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) canTweetStatus
{
    tweetable = ([TWTweetComposeViewController canSendTweet]) ? YES : NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendCustomTweet:(id)sender {
    
    if (tweetable)
    {
        // Set up the built-in twitter composition view controller.
        TWTweetComposeViewController *tweetViewController = [[TWTweetComposeViewController alloc] init];
        
        // Set the initial tweet text. See the framework for additional properties that can be set.
        [tweetViewController setInitialText:[suggestedTweetsMutableArray objectAtIndex:messageToTweetRow]];
                
        // Create the completion handler block.
        [tweetViewController setCompletionHandler:^(TWTweetComposeViewControllerResult result) {
            BOOL ableToTweet = NO;
            switch (result) {
                case TWTweetComposeViewControllerResultCancelled:
                    break;
                case TWTweetComposeViewControllerResultDone:
                    ableToTweet = YES;
                    break;
                default:
                    break;
            }
            
//        [self performSelectorOnMainThread:@selector(displayText:) withObject:output waitUntilDone:NO];
        
        // Dismiss the tweet composition view controller.
        [self dismissModalViewControllerAnimated:YES];
    }];
    
    // Present the tweet composition view controller modally.
    [self presentModalViewController:tweetViewController animated:YES];
    }
    else
    {
        UIAlertView *unableToTweetAlert = [[UIAlertView alloc] initWithTitle:@"Unable to connect to Twitter account" message:@"" delegate:self
                                                           cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
        [unableToTweetAlert show];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [suggestedTweetsMutableArray count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SuggestedTweetsCell";
    SuggestedTweetsCell *cell = (SuggestedTweetsCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //for search controller need to check if cell is nil, if it is create one since there won't be any to reuse to begin with
    if (!cell) {
        cell = (SuggestedTweetsCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        [cell setAccessoryType:UITableViewCellAccessoryNone];
    }
        
//	SuggestedTweetsCell *cell = (SuggestedTweetsCell*)[tableView
//                             dequeueReusableCellWithIdentifier:@"SuggestedTweetsCell"];

	cell.thisTweetLabel.text = [suggestedTweetsMutableArray objectAtIndex:indexPath.row];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	CGRect frame = CGRectMake(273.0f, 16.0f, 38.0f, 38.0f);
	button.frame = frame;	// match the button's size with the image size
    
	[button setBackgroundImage:[UIImage imageNamed:@"plusnewmobile.png"] forState:UIControlStateNormal];
    
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(sendCustomTweet:) forControlEvents:UIControlEventTouchUpInside];
    
    [cell addSubview:button];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    messageToTweetRow = indexPath.row;
    
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:NO];
    
    [self sendCustomTweet:self];
}

@end
