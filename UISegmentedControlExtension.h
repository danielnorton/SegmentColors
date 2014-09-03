//
//  UISegmentedControlExtension.h
//  LocalEats
//
//  Created by Daniel Norton on 7/21/10.
//  Copyright (c) 2014 Daniel Norton
//
//  See the file license.txt for copying permission.
//

@interface UISegmentedControl(CustomTintExtension)
-(void)setTag:(NSInteger)tag forSegmentAtIndex:(NSUInteger)segment;
-(void)setTintColor:(UIColor*)color forTag:(NSInteger)aTag;
-(void)setTextColor:(UIColor*)color forTag:(NSInteger)aTag;
-(void)setShadowColor:(UIColor*)color forTag:(NSInteger)aTag;
@end
