//
//  SegmentColorsViewController.m
//  SegmentColors
//
//  Created by Daniel Norton on 7/22/10.
//  Copyright (c) 2014 Daniel Norton
//
//  See the file license.txt for copying permission.
//

#import "SegmentColorsViewController.h"
#import "UISegmentedControlExtension.h"

#define kTagFirst 111
#define kTagSecond 112
#define kTagThird 113

@interface SegmentColorsViewController(PrivateMethods)
-(void)segmentChanged:(id)sender;
-(void)setTextColorsForSegmentedControl:(UISegmentedControl*)segmented;
@end

@implementation SegmentColorsViewController

-(void)viewDidLoad {
	
	// create a simple segmented control
	// could have done this in Interface Builder just the same
	NSArray *items = [[NSArray alloc] initWithObjects:@"orange", @"yellow", @"green", nil];
	UISegmentedControl *colors = [[UISegmentedControl alloc] initWithItems:items];
	[items release];
	[colors setSegmentedControlStyle:UISegmentedControlStyleBar];
	[colors setTintColor:[UIColor lightGrayColor]];
	[colors setFrame:CGRectMake(20.0f, 20.0f, 280.0f, 30.0f)];
	[colors addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];
	[self.view addSubview:colors];

	
	// ... now to the interesting bits
	
	// at some point later, the segment indexes change, so	
	// must set tags on the segments before they render
	[colors setTag:kTagFirst forSegmentAtIndex:0];
	[colors setTag:kTagSecond forSegmentAtIndex:1];
	[colors setTag:kTagThird forSegmentAtIndex:2];
	
	[colors setTintColor:[UIColor orangeColor] forTag:kTagFirst];
	[colors setTintColor:[UIColor yellowColor] forTag:kTagSecond];
	[colors setTintColor:[UIColor greenColor] forTag:kTagThird];
	
	[self setTextColorsForSegmentedControl:colors];
	[colors release];
}

-(void)segmentChanged:(id)sender {
	// when a segment is selected, it resets the text colors
	// so set them back
	[self setTextColorsForSegmentedControl:(UISegmentedControl*)sender];
}

-(void)setTextColorsForSegmentedControl:(UISegmentedControl*)segmented {
	[segmented setTextColor:[UIColor yellowColor] forTag:kTagFirst];
	[segmented setTextColor:[UIColor blackColor] forTag:kTagSecond];
	[segmented setTextColor:[UIColor blueColor] forTag:kTagThird];
	
	[segmented setShadowColor:[UIColor redColor] forTag:kTagFirst];
	[segmented setShadowColor:[UIColor whiteColor] forTag:kTagSecond];
	[segmented setShadowColor:[UIColor clearColor] forTag:kTagThird];
}
@end
