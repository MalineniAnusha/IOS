//
//  ViewController.m
//  ImageDownload
//
//  Created by mac mini on 10/31/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [[NSURL alloc]initWithString:@"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcThtVuIQ7CBYssbdwtzZjVLI_uw09SeLmyrxaRQEngnQAked5ZB"];
    NSData *data = [[NSData alloc]initWithContentsOfURL:url];
    UIImage *image = [[UIImage alloc]initWithData:data];
    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0 ];
    
    NSLog(@"FilePath is %@ ",filePath);
    
    NSString *pngFile = [NSString stringWithFormat:@"%@/cat.png",filePath];
    NSData *data1 = [NSData dataWithData:UIImagePNGRepresentation(image)];
    [data1 writeToFile:pngFile atomically:YES];
    
    
    NSString *jpegFile = [NSString stringWithFormat:@"%@/cat.jpeg",filePath];
    NSData *data2 = [NSData dataWithData:UIImageJPEGRepresentation(image,1.0f)];
    [data2 writeToFile:jpegFile atomically:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
