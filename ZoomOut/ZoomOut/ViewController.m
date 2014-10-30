//
//  ViewController.m
//  ZoomOut
//
//  Created by mac mini on 10/30/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *imageView;
    UIScrollView *scrollView;
}


- (void)centerScrollViewContents;
- (void)doubleTapped:(UITapGestureRecognizer*)recognizer;
- (void)scrollViewTwoFingerTapped:(UITapGestureRecognizer*)recognizer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubview:scrollView];
    
    
    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    imageView.image = [UIImage imageNamed:@"image.jpeg"];
    scrollView.contentSize=imageView.image.size;
    [scrollView addSubview:imageView];
    
    scrollView.minimumZoomScale=0.5;
    scrollView.maximumZoomScale=6.0;
    scrollView.contentSize=CGSizeMake(1280, 960);
    scrollView.delegate=self;
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubleTapped:)];
    tapGesture.numberOfTapsRequired=2;
    tapGesture.numberOfTouchesRequired=1;
    [scrollView addGestureRecognizer:tapGesture];
    
    UITapGestureRecognizer *twoFingerTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollViewTwoFingerTapped:)];
    twoFingerTapRecognizer.numberOfTapsRequired = 1;
    twoFingerTapRecognizer.numberOfTouchesRequired = 2;
    [scrollView addGestureRecognizer:twoFingerTapRecognizer];
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
 
    CGRect scrollViewFrame = scrollView.frame;
    CGFloat scaleWidth = scrollViewFrame.size.width / scrollView.contentSize.width;
    CGFloat scaleHeight = scrollViewFrame.size.height / scrollView.contentSize.height;
    CGFloat minScale = MIN(scaleWidth, scaleHeight);
    scrollView.minimumZoomScale = minScale;
    
 
    scrollView.maximumZoomScale = 1.0f;
    scrollView.zoomScale = minScale;
    
    [self centerScrollViewContents];
}


- (void)centerScrollViewContents {
    CGSize boundsSize =scrollView.bounds.size;
    CGRect contentsFrame = imageView.frame;
    
    if (contentsFrame.size.width < boundsSize.width) {
        contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0f;
    } else {
        contentsFrame.origin.x = 0.0f;
    }
    
    if (contentsFrame.size.height < boundsSize.height) {
        contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0f;
    } else {
        contentsFrame.origin.y = 0.0f;
    }
    
    imageView.frame = contentsFrame;
}

- (void)doubleTapped:(UITapGestureRecognizer*)recognizer
{
  
    CGPoint pointInView = [recognizer locationInView:imageView];
    
  
    CGFloat newZoomScale = scrollView.zoomScale * 1.5f;
    newZoomScale = MIN(newZoomScale, scrollView.maximumZoomScale);
    
    
    CGSize scrollViewSize = scrollView.bounds.size;
    
    CGFloat w = scrollViewSize.width / newZoomScale;
    CGFloat h = scrollViewSize.height / newZoomScale;
    CGFloat x = pointInView.x - (w / 2.0f);
    CGFloat y = pointInView.y - (h / 2.0f);
    
    CGRect rectToZoomTo = CGRectMake(x, y, w, h);
  
    [scrollView zoomToRect:rectToZoomTo animated:YES];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    // Return the view that we want to zoom
    return imageView;
}

- (void)scrollViewTwoFingerTapped:(UITapGestureRecognizer*)recognizer {
    CGFloat newZoomScale = scrollView.zoomScale / 1.5f;
    newZoomScale = MAX(newZoomScale,scrollView.minimumZoomScale);
    [scrollView setZoomScale:newZoomScale animated:YES];
}

@end
