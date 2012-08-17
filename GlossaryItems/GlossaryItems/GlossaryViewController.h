//
//  GlossaryViewController.h
//  GlossaryItems
//
//  Created by Dhanasekar Gunabalan on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GlossaryViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate> {
	UITableView *table;
	UISearchBar *search;
	NSMutableDictionary *names;
	NSMutableArray *keys;
	NSDictionary *allNames;
}

@property (nonatomic, retain) IBOutlet UITableView *table;
@property (nonatomic, retain) IBOutlet UISearchBar *search;
@property (nonatomic, retain) NSMutableDictionary *names;
@property (nonatomic, retain) NSMutableArray *keys;
@property (nonatomic, retain) NSDictionary *allNames;

- (void)resetSearch;
- (void)handleSearchForTerm:(NSString *) searchTerm;

@end
