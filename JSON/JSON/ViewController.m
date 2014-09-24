//
//  ViewController.m
//  JSON
//
//  Created by Sivavardhan Reddy on 23/09/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    
    NSDictionary *dic1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"1",@"id",@"Anusha",@"Name",@"IOS",@"Department",nil];
    
     NSDictionary *dic2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"2",@"id",@"Manogna",@"Name",@"Android",@"Department",nil];


     NSDictionary *dic3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"3",@"id",@"Vamsi",@"Name",@"Web",@"Department",nil];
    
    NSArray *array= [[NSArray alloc]initWithObjects:dic1,dic2,dic3, nil];
   // NSLog(@"       array is    %@" , array);
    
    NSError *error=nil;
    
NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
     NSLog(@"   jsonData as string:\n%@", jsonString);
    
    NSString *fileName = @"/Users/paradigmcreatives/Desktop/Jsongenerated1.json";

    NSOutputStream *os = [[NSOutputStream alloc] initToFileAtPath:fileName append:NO];
    [os open];
    [NSJSONSerialization writeJSONObject:array toStream:os options:NSJSONWritingPrettyPrinted error:&error];
    
    [os close];
//    NSInputStream *is = [[NSInputStream alloc] initWithFileAtPath:fileName];
//    
//    [is open];
//    NSDictionary *readDict = [NSJSONSerialization JSONObjectWithStream:is options:NSJSONWritingPrettyPrinted error:&error];
//    [is close];
//    
//    NSLog(@"%@", readDict);

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//
//+ (NSInteger)writeJSONObject:(id)obj toStream:(NSOutputStream *)stream options:(NSJSONWritingOptions)opt error:(NSError **)error
//{
//    
//}


@end
