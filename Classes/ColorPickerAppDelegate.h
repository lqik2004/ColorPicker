//
//  ColorPickerAppDelegate.h
//  ColorPicker
//
//  Created by markj on 3/6/09.
//  Copyright Mark Johnson 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ColorPickerViewController;

@interface ColorPickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ColorPickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ColorPickerViewController *viewController;

@end

