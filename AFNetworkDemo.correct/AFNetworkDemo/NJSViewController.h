//
//  NJSViewController.h
//  AFNetworkDemo
//
//  Created by Niklas Saers on 5/14/13.
//  Copyright (c) 2013 Trifork. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NJSViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textview;
@property (weak, nonatomic) IBOutlet UIImageView *topImageView;

- (IBAction)getTouched:(id)sender;
- (IBAction)postTouched:(id)sender;

@end
