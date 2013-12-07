//
//  NewsFeedItem.m
//  Ubiquity
//
//  Created by Jossie McManus on 12/7/13.
//
//

#import "NewsFeedItem.h"

@implementation NewsFeedItem

- (id)initWithType:(NSString *)type
                 title:(NSString *)title
                 blurb:(NSString *)blurb
               content:(NSString *)content
                 image:(UIImage *)image
{
    // Call the superclass's designated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if(self) {
        // Give the instance variables initial values
        [self setType:type];
        [self setTitle:title];
        [self setBlurb:blurb];
        [self setContent:content];
        [self setImage:image];
    }
    
    // Return the address of the newly initialized object
    return self;
}

- (id)init
{
    return [self  initWithType:@"Story"
                         title:@"Story of the day"
                         blurb:@"We have reached our goal"
                       content:@"default"
                         image:[UIImage imageNamed:@"give"]];
}
@end
