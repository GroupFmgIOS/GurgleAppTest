//
//  GlossaryViewController.m
//  GlossaryItems
//
//  Created by Dhanasekar Gunabalan on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GlossaryViewController.h"
#import "NSDictionary+MutableDeepCopy.h"
#import "GlossaryDetailViewController.h"

@interface GlossaryViewController ()

@end

@implementation GlossaryViewController

@synthesize table;
@synthesize search;
@synthesize names;
@synthesize keys;
@synthesize allNames;


NSArray *definitions;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Glossary" ofType:@"plist"];
	NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
	self.allNames = dict;
    //NSLog(@"%@",dict);
    
    definitions = [[NSArray alloc] initWithObjects:
                   @"Some pressure points used in acupressure massage are thought to stimulate uterine contractions. Acupressure can also be used to stop nausea and help you de-stress during labour",
                   @"These are mild contractions or cramps that signal your uterus' return to its non-pregnant size and shape. They are caused by the release of the hormone oxytocin during breastfeeding. They typically occur in the days immediately following the birth.",
                   @"This is simply the time before the birth",
                   @"A medical abbreviation for the condition antepartum hemorrhage. This means bleeding before the birth. It isn’t always serious, but should always be investigated immediately. ",
                   @"Rather than being positioned with their head first, the foetus is positioned head up to be born buttock first, or with one or both feet first.",
                   @"Instead of being born vaginally, if your baby is to be born via c-section an incision is made through the abdominal and uterine walls for extraction of the foetus. This incision is generally horizontal across the abdomen, and delivered under local anaesthetic.",
                   @"This is when the baby's head is too large to pass through the mother's pelvic opening. The reasons behind it vary - either because the baby is disproportionately large, the baby is not in the best position for birth resulting in a larger head diameter than normal, the mother's pelvis is small, or as a result of other abnormalities of the birth canal.",
                   @"The regular tightening of the uterus, working to push the baby down the birth canal. The more intense and closer together your contractions are, the closer you are to delivering your baby.",
                   @"Many parents choose to donate their baby’s cord blood, as doing so could help save a life. This process is approved by the NHS, and donation can be organised through the NHS, via your midwife.",
                   @"Premature expulsion of the umbilical cord in labour before the foetus is delivered. Women who experience this should seek urgent medical attention.",
                   @"The midwife will say your baby is crowning when the baby’s head has passed through the birth canal, and the top of the head is visible in the vaginal opening.",
                   
                   @"The extent to which your cervix is open. You cannot start pushing until you are fully dilated: this is when you are 10cm dilated.",
                   @"A professional labour assistant - usually a woman - who provides emotional, physical and sometimes spiritual support to the mother during labour and birth. Doulas are hired privately by the mother, and are not available on the NHS.",
                   @"This is simply short hand for your expected date of delivery. This is your due date; the date your midwife would expect your baby to arrive. Bear in mind most babies do not arrive on their due date.",
                   @"This is a common anaesthetic used during labour. An epidural is inserted through a catheter which is threaded through a needle, into the dura space near the spinal cord.",
                   @"An incision made to the perineum to widen the vaginal opening for delivery. This is usually given if the woman is struggling to deliver due to a lack of space for the baby’s head to emerge.",
                   @"The medical name for the baby before it is born",
                   @"This means the baby is not getting enough oxygen or is experiencing another complication. If you hear the term ‘foetal distress’ in the delivery room try not to panic and listen to advice from your midwife.",
                   @"This is medical shorthand for Foetal Movement. It may say “FM Felt’ or “FMF” on your medical notes: this means that your midwife or doctor has felt your baby moving and is happy with their level of activity.",
                   @"These are a tong shaped device that may be used to guide your baby’s head out of the birth canal if pushing if not creating enough force to guide the head down naturally.",
                   @"This can help you to manage your labour pain. Hypnotherapy works by causing your sub-conscious brain to take over your conscious brain. From 34 weeks onwards you can attend courses where they teach you to self-hypnosis techniques you can use in labour. This also includes positive visualisation and focusing attention away from the pain.",
                   @"Labour is started artificially, either by breaking the waters, or by using drugs to bring on contractions.",
                   @"A lactation consultant is a medical professional who can help you ensure you are breastfeeding your baby correctly.",
                   @"The vaginal discharge of mucus, blood, and tissue. This will begin during labour, and may continue for up to six weeks after the birth of your baby.",
                   @"Babies weighing more than 9 pounds and 15 ounces are considered macrosomic. This literally means ‘of large body’ and isn’t a complication; it just means you have a big baby. About 5 to 10 percent of babies are considered macrosomic.",
                   @"This is effectively your baby’s first bowel movement. It is a greenish substance that is released shortly after birth.",
                   @"A specialist doctor or surgeon who deals only with pregnancy, childbirth and the immediate post/neo-natal period.",
                   @"A narcotic drugs which is administered via an injection. Pethidine works by inducing drowsiness and helping to reduce the pain. Each injection take roughly 20 minutes to work and can last for three to four hours, when you may need another dose.",
                   @"When the placenta partially or completely covers the cervix. If you have placenta previa when it's time to deliver your baby, you’ll need to have a c-section.",
                   @"Retained placenta means that all or part of the placenta or membranes are left behind in the uterus (womb) during the third stage of labour. You'll be treated for a retained placenta if the third stage takes longer than usual or if there are signs that any of the placenta or membrane is still attached to the uterus.",
                   @"This is more often referred to as ‘broken waters’. It refers to the breaking of the fluid filled sac surrounding the baby. The fluid may come as a gush of water or as a slow leak.",
                   @"Shoulder dystocia is a rare emergency that can happen during the end of the second stage of labour. It's all to do with how your baby moves down through your vagina and out into the world.  Shoulder dystocia happens when your baby's head has been born, but one of her shoulders becomes stuck.",
                   @"This is a drug that can be given to help with the third stage of labour: the delivery of the placenta. This will happen shortly after your baby is born. The drug can help speed up this process.",
                   @"Contractions are measured from the beginning of one until the beginning of the next. The more intense and closer together the contractions are, the closer you are to being able to deliver your baby. ",
                   @"The cord that transports blood, oxygen and nutrients to the baby from the placenta. After the delivery this can often be cut by the birth partner.",
                   @"A uterine rupture is a tear in the wall of the uterus, most often at the site of a previous c-section incision. In a complete rupture, the tear goes through all layers of the uterine wall and the consequences can be dire for mother and baby. Fortunately these are very rare events.",
                   @"This is an abbreviation (often pronounced ‘veeback’) which stands for Vaginal Birth After Caesarean. Women having a VBAC are often examined and monitored more closely during their labour.",
                   @"A ventouse extraction is when the obstetrician uses suction to guide the baby out. A device that looks a bit like a bath plug is placed on the baby’s head, and the baby is gently suctioned out as you push.",
                   @"All babies are born with lower levels of vitamin K than adults and vitamin K is needed to help with the blood clotting process. This is why the Vitamin K injection is offered to newborns, usually within the first hour after they are born.",nil];
    
	[self resetSearch];
	[table reloadData];
	[table setContentOffset:CGPointMake(0.0, 44.0) animated:NO];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    self.table = nil;
	self.search = nil;
	self.allNames = nil;
	self.names = nil;
	self.keys = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



#pragma mark -
#pragma mark UITableView Data Source Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return [self.keys count] > 0 ? [self.keys count] : 1;
}

- (NSInteger)tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section {
	if ([self.keys count] == 0) {
		return 0;
	}
	NSString *key = [self.keys objectAtIndex:section];
	return [[self.names objectForKey:key] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	NSString *key = [self.keys objectAtIndex:[indexPath section]];
	NSInteger row = [indexPath row];
	NSString *name = [[self.names objectForKey:key] objectAtIndex:row];
	
	NSString *SectionTableIdentifier = @"SectionTableViewIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SectionTableIdentifier];
	
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SectionTableIdentifier];
	}
	
	cell.textLabel.text = name;
	return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	if ([self.keys count] == 0) {
		return nil;
	}
	
	NSString *key = [self.keys objectAtIndex:section];
	if (key == UITableViewIndexSearch) {
		return nil;
	}
	return key;
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
	return keys;
}

#pragma mark -
#pragma mark UITableView Delegate Methods
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[search resignFirstResponder];
	return indexPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    NSString *key = [self.keys objectAtIndex:[indexPath section]];
    NSInteger row = [indexPath row];
    NSString *name = [[self.names objectForKey:key] objectAtIndex:row];
    NSLog(@"Name: %@",name);
    GlossaryDetailViewController *GlossaryDetail = [[GlossaryDetailViewController alloc] initWithglossarydata: [NSString stringWithFormat:name]];
    //[self.navigationController pushViewController:GlossaryDetail animated:YES];
    GlossaryDetail.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:GlossaryDetail animated:YES];
}
#pragma mark -
#pragma mark Custom Methods

- (void)resetSearch {
	NSMutableDictionary *allNamesCopy = [self.allNames mutableDeepCopy];
	self.names = allNamesCopy;
    
	NSMutableArray *keyArray = [[NSMutableArray alloc] init];
	[keyArray addObject:UITableViewIndexSearch];
	[keyArray addObjectsFromArray:[[self.allNames allKeys] sortedArrayUsingSelector:@selector(compare:)]];
	self.keys = keyArray;
}

- (void)handleSearchForTerm:(NSString *)searchTerm {
	[self resetSearch];
	NSMutableArray *sectionsToRemove = [[NSMutableArray alloc] init];
	
	for (NSString *key in self.keys) {
		NSMutableArray *array = [names valueForKey:key];
		NSMutableArray *toRemove = [[NSMutableArray alloc] init];
		
		for (NSString *name in array) {
			Boolean notFound = [name rangeOfString:searchTerm options:NSCaseInsensitiveSearch].location == NSNotFound;
			if (notFound) {
				[toRemove addObject:name];
			}
		}
		
		if ([array count] == [toRemove count]) {
			[sectionsToRemove addObject:key];
		}
		
		[array removeObjectsInArray:toRemove];
	}
	
	[self.keys removeObjectsInArray:sectionsToRemove];
	[table reloadData];
}

#pragma mark -
#pragma mark Search Bar Delegate Methods
-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
	[self handleSearchForTerm:[searchBar text]];
    [searchBar resignFirstResponder];
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
	searchBar.text = @"";
	[self resetSearch];
	[table reloadData];
	[searchBar resignFirstResponder];
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchTerm {
	if ([searchTerm length] == 0) {
		[self resetSearch];
		[table reloadData];
		return;
	}
	[self handleSearchForTerm:searchTerm];
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
	NSString *key = [self.keys objectAtIndex:index];
	if (key == UITableViewIndexSearch) {
		[tableView setContentOffset:CGPointZero animated:NO];
		return NSNotFound;
	}
	return index;
}

@end
