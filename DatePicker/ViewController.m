//
//  ViewController.m
//  DatePicker
//
//  Created by test on 11/04/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//Creating Outlet for date picker
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//getButton Action
- (IBAction)dateButton:(id)sender {
    
    
    //getting date from date picker assigning in var myChoosenDate
    NSDate *myChoosenDate = self.datePicker.date;
    
    [_datePicker date];
    
    //Creating instance of an date formatter
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    //Setting Date format
    [formatter setDateFormat:@"dd/MM/YYYY"];
    
    //Assigning date in date label
    self.dateLabel.text = [NSString stringWithFormat:@"%@",[formatter stringFromDate:myChoosenDate]];
    
    //Creating object for an alert message
    NSString *alertMessage = [NSString stringWithFormat:@"%@",[formatter stringFromDate:myChoosenDate]];
    
    //Alert Message
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Selected Date is"
                                                                   message:alertMessage
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)datePicker:(id)sender {
}
@end
