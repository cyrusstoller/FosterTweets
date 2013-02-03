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
    
    suggestedTweetsMutableArray = [[NSMutableArray alloc] init];
    
    [suggestedTweetsMutableArray addObject:[NSString stringWithFormat:@"@Fostermytweets finds good content for me to share via social media so I don't have to. They deliver prepackaged tweets."]];
    
    [suggestedTweetsMutableArray addObject:[NSString stringWithFormat:@"We're responsible about helping to replant trees since we sell paper. Check out this infographic about trees in San Francisco http://visual.ly/tree-map-san-francisco"]];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
}

@end
