//
//  NJSViewController.m
//  AFNetworkDemo
//
//  Created by Niklas Saers on 5/14/13.
//  Copyright (c) 2013 Trifork. All rights reserved.
//

#import "NJSViewController.h"
#import "AFNetworking.h"

@interface NJSViewController ()

@end

@implementation NJSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.topImageView setImageWithURL:[NSURL URLWithString:@"http://dilbert.com/dyn/str_strip/000000000/00000000/0000000/100000/80000/4000/400/184410/184410.strip.print.gif"]];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getTouched:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://httpbin.org/ip"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    __weak NJSViewController *weakSelf = self;
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {

        weakSelf.textview.text = [JSON description];
        
    } failure:nil];
    
    [operation start];
}

- (IBAction)postTouched:(id)sender {
    
    NSURL *baseURL = [NSURL URLWithString:@"http://myserver.tld/api/"];
    
    NSString *documentsDirectory = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *filename = [documentsDirectory stringByAppendingPathComponent:@"somefile.dat"];
    NSData *data = [NSData dataWithContentsOfFile:filename];
    
    NSString *key1 = @"123";
    NSString *key2 = @"asdf";
    
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
    NSMutableURLRequest *request = [httpClient multipartFormRequestWithMethod:@"POST"
                                                                         path:@"/upload"
                                                                   parameters:nil
                                                    constructingBodyWithBlock: ^(id <AFMultipartFormData>formData) {
        [formData appendPartWithFileData:data name:@"files" fileName:@"nameOnServer.dat" mimeType:@"image/jpeg"];
        [formData appendPartWithFormData:[key1 dataUsingEncoding:NSUTF8StringEncoding] name:@"key1"];
        [formData appendPartWithFormData:[key2 dataUsingEncoding:NSUTF8StringEncoding] name:@"key2"];
        // etc.
    }];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    [httpClient enqueueHTTPRequestOperation:operation];
     
}


@end
