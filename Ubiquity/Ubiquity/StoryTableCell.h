//
//  StoryTableCell.h
//  Ubiquity
//
//  Created by Jossie McManus on 12/7/13.
//
//

#import <UIKit/UIKit.h>
#import "NewsFeedTableCell.h"

@interface StoryTableCell : NewsFeedTableCell
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *title;
@property (strong, nonatomic) IBOutlet UILabel *blurb;

@end
