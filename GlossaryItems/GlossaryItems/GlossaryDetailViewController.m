//
//  GlossaryDetailViewController.m
//  GlossaryItems
//
//  Created by Dhanasekar Gunabalan on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GlossaryDetailViewController.h"

@interface GlossaryDetailViewController ()

@end

@implementation GlossaryDetailViewController

@synthesize descript;
NSString *glossarydetails;

- (id)initWithglossarydata:(NSString*)data
{
    self = [super init];
    if (self) {
        // Custom initialization
        
        glossarydetails = data;
    }
    return self;
}
- (IBAction)GlossaryDetaildone:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    descript.numberOfLines = 10;
    descript.text = glossarydetails;
    //self.navigationController.navigationBar.s = glossarydetails.glossarydescription;
    NSLog(@"%@",glossarydetails);
    
    // Do any additional setup after loading the view from its nib.
}

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
