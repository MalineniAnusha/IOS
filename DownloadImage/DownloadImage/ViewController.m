//
//  ViewController.m
//  DownloadImage
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
    
    NSLog(@"Downloading...");
    // Get an image from the URL below
    UIImage *image = [[UIImage alloc] initWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcThtVuIQ7CBYssbdwtzZjVLI_uw09SeLmyrxaRQEngnQAked5ZB"]]];
    
    NSLog(@"%f,%f",image.size.width,image.size.height);
    
    // Let's save the file into Document folder.
    // You can also change this to your desktop for testing. (e.g. /Users/kiichi/Desktop/)
    // NSString *deskTopDir = @"/Users/kiichi/Desktop";
    
    NSString *docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    
    // If you go to the folder below, you will find those pictures
    NSLog(@"%@",docDir);
    
    NSLog(@"saving png");
    NSString *pngFilePath = [NSString stringWithFormat:@"%@/test.png",docDir];
    NSData *data1 = [NSData dataWithData:UIImagePNGRepresentation(image)];
    [data1 writeToFile:pngFilePath atomically:YES];
    
    NSLog(@"saving jpeg");
    NSString *jpegFilePath = [NSString stringWithFormat:@"%@/test.jpeg",docDir];
    NSData *data2 = [NSData dataWithData:UIImageJPEGRepresentation(image, 1.0f)];//1.0f = 100% quality
    [data2 writeToFile:jpegFilePath atomically:YES];
    
    NSLog(@"saving image done");
    
    //[image release];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
