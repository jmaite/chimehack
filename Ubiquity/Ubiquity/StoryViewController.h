//
//  StoryViewController.h
//  Ubiquity
//
//  Created by Jossie McManus on 12/7/13.
//
//

@class NewsFeedItem;
#import <UIKit/UIKit.h>

@interface StoryViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextView *body;
@property (strong, nonatomic) NewsFeedItem *item;

- (IBAction)facebookShare:(id)sender;
- (IBAction)twitterShare:(id)sender;

@end
