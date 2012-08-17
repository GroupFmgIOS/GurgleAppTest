//
//  GlossaryDetailViewController.h
//  GlossaryItems
//
//  Created by Dhanasekar Gunabalan on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlossaryData.h"

@interface GlossaryDetailViewController : UIViewController

- (id)initWithglossarydata:(GlossaryData*)data;
- (IBAction)GlossaryDetaildone:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *descript;

@end
