//
//  ViewController.m
//  SampleGCDTable
//
//  Created by Chinna Venkata Raju A on 9/26/14.
//  Copyright (c) 2014 Paradigm Creatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableData *imagesData;
    NSMutableArray *imagesArray;
}
@property (weak, nonatomic) IBOutlet UITableView *imagesTableView;

@end

@implementation ViewController


-(void)parseJsonObject:(NSDictionary*)responseDict{
    NSLog(@"response:%@",responseDict);
    NSArray *pages = [responseDict objectForKey:@"pages"];
    for (NSDictionary *imageBox in pages) {
        NSArray *imageboxes = [imageBox objectForKey:@"ImageBoxArray"];
        for (NSDictionary *imageBox in imageboxes) {
            NSString *imageStr = [imageBox objectForKey:@"Image"];
            NSLog(@"imageStr:%@",imageStr);
            [imagesArray addObject:imageStr];
        }
    }
    [self.imagesTableView reloadData];
}

#pragma mark NSURLConnection Delegate
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"error:%@",[error localizedDescription]);
}

-(void)connection:(NSURLConnection*)connection didReceiveResponse:(NSURLResponse *)response{
    NSLog(@"got response");
}

-(void)connection:(NSURLConnection*)connection didReceiveData:(NSData *)data{
    [imagesData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSError *error = nil;
    id jsonObj = [NSJSONSerialization JSONObjectWithData:imagesData options:0 error:&error];
    NSDictionary *responseDict = (NSDictionary*)jsonObj;
    [self parseJsonObject:responseDict];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    imagesData = [[NSMutableData alloc] init];
    imagesArray = [[NSMutableArray alloc]init];
    
    NSURL *imagesUrl = [NSURL URLWithString:@""];
    NSURLRequest *urlReq = [NSURLRequest requestWithURL:imagesUrl];
    NSURLConnection *urlConnection = [[NSURLConnection alloc] initWithRequest:urlReq delegate:self];
    [urlConnection start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return imagesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myImage"];
    NSString *imageString = [imagesArray objectAtIndex:indexPath.row];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        NSURL *imageUrl = [NSURL URLWithString:imageString];
        NSData *imagedata=[NSData dataWithContentsOfURL:imageUrl];
        dispatch_async(dispatch_get_main_queue(), ^{
            [cell.imageView setImage:[UIImage imageWithData:imagedata]];
        });
    });

    
//    NSData *imageData = [NSData dataWithContentsOfURL:imageUrl];
//    NSLog(@"imageData:%@",imageData);
//    UIImage *myImage = [UIImage imageWithData:imageData];
//    cell.imageView.image = myImage;
    return cell;
}
@end
