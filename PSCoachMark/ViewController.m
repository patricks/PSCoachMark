//
//  ViewController.m
//  PSCoachMark
//
//  Created by Patrick Steiner on 15.01.15.
//  Copyright (c) 2015 Patrick Steiner. All rights reserved.
//

#import "ViewController.h"
#import "PSCoachMark.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *infoButton;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (strong, nonatomic) PSCoachMark *buttonMark;
@property (strong, nonatomic) PSCoachMark *labelMark;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIFont *standardFont = [UIFont fontWithName:@"HelveticaNeue-Light" size:16.0];
    UIColor *testBlue = [UIColor colorWithRed:0.094 green:0.498 blue:0.988 alpha:1.000];
    
    NSDictionary *attributes = @{ NSFontAttributeName : standardFont,
                                  NSForegroundColorAttributeName : [UIColor whiteColor]
                                };
    
    NSString *firstLine = @"It's ok to close the app.";
    NSString *secondLine = @"We'll notify you about your cab.";
    
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@\n%@", firstLine, secondLine] attributes:attributes];
    NSAttributedString *buttonString = [[NSAttributedString alloc] initWithString:@"Set pickup location with pin" attributes:attributes];
    NSAttributedString *labelString = [[NSAttributedString alloc] initWithString:@"Label String" attributes:attributes];
    
    _buttonMark = [PSCoachMark showCoachMarkAddedTo:_infoButton withAttributedText:buttonString withMode:PSCoachMarkModeAbove];
    _buttonMark.markColor = testBlue;
    _buttonMark.margin = 5;
    _buttonMark.width = 220;
    
    _labelMark = [PSCoachMark showCoachMarkAddedTo:_infoLabel withAttributedText:labelString withMode:PSCoachMarkModeAbove];
    _buttonMark.markColor = testBlue;
    
    PSCoachMark *infoMark = [PSCoachMark showCoachMarkAddedTo:self.view withAttributedText:attributedString withMode:PSCoachMarkModeNormal];
    infoMark.markColor = testBlue;
    infoMark.width = 300;
    infoMark.height = 100;
    
    [infoMark hideWithAnimation:YES afterDelay:3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)infoButtonPushed:(id)sender {
    if (_buttonMark.isHidden) {
        [_buttonMark show];
    } else {
        [_buttonMark hideWithAnimation:YES];
    }
    
    if ([_labelMark isHidden]) {
        [_labelMark show];
    } else {
        [_labelMark hideWithAnimation:YES];
    }
}

@end
