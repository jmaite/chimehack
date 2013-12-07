//
//  StoryViewController.m
//  Ubiquity
//
//  Created by Jossie McManus on 12/7/13.
//
//

#import "StoryViewController.h"
#import "NewsFeedItem.h"

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
    NSString *event = @"Event";
    NSString *project = @"Project";
    
    if (_item.type == event) {
    
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Add"
                                                                                  style:UIBarButtonItemStylePlain
                                                                                 target:self
                                                                                 action:@selector(addToCalendar)];
    }
    
    if (_item.type == project) {
        
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Donate"
                                                                                  style:UIBarButtonItemStylePlain
                                                                                 target:self
                                                                                 action:@selector(donate)];
    }
    
    self.title = _item.title;
    self.body.text = _item.content;
    self.imageView.image = _item.image;
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
//    SLRequest *postRequest = nil;
//    NSURL *url = [NSURL URLWithString:@"http://api.twitter.com/1/statuses/update.json"];
//    NSDictionary *content = @{@"status":self.textToShare};
//    postRequest = [SLRequest requestForServiceType:SLServiceTypeTwitter
//                                     requestMethod:SLRequestMethodPOST
//                                               URL:url
//                                        parameters:content];
//    
//    [postRequest setAccount:self.twitterAccount];
//    [postRequest performRequestWithHandler:completionHandler];
}
@end
