//
//  ColorPickerViewController.m
//  ColorPicker
//
//  Created by markj on 3/6/09.
//  Copyright Mark Johnson 2009. All rights reserved.
//

#import "ColorPickerViewController.h"
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/CoreAnimation.h>


@implementation ColorPickerViewController

@synthesize colorWheel;
@synthesize tapMeButton;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self animateColorWheelToShow:NO duration:0];
	colorWheel.pickedColorDelegate = self;
}

- (IBAction) tapMe: (id)sender {
	[self animateColorWheelToShow:YES duration:0.3]; 
}

- (void) pickedColor:(UIColor*)color {
	[self animateColorWheelToShow:NO duration:0.3]; 
	self.view.backgroundColor = color;
	[self.view setNeedsDisplay];
}

- (void) animateColorWheelToShow:(BOOL)show duration:(NSTimeInterval)duration {
	int x;
	float angle;
	float scale;
	if (show==NO) { 
		x = -320;
		angle = -3.12;
		scale = 0.01;
		self.colorWheel.hidden=YES;
	} else {
		x=0;
		angle = 0;
		scale = 1;
		[self.colorWheel setNeedsDisplay];
		self.colorWheel.hidden=NO;
	}
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:duration];
	
	CATransform3D transform = CATransform3DMakeTranslation(0,0,0);
	//transform = CATransform3DTranslate(transform,x,0,0);
	//transform = CATransform3DRotate(transform, angle,0,0,1);
	transform = CATransform3DScale(transform, scale,scale,1);
	self.colorWheel.transform=CATransform3DGetAffineTransform(transform);
	self.colorWheel.layer.transform=transform;
	[UIView commitAnimations];
}


@end
