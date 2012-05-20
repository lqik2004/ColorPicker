//
//  ColorPickerViewController.h
//  ColorPicker
//
//  Created by markj on 3/6/09.
//  Copyright Mark Johnson 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorPickerImageView.h"

@interface ColorPickerViewController : UIViewController {
	IBOutlet ColorPickerImageView* colorWheel;
	IBOutlet UIButton* tapMeButton;
}

@property (nonatomic, retain) ColorPickerImageView* colorWheel;
@property (nonatomic, retain) UIButton* tapMeButton;

- (IBAction) tapMe: (id)sender;
- (void) pickedColor:(UIColor*)color;
- (void) animateColorWheelToShow:(BOOL)show duration:(NSTimeInterval)duration;

@end

