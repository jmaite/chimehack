//
//  NewsFeedItem.h
//  Ubiquity
//
//  Created by Jossie McManus on 12/7/13.
//
//

#import <Foundation/Foundation.h>

@interface NewsFeedItem : NSObject

@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *blurb;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) UIImage *image;

@end
