//
//  ViewController.m
//  WebServices
//
//  Created by Varun on 08/06/16.
//  Copyright © 2016 Varun. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()
{
    NSMutableArray *arrCodes;
    NSMutableString *strData;
    NSString *postalCode;
    NSString *name;
    NSString *currentElement;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSXMLParser *xmlparser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://api.geonames.org/postalCodeSearch?postalcode=9011&username=demo"]];
    
    [xmlparser setDelegate:self];
    [xmlparser parse];
    
}

-(void)parserDidStartDocument:(NSXMLParser *)parser {
    arrCodes = [[NSMutableArray alloc] init];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict;
{
    if ([elementName isEqualToString:@"postalcode"]) {
        postalCode = [NSString string];
    }
    if ([elementName isEqualToString:@"name"]) {
        name = [NSString string];
    }
    strData = [NSMutableString string];
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string;
{
    [strData appendString:string];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName;
{
    if ([elementName isEqualToString:@"code"]) {
        [arrCodes addObject:[[NSDictionary alloc] initWithObjects:@[postalCode,name] forKeys:@[@"POSTALCODE",@"NAME"]]];
    }
    if ([elementName isEqualToString:@"postalcode"]) {
        postalCode = strData;
    }
    if ([elementName isEqualToString:@"name"]) {
        name = strData;
    }
}

-(void)parserDidEndDocument:(NSXMLParser *)parser {
    [myTableView reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrCodes.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[CustomCell alloc] init];
    }
    
    [cell SetData:[arrCodes[indexPath.row] valueForKey:@"NAME"] withPostalCode:[arrCodes[indexPath.row] valueForKey:@"POSTALCODE"]];
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
