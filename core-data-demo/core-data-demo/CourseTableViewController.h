//
//  CourseTableViewController.h
//  core-data-demo
//
//  Created by James McPherson on 10/30/14.
//  Copyright (c) 2014 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseTableViewController : UITableViewController

@property (nonatomic, strong) NSManagedObjectContext* managedObjectContext;

@property (nonatomic, strong) NSFetchedResultsController* fetchedResultsController;

@end
