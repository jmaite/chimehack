//
//  NewsFeedTableCell.m
//  Ubiquity
//
//  Created by Jossie McManus on 12/7/13.
//
//

#import "NewsFeedTableCell.h"

@implementation NewsFeedTableCell

- (void)twitterShare:(id)sender {
    // Do twitter share for this story
    NSLog(@"Did twitter share");
}

- (void)facebookShare:(id)sender {
    // Do facebook share for this story
    NSLog(@"Did facebook share");
}

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

@end
