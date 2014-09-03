//
//  SegmentColorsAppDelegate.h
//  SegmentColors
//
//  Created by Daniel Norton on 7/22/10.
//  Copyright (c) 2014 Daniel Norton
//
//  See the file license.txt for copying permission.
//

#import <UIKit/UIKit.h>

@class SegmentColorsViewController;

@interface SegmentColorsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SegmentColorsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SegmentColorsViewController *viewController;

@end

