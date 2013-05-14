//
//  NJSDetailViewController.h
//  demoApp2
//
//  Created by Niklas Saers on 5/13/13.
//  Copyright (c) 2013 Trifork. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NJSDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *veryImportantActivityIndicator;
- (IBAction)sliderChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
