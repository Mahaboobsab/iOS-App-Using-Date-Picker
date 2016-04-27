//
//  ViewController.h
//  DatePicker
//
//  Created by test on 11/04/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
- (IBAction)dateButton:(id)sender;
- (IBAction)datePicker:(id)sender;

@end

