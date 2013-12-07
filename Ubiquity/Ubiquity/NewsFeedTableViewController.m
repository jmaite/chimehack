//
//  NewsFeedTableViewController.m
//  Ubiquity
//
//  Created by Jossie McManus on 12/7/13.
//
//

#import "NewsFeedTableViewController.h"
#import "StoryTableCell.h"
#import "StoryViewController.h"
#import "NewsFeedItem.h"

@interface NewsFeedTableViewController ()

@property (nonatomic, strong) NewsFeedItem *selectedItem;
@property (nonatomic, strong) NSMutableArray *allItems;

@end

@implementation NewsFeedTableViewController

- (id)init
{
    //call the superclass designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    
    if (self) {
        //_allItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    //build the items NSArray, should contain NewsFeedItem objects
    if (!_allItems) {
        _allItems = [[NSMutableArray alloc] init];
    }
    
    NewsFeedItem *p = [[NewsFeedItem alloc] init];
    p.type = @"Story";
    p.title = @"EVERY GIRL NEEDS A \"SHERO\"";
    p.blurb = @"this is my blurb and more stuffs...";
    p.image = [UIImage imageNamed:@"give"];
    
    [_allItems addObject:p];
    
    p.type = @"Event";
    p.title = @"Benefit concert";
    p.blurb = @"this is my blurb and more stuffs...";
    //p.image = [UIImage imageNamed:@"give"];
    
    [_allItems addObject:p];
    
    p.type = @"Project";
    p.title = @"RAISE MONEY FOR MALALA";
    p.blurb = @"this is my blurb and more stuffs...";
    p.image = [UIImage imageNamed:@"give"];
    
    [_allItems addObject:p];
    
    p.type = @"Story";
    p.title = @"NEW HERE OF THE DAY!";
    p.blurb = @"this is my blurb and more stuffs...";
    p.image = [UIImage imageNamed:@"give"];
    
    [_allItems addObject:p];
    
    p.type = @"Story";
    p.title = @"CHIMEFORCHANGE ROCKS A LOT";
    p.blurb = @"this is my blurb and more stuffs...";
    p.image = [UIImage imageNamed:@"give"];
    
    [_allItems addObject:p];
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
    return _allItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Story";
    StoryTableCell *cell = (StoryTableCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NewsFeedItem *p = [_allItems objectAtIndex:[indexPath row]];
    
    // Configure the cell...
    cell.title.text = p.title;
    cell.blurb.text = p.blurb;
    cell.imageView.image = p.image;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    self.selectedItem = (NewsFeedItem *)[self.allItems objectAtIndex:[indexPath row]];
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


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    StoryViewController *vc = (StoryViewController*)[segue destinationViewController];
    
    vc.item = [self selectedItem];
}


@end
