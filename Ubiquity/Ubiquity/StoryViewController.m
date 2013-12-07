//
//  StoryViewController.m
//  Ubiquity
//
//  Created by Jossie McManus on 12/7/13.
//
//

#import "StoryViewController.h"

@interface StoryViewController ()

@end

@implementation StoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //check here the type of the newsfeed item
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Add"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(addToCalendar)];
}

- (void)addToCalendar {
    //show an alert view and pretend it was added to calendar
}

- (void)donate {
    //play the chime
}

- (IBAction)facebookShare:(id)sender {
}

- (IBAction)twitterShare:(id)sender {
}
@end
