//
//  MyTableViewController.m
//  BasicAutolayout
//
//  Created by Umesh on 04/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import "MyTableViewController.h"
#import "MyTableViewCell.h"

@interface MyTableViewController ()
{
    NSMutableArray *arrName;
    NSMutableArray *arrColor;
    NSMutableArray *arrName1;
    NSMutableArray *arrColor1;
    NSMutableArray *arrHeader;
}
@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    arrName = [[NSMutableArray alloc] init];
    arrName1 = [[NSMutableArray alloc] init];
    arrColor = [[NSMutableArray alloc] init];
    arrColor1 = [[NSMutableArray alloc] init];
    arrHeader = [[NSMutableArray alloc] initWithObjects:@"Section 1", @"Section 2", nil];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return arrHeader.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return arrName.count;
    }
    else {
        return arrName1.count;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    if (indexPath.section == 0) {
        [cell setDataWithLable:[arrName objectAtIndex:indexPath.row] withColor:arrColor[[indexPath row]]];
    }
    else {
        [cell setDataWithLable:[arrName1 objectAtIndex:indexPath.row] withColor:arrColor1[[indexPath row]]];
    }
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    if (section == 0) {
//        return @"section 1";
//    }
//    else {
//        return @"section 2";
//    }
    
    return arrHeader[section];
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 30)];
    
    header.backgroundColor = [UIColor grayColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, tableView.frame.size.width - 50, 30)];
    label.text = arrHeader[section];
    [header addSubview:label];
    UIButton *imgView = [[UIButton alloc] initWithFrame:CGRectMake(tableView.frame.size.width - 40, 5, 20, 20)];
    imgView.tag = section;
    [imgView addTarget:self action:@selector(sectionButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    imgView.backgroundColor = [UIColor redColor];
    
    
    [header addSubview:imgView];

    return header;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
}

-(void) sectionButtonClicked:(UIButton *)btn {
    
    if (btn.tag == 0) {
        arrName = [[NSMutableArray alloc] initWithObjects:@"Rahul",@"Varun",@"Abhijeet",@"John",@"Nikhil", nil];
        arrColor = [[NSMutableArray alloc] initWithObjects:[UIColor redColor],[UIColor yellowColor],[UIColor blueColor],[UIColor greenColor],[UIColor magentaColor], nil];
    }
    else {
        arrName1 = [[NSMutableArray alloc] initWithObjects:@"Rahul1",@"Varun1",@"Abhijeet1",@"John1",@"Rahul1",@"Varun1",@"Abhijeet1",@"John1", nil];
        arrColor1 = [[NSMutableArray alloc] initWithObjects:[UIColor redColor],[UIColor yellowColor],[UIColor blueColor],[UIColor greenColor],[UIColor redColor],[UIColor yellowColor],[UIColor blueColor],[UIColor greenColor], nil];
    }
    
    [myTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
