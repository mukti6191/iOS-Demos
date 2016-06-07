//
//  ViewController.m
//  AdvanceControl
//
//  Created by Umesh on 04/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *monthArr ;
    NSMutableArray *yearArr;
    NSMutableArray *componentArr;
    NSInteger selectedRowMonth;
    NSInteger selectedRowYear;
    
}
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    componentArr = [[NSMutableArray alloc] initWithObjects:@"Month",@"Year", nil];
    monthArr = [[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
    yearArr = [[NSMutableArray alloc] initWithObjects:@"20",@"21",@"22",@"23",@"24",@"25", nil];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return componentArr.count;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return monthArr.count;
    }
    else {
        return yearArr.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == 0) {
        return monthArr[row];
    }
    else {
        return yearArr[row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component == 0) {
        selectedRowMonth = row;
    }
    else {
        selectedRowYear = row;
    }
    
    pickerValueChange.text = [NSString stringWithFormat:@"%@ and %@",monthArr[selectedRowMonth],yearArr[selectedRowYear]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
