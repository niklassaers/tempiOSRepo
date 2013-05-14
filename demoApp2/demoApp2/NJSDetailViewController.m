//
//  NJSDetailViewController.m
//  demoApp2
//
//  Created by Niklas Saers on 5/13/13.
//  Copyright (c) 2013 Trifork. All rights reserved.
//

#import "NJSDetailViewController.h"

@interface NJSDetailViewController ()
- (void)configureView;
@end

@implementation NJSDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = @"La la la";
    }

    [self.veryImportantActivityIndicator startAnimating];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderChanged:(id)sender {
    UISlider *hSlider = sender;
    float x = hSlider.value / hSlider.maximumValue;
    self.detailDescriptionLabel.alpha = x;
}

@end
